#include <iostream>
#include <fstream>
#include <cstring>

using namespace std;

enum Role{USER, ADMIN};
const int LENGTH = 20;
const char* PATH = "/home/andrew/CLionProjects/mod2_lab0(login)/users.dat";
struct User{
    char login[LENGTH];
    char password[LENGTH];
    int id;
    Role role;
} user;

int get_new_id();
bool user_verify(char login[LENGTH]);
bool sing_up(char login[LENGTH], char password[LENGTH], Role role);
int sing_in(char login[LENGTH], char password[LENGTH]);
bool terminal_sing_up();
bool terminal_sing_in();
void print_message(const char* head, const char* message);

void user_menu(){
    const char* message11 = "SUCCESS!";
    const char* message12 = "You are logged in as user";

    print_message(message11, message12);
}

void admin_menu(){
    const char* message11 = "SUCCESS!";
    const char* message12 = "You are logged in as admin";

    print_message(message11, message12);
}

int main() {
    const char* head = "MENU";
    const char* message = "i - sing in\n"
                    "u - sing up";
    char c;

    print_message(head, message);
    cin >> c;

    switch (c){
        case 'i':
            if(terminal_sing_in()){
                switch (user.role) {
                    case ADMIN: admin_menu();
                        break;
                    case USER: user_menu();
                        break;
                }
            }else main();

            break;
        case 'u':
            if(terminal_sing_up()){
                switch (user.role) {
                    case ADMIN: admin_menu();
                        break;
                    case USER: user_menu();
                        break;
                }
            }else main();
            break;
        default:
            main();
            break;
    }


}

//Унікальне id
int get_new_id(){
    ifstream stream(PATH, ios::binary | ios::in);
    int id = 0;

    stream.read((char*)&user, sizeof(User));
    while(!stream.eof()){
        stream.read((char*)&user, sizeof(User));
        id++;
    }
    return id;
}
//Перевірка на існування користувача
bool user_verify(char login[LENGTH]){
    ifstream stream(PATH, ios::binary | ios::in);

    while(true){
        stream.read((char*)&user, sizeof(User));
        if(stream.eof()) break;
        if(strcmp(user.login, login) == 0) {
            stream.close();
            return false;
        }
    }
    stream.close();
    return true;
}
//Створення
bool sing_up(char login[LENGTH], char password[LENGTH], Role role){
    ofstream stream(PATH, ios::binary | ios::app);
    int id = get_new_id();

    if(!user_verify(login))
        return false;

    //new user
    strcpy(user.login, login);
    strcpy(user.password, password);
    user.id = id;
    user.role = role;

    //write
    stream.write((char*)&user, sizeof(User));
    stream.close();

    return true;
}
//Вхід
int sing_in(char login[LENGTH], char password[LENGTH]){
    ifstream stream(PATH, ios::binary | ios::in);

    while(true){
        stream.read((char*)&user, sizeof(User));
        if(stream.eof()) break;
        if(strcmp(user.login, login) == 0){
            if(strcmp(user.password, password) == 0) return 1;
            else return 0;
        }
    }
    stream.close();
    return -1;
    //1 - успіх
    //0 - пароль не вірний
    //-1 - користувача не існує
}
//Створення через термінал
bool terminal_sing_up(){
    const char* message11 = "ENTER A LOGIN";
    const char* message12 = "Max length: 20";
    const char* message21 = "ENTER A PASSWORD";
    const char* message22 = "Max length: 20";
    const char* message31 = "SELECT a ROLE";
    const char* message32 = "0 - user\n"
                            "1 - admin";
    const char* message41 = "ERROR!";
    const char* message42 = "This login already exists\n"
                            "Create another or sign in";
    char login[LENGTH];
    char password[LENGTH];
    Role role;

    //input data
    print_message(message11, message12);
    cin.get();
    cin.get(login, LENGTH);

    print_message(message21, message22);
    cin.get();
    cin.get(password, LENGTH);

    prnt_role:
    print_message(message31, message32);
    char n;
    cin >> n;
    switch (n){
        case '0':
            role = USER;
            break;
        case '1':
            role = ADMIN;
            break;
        default: goto prnt_role;
    }

    if(!sing_up(login, password, role)){
        print_message(message41, message42);
        return false;
    } else{

    }
    return true;
}
//Вхід через термінал
bool terminal_sing_in(){
    const char* message11 = "ENTER A LOGIN";
    const char* message12 = "Max length: 20";
    const char* message21 = "ENTER A PASSWORD";
    const char* message22 = "Max length: 20";
    const char* message31 = "THIS PASSWORD IS INCORECT";
    const char* message32 = "Please try again";
    const char* message41 = "THIS USER DOES NOT EXIST";
    const char* message42 = "Please create a new one";
    char login[LENGTH];
    char password[LENGTH];
    Role role;

    //output data
    print_message(message11, message12);
    cin.get();
    cin.get(login, LENGTH);
    prnt_pass:
    print_message(message21, message22);
    cin.get();
    cin.get(password, LENGTH);

    if(sing_in(login, password) == 1){

    }
    switch(sing_in(login, password)){
        case 1:
            break;
        case 0:
            print_message(message31, message32);
            goto prnt_pass;
        case -1:
            print_message(message41, message42);
            return false;
    }
    return true;
}
//Вивід повідомлення в рамці
void print_message(const char* head, const char* message){
    int max = 0;
    char c;
    int index = 0;
    int head_len = 0;
    int rows_count = 1;

    int prob = 0;
    index = 0;

    while ((c = head[index]) != '\0') {
        head_len++;
        index++;
    }
    max = head_len;
    index = 0;

    while ((c = message[index]) != '\0'){
        if(c != '\n'){
            prob++;
        }else {
            if(message[index+1] != '\0') rows_count++;
            prob > max ? max = prob:1;
            prob = 0;
        }
        index++;
    }
    prob > max ? max = prob:1;

    index = 0;
    int dialog_len = max + 6;
    for(int i = 0; i < dialog_len; i++){
        if(i == 0 || i == dialog_len-1) cout << ',';
        else cout << '_';
    }
    cout << endl;

    for(int i = 0; i < dialog_len; i++){
        if(i == 0 || i == dialog_len-1) {
            cout << '|';
        }else if(i >= (dialog_len - head_len)/2 && i < (dialog_len - head_len)/2 + head_len){
            if(head[index] == ' ') cout << '_';
            else cout << head[index];
            index++;
        }else{
            cout << '_';
        }
    }
    cout << endl;

    index = 0;
    bool end_line = 0;
    for(int i = 0; i < rows_count; i++){
        end_line = 0;
        for(int j = 0; j < dialog_len; j++){
            if(message[index] == '\n' || message[index] == '\0') end_line = 1;

            if(j == 0 || j == dialog_len-1) cout << '|';
            else if(!end_line){
                cout << message[index];
                index++;
            }else cout << ' ';
        }
        index++;
        cout << endl;
    }

    for(int i = 0; i < dialog_len; i++){
        if(i == 0 || i == dialog_len-1) cout << '|';
        else cout << '_';
    }
    cout << endl;

}
