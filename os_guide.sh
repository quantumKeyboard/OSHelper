#!/bin/bash

# Function to clear screen and show header
show_header() {
    clear
    echo "====================================="
    echo "Operating System Practical Guide"
    echo "====================================="
    echo
}

# Function to display questions
display_questions() {
    echo "Available Questions:"
    echo
    echo "1. Execute general purpose commands (date, time, cal, etc.)"
    echo "2. Work with multiple Linux terminals and basic commands"
    echo "3. Use operating services and service management"
    echo "4. Execute process commands (ps, wait, exit, sleep, kill)"
    echo "5. Execute file manipulation commands (ls, rm, mv, cp, etc.)"
    echo "6. Execute file/directory commands with wildcards"
    echo "7. Execute text processing commands"
    echo "8. Use vi editor commands"
    echo "9. Shell Script with 'if' statement"
    echo "10. Shell Script with 'for' statement"
    echo "11. Shell Script to check file existence"
    echo "12. Shell Script to check file permissions"
    echo "13. C Program for FCFS CPU Scheduling"
    echo "14. C Program for FIFO Page Replacement"
    echo
    echo "0. Exit"
    echo
}

# Function to display answers
show_answer() {
    case $1 in
        1)
            cat << 'EOF'
General Purpose Commands:

1. date - Display current date and time
   $ date
   
2. time - Measure time taken by a command
   $ time ls
   
3. cal - Display calendar
   $ cal
   $ cal 2024
   
4. clear - Clear terminal screen
   $ clear
   
5. banner - Print large banner
   $ banner "Hello"
   
6. tty - Print current terminal name
   $ tty
   
7. script - Record terminal session
   $ script my_session.txt
   $ exit  # to stop recording
   
8. man - Display manual pages
   $ man ls
   $ man date
EOF
            ;;
        2)
            cat << 'EOF'
Terminal and Basic Commands:

1. who - Show who is logged in
   $ who
   
2. whoami - Print current user
   $ whoami
   
3. login - Login as different user
   $ login username
   
4. passwd - Change password
   $ passwd
   
5. pwd - Print working directory
   $ pwd
EOF
            ;;
        3)
            cat << 'EOF'
Operating Services:

a) Basic Services:
1. Using Text Editor:
   $ nano filename
   $ gedit filename
   
2. GUI Operations:
   $ gnome-control-center
   
3. File Handling:
   $ touch newfile
   $ mkdir newfolder
   
b) Service Management:
1. Start service:
   $ sudo systemctl start service_name
   
2. Stop service:
   $ sudo systemctl stop service_name
   
3. Restart service:
   $ sudo systemctl restart service_name
   
4. Check status:
   $ sudo systemctl status service_name
EOF
            ;;
        4)
            cat << 'EOF'
Process Commands:

1. ps - Show running processes
   $ ps
   $ ps aux
   
2. wait - Wait for process to complete
   $ sleep 10 &
   $ wait $!
   
3. exit - Exit shell or script
   $ exit
   
4. sleep - Pause for specified time
   $ sleep 5
   
5. kill - Terminate process
   $ kill PID
   $ killall process_name
EOF
            ;;
        5)
            cat << 'EOF'
File Manipulation Commands:

1. ls - List directory contents
   $ ls
   $ ls -la
   
2. rm - Remove files
   $ rm file
   $ rm -r directory
   
3. mv - Move/rename files
   $ mv source destination
   
4. cp - Copy files
   $ cp source destination
   
5. join - Join files on a common field
   $ join file1 file2
   
6. split - Split file into pieces
   $ split -l 100 bigfile
   
7. cat - Concatenate and display files
   $ cat file
   $ cat file1 > file2
   
8. head - Show first lines
   $ head -n 5 file
   
9. tail - Show last lines
   $ tail -n 5 file
   
10. touch - Create empty file/update timestamp
    $ touch newfile
EOF
            ;;
        6)
            cat << 'EOF'
File and Directory Commands with Wildcards:

1. diff - Compare files
   $ diff file1 file2
   
2. comm - Compare sorted files
   $ comm file1 file2
   
3. pr - Format file for printing
   $ pr file
   
4. mkdir - Create directory
   $ mkdir newdir
   
5. rmdir - Remove empty directory
   $ rmdir dir
   
6. cd - Change directory
   $ cd /path
   $ cd ..
   
7. pwd - Print working directory
   $ pwd
   
8. dir - List directory contents
   $ dir
   
