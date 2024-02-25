#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <sys/stat.h>
#include <sys/types.h>

using namespace std;

// Encryption key
const string ENCRYPTION_KEY = "my_encryption_key";
const string BACKUP_FILE = "backup.txt";
const string PASSWORDS_FILE = "passwords.txt";

// Structure to store account information
struct Account {
    string username;
    string password;
    string website;
    string category; // Added category field
};

// Function to generate a random password of specified length
string generatePassword(int length) {
    string password = "";
    const string characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#$%^&*()-_=+";
    int charLength = characters.length();

    srand(time(0));
    for (int i = 0; i < length; ++i) {
        int index = rand() % charLength;
        password += characters[index];
    }

    return password;
}

// Function to encrypt the password
string encryptPassword(const string& password) {
    string encryptedPassword = password;
    const string& ENCRYPTION_KEY = "my_encryption_key"; // Moved to local scope
    for (int i = 0; i < password.length(); ++i) {
        encryptedPassword[i] ^= ENCRYPTION_KEY[i % ENCRYPTION_KEY.length()];
    }
    return encryptedPassword;
}

// Function to store the account in a secure manner
void storeAccount(const string& username, const string& password, const string& website, const string& category) {
    // Encrypt the password before storing it
    string encryptedPassword = encryptPassword(password);

    ofstream outfile(PASSWORDS_FILE, ios::app);
    if (!outfile.is_open()) {
        cerr << "Error: Could not open passwords.txt for writing." << endl;
        return;
    }
    outfile << username << ":" << encryptedPassword << ":" << website << ":" << category << endl;
    outfile.close();
}

// Function to decrypt the password
string decryptPassword(const string& encryptedPassword) {
    string decryptedPassword = encryptedPassword;
    const string& ENCRYPTION_KEY = "my_encryption_key"; // Moved to local scope
    for (int i = 0; i < encryptedPassword.length(); ++i) {
        decryptedPassword[i] ^= ENCRYPTION_KEY[i % ENCRYPTION_KEY.length()];
    }
    return decryptedPassword;
}

// Function to read and decrypt accounts from file
vector<Account> readAccounts() {
    vector<Account> accounts;
    ifstream infile(PASSWORDS_FILE);
    if (!infile.is_open()) {
        cerr << "Error: Could not open passwords.txt for reading." << endl;
        return accounts;
    }
    string username, encryptedPassword, website, category;
    while (infile >> username >> encryptedPassword >> website >> category) {
        Account account;
        account.username = username;
        account.password = decryptPassword(encryptedPassword);
        account.website = website;
        account.category = category;
        accounts.push_back(account);
    }
    infile.close();
    return accounts;
}

// Function to validate the password strength
bool validatePassword(const string& password) {
    // Password should have at least 8 characters
    if (password.length() < 8) {
        return false;
    }

    // Password should contain at least one uppercase letter, one lowercase letter, one digit, and one special character
    bool hasUpper = false, hasLower = false, hasDigit = false, hasSpecial = false;
    for (char c : password) {
        if (isupper(c)) hasUpper = true;
        if (islower(c)) hasLower = true;
        if (isdigit(c)) hasDigit = true;
        if (!isalnum(c)) hasSpecial = true;
    }

    return hasUpper && hasLower && hasDigit && hasSpecial;
}

// Function to backup password data
void backupData() {
    // Read current data
    vector<Account> accounts = readAccounts();

    // Write data to backup file
    ofstream outfile(BACKUP_FILE);
    if (!outfile.is_open()) {
        cerr << "Error: Could not open " << BACKUP_FILE << " for writing." << endl;
        return;
    }
    for (const auto& account : accounts) {
        outfile << account.username << ":" << account.password << ":" << account.website << ":" << account.category << endl;
    }
    outfile.close();

    cout << "Data backed up to " << BACKUP_FILE << endl;
}

// Function to restore password data from backup
void restoreData() {
    // Read data from backup file
    ifstream infile(BACKUP_FILE);
    if (!infile.is_open()) {
        cerr << "Error: Could not open " << BACKUP_FILE << " for reading." << endl;
        return;
    }
    string username, password, website, category;
    while (infile >> username >> password >> website >> category) {
        storeAccount(username, password, website, category);
    }
    infile.close();

    cout << "Data restored from " << BACKUP_FILE << endl;
}

// Function to prompt the user to enter a valid password
string getValidPassword() {
    while (true) {
        cout << "Enter your password: ";
        string password;
        cin >> password;

        if (validatePassword(password)) {
            return password;
        } else {
            cout << "Password is weak. It should have at least 8 characters, one uppercase, one lowercase, one digit, and one special character." << endl;
        }
    }
}

int main() {
    int passwordLength;
    string username, password, website, category;

    cout << "Enter your username: ";
    cin >> username;

    // Generate a password if the user wants to
    char generate;
    cout << "Do you want to generate a password? (Y/N): ";
    cin >> generate;
    if (generate == 'Y' || generate == 'y') {
        cout << "Enter the desired length of your password: ";
        cin >> passwordLength;
        password = generatePassword(passwordLength);
        cout << "Generated password: " << password << endl;
    } else {
        password = getValidPassword(); // Use the new function to get a valid password
    }

    cout << "Enter the website: ";
    cin >> website;

    cout << "Enter the category (e.g., email, social, finance): ";
    cin >> category;

    storeAccount(username, password, website, category);
    cout << "Account saved securely." << endl;

    cout << "Decrypting and reading stored accounts:" << endl;
    vector<Account> accounts = readAccounts();
    for (const auto& account : accounts) {
        cout << "Website: " << account.website << ", Username: " << account.username << ", Password: " << account.password << ", Category: " << account.category << endl;
    }

    // Backup and restore functionality
    char backupRestore;
    cout << "Do you want to backup (B) or restore (R) data? (B/R): ";
    cin >> backupRestore;
    if (backupRestore == 'B' || backupRestore == 'b') {
        backupData();
    } else if (backupRestore == 'R' || backupRestore == 'r') {
        restoreData();
    }

    return 0;
}