9. cmp - Compare files byte by byte
   $ cmp file1 file2
   
Wildcard Usage:
* - Match any characters
? - Match single character
[] - Match character class

Examples:
$ ls *.txt
$ rm test?.*
$ ls [a-z]*
EOF
            ;;
        7)
            cat << 'EOF'
Text Processing Commands:

1. tr - Translate characters
   $ tr 'a-z' 'A-Z' < file
   
2. wc - Word, line, character count
   $ wc file
   $ wc -l file  # lines only
   
3. cut - Extract sections from lines
   $ cut -d: -f1 /etc/passwd
   
4. paste - Merge lines
   $ paste file1 file2
   
5. spell - Check spelling
   $ spell file
   
6. sort - Sort lines
   $ sort file
   $ sort -n file  # numeric sort
   
7. grep - Search text
   $ grep pattern file
   $ grep -i pattern file  # case-insensitive
   
8. more - Page through text
   $ more file
EOF
            ;;
        8)
            cat << 'EOF'
Vi Editor Commands:

1. Opening:
   $ vi filename

2. Mode Commands:
   i - Insert mode
   Esc - Command mode
   
3. Saving and Quitting:
   :w - Save
   :q - Quit
   :wq - Save and quit
   :q! - Force quit without saving
   
4. Navigation:
   h - Left
   j - Down
   k - Up
   l - Right
   w - Next word
   b - Previous word
   
5. Editing:
   dd - Delete line
   yy - Copy line
   p - Paste
   u - Undo
   
6. Search:
   /pattern - Search forward
   ?pattern - Search backward
   n - Next occurrence
   N - Previous occurrence
EOF
            ;;
        9)
            cat << 'EOF'
Shell Script with if statement:

#!/bin/bash

echo "Enter a number: "
read num

if [ $num -gt 0 ]; then
    echo "Number is positive"
elif [ $num -lt 0 ]; then
    echo "Number is negative"
else
    echo "Number is zero"
fi

# Save as if_example.sh
# Step 1: Copy this code
# Step 2: Open new terminal, Enter on terminal: cat > if_example.sh
# Step 3: Paste the copied code and press Ctrl+d to exit.
# Step 4: type the following to run the code: bash if_example.sh
# Run: bash if_example.sh
EOF
            ;;
        10)
            cat << 'EOF'
Shell Script with for statement:

#!/bin/bash

echo "Counting from 1 to 5:"
for i in {1..5}
do
    echo "Number: $i"
done

echo "Listing all files:"
for file in *
do
    echo "Found file: $file"
done

# Save as for_example.sh
# Step 1: Copy this code
# Step 2: Open new terminal, Enter on terminal: cat > for_example.sh
# Step 3: Paste the copied code and press Ctrl+d to exit.
# Step 4: type the following to run the code: bash for_example.sh
# Run: bash for_example.sh
EOF
            ;;
        11)
            cat << 'EOF'
Shell Script to check if file exists:

#!/bin/bash

echo "Enter filename to check: "
read filename

if [ -f "$filename" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

# Save as check_file.sh
# Step 1: Copy this code
# Step 2: Open new terminal, Enter on terminal: cat > check_file.sh
# Step 3: Paste the copied code and press Ctrl+d to exit.
# Step 4: type the following to run the code: bash check_file.sh
# Run: bash check_file.sh
EOF
            ;;
        12)
            cat << 'EOF'
Shell Script to check file permissions:

#!/bin/bash

echo "Enter filename to check permissions: "
read filename

if [ -f "$filename" ]; then
    if [ -r "$filename" ]; then
        echo "File has read permission"
    fi
    if [ -w "$filename" ]; then
        echo "File has write permission"
    fi
    if [ -x "$filename" ]; then
        echo "File has execute permission"
    fi
else
    echo "File does not exist"
fi

# Save as check_permissions.sh
# Step 1: Copy this code
# Step 2: Open new terminal, Enter on terminal: cat > check_permissions.sh
# Step 3: Paste the copied code and press Ctrl+d to exit.
# Step 4: type the following to run the code: bash check_permissions.sh
# Run: bash check_permissions.sh
EOF
            ;;
        13)
            cat << 'EOF'
C Program for FCFS CPU Scheduling:

#include <stdio.h>

struct Process {
    int pid;
    int burst_time;
    int waiting_time;
    int turnaround_time;
};

void calculateTimes(struct Process proc[], int n) {
    proc[0].waiting_time = 0;
    
    // Calculate waiting time
    for (int i = 1; i < n; i++) {
        proc[i].waiting_time = proc[i-1].waiting_time + proc[i-1].burst_time;
    }
    
    // Calculate turnaround time
    for (int i = 0; i < n; i++) {
        proc[i].turnaround_time = proc[i].waiting_time + proc[i].burst_time;
    }
}

int main() {
    int n;
    printf("Enter number of processes: ");
    scanf("%d", &n);
    
    struct Process proc[n];
    
    for (int i = 0; i < n; i++) {
        proc[i].pid = i + 1;
        printf("Enter burst time for Process %d: ", i + 1);
        scanf("%d", &proc[i].burst_time);
    }
    
    calculateTimes(proc, n);
    
    printf("\nProcess\tBurst Time\tWaiting Time\tTurnaround Time\n");
    float total_waiting = 0, total_turnaround = 0;
    
    for (int i = 0; i < n; i++) {
        total_waiting += proc[i].waiting_time;
        total_turnaround += proc[i].turnaround_time;
        printf("%d\t%d\t\t%d\t\t%d\n", proc[i].pid, proc[i].burst_time,
               proc[i].waiting_time, proc[i].turnaround_time);
    }
    
    printf("\nAverage Waiting Time: %.2f", total_waiting/n);
    printf("\nAverage Turnaround Time: %.2f\n", total_turnaround/n);
    
    return 0;
}

// Save as fcfs.c
// Step 1: Copy this code
// Step 2: Open new terminal, Enter on terminal: cat > fcfs.c
// Step 3: Paste the copied code and press Ctrl+d to exit.
// Step 4: type: sudo apt install gcc
// Step 5: gcc fcfs.c -o fcfs
// Step 6: ./fcfs
// Step 7: Enter any random number as number of processes
// Step 8: Enter random time for each process
EOF
            ;;
        14)
            cat << 'EOF'
C Program for FIFO Page Replacement:

#include <stdio.h>

int main() {
    int i, n, frame[10], no, k, count = 0, j = 0;
    int a[50];  
    int flag;   
    
    // Get number of pages
    printf("Enter Number of pages:\n");
    scanf("%d", &n);
    
    // Get page numbers
    printf("Enter the page numbers:\n");
    for(i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }
    
    // Get number of frames
    printf("Enter number of frames:\n");
    scanf("%d", &no);
    
    // Initialize frames to -1
    for(i = 0; i < no; i++) {
        frame[i] = -1;
    }
    
    // Page replacement logic
    for(i = 0; i < n; i++) {
        printf("\n%d: ", a[i]);
        flag = 0;
        
        // Check if page already exists in frame
        for(k = 0; k < no; k++) {
            if(frame[k] == a[i]) {
                flag = 1;
                break;
            }
        }
        
        // If page is not in frame, add it
        if(flag == 0) {
            frame[j] = a[i];
            j = (j + 1) % no;
            count++;
        }
        
        // Print current state of frames
        for(k = 0; k < no; k++) {
            if(frame[k] != -1)
                printf("%d ", frame[k]);
            else
                printf("- ");
        }
    }
    
    printf("\nTotal Page Faults: %d\n", count);
    return 0;
}

// Save as fifo_page.c
// Step 1: Copy this code
// Step 2: Open new terminal, Enter on terminal: cat > fifo_page.c
// Step 3: Paste the copied code and press Ctrl+d to exit.
// Step 4: Type: sudo apt install gcc
// Step 5: Type: gcc fifo_page.c -o fifo_page
// Step 7: Enter number of pages as 20
// Step 8: Enter total 20 Page numbers randomly
// Step 9: Enter Number of frames as 3 
// Step 6: Type: ./fifo_page

EOF
            ;;
        *)
            echo "Invalid question number!"
            ;;
    esac
}

# Main program loop
while true; do
    show_header
    display_questions
    echo -n "Enter question number (0-14): "
    read choice
    
    if [ "$choice" = "0" ]; then
        echo "Thank you for using the OS Practical Guide!"
        exit 0
    fi
    
    if [[ "$choice" =~ ^[1-9]|1[0-4]$ ]]; then
        show_header
        echo "=== Answer for Question $choice ==="
        echo
        show_answer "$choice"
        echo
        echo "Press Enter to continue..."
        read
    else
        echo "Please enter a number between 0 and 14!"
        sleep 2
    fi
done
