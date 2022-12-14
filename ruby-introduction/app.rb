#Lomax training
#Jennifer Sandoval
#Ruby basics

# Variable to store the option selected by the user
option = 0
# Array for storing contact information
contacts = []


def validate_number number
    input = Integer(number) rescue false 
    while !input
        puts "Please enter a valid number"
        input = Integer(gets) rescue false
    end

    return input

end

while option !=6
    puts "1. Create a new contact"
    puts "2. Show contacts"
    puts "3. Update a contact"
    puts "4. Delete a contact"
    puts "5. Create a report"
    puts "6. Leave"
    option = gets.to_i

    if option == 1
        puts "Enter the following elements to create a new contact: "
        puts "First Name: "
        first_name = gets
        puts "Last Name: "
        last_name = gets
        puts "E-mail: "
        email = gets

        while email.empty?
            puts "You must enter an email address"
            puts "E-mail: "
            email = gets
        end

        puts "Telephone: "
        phone = validate_number(gets)

        contacts.append({
            "first_name" => first_name,
            "last_name" => last_name,
            "email" => email,
            "telephone" => phone
        })
    
    elsif option == 2
        puts "*************************"
        puts "       Contacts          "
        puts "*************************"
        for contact in contacts do
            puts "------------------------------"
            puts "First Name: #{contact["first_name"]}" 
            puts "Last Name: #{contact["last_name"]}"
            puts "Email: #{contact["email"]}"
            puts "Telephone: #{contact["telephone"]}"
            puts "------------------------------"
        end
    elsif option == 3
        puts "Enter the email of the contact you want to update: "
        udpate_email = gets
        contact_number = contacts.index {|contact| contact["email"] == udpate_email}
        
        unless contact_number.nil?

            puts "Enter the elements you want to update: "
            puts "1. First Name\n 2. Last Name\n 3. Email\n 4. Phone\n"
            update_option = gets.to_i

            if update_option == 1 
                puts "Enter the new first name"
                new_name = gets
                contacts[contact_number]["first_name"] = new_name
                puts "Contact with email #{udpate_email} updated successfully\n"
            elsif update_option == 2
                puts "Enter the new last name"
                new_last_name = gets
                contacts[contact_number]["last_name"] = new_last_name
                puts "Contact with email #{udpate_email} updated successfully\n"
            elsif update_option == 3
                puts "Enter the new email"
                new_email = gets
                contacts[contact_number]["email"] = new_email
                puts "Contact with email #{udpate_email} updated successfully\n"
            elsif update_option == 4
                puts "Enter the new telephone"
                new_phone = validate_number(gets)
                contacts[contact_number]["telephone"] = new_phone
                puts "Contact with email #{udpate_email} updated successfully\n"
            else
                puts "Invalid option"
            end

        else
            puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
            puts "This email doesn't exist in the list of contacts"
            puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        end

    elsif option == 4
        puts "Enter the email of the contact you want to delete:"
        delete_email = gets

        contact_number = contacts.index {|contact| contact["email"] == delete_email}
        
        unless contact_number.nil?
            contacts.delete_at(contact_number)
            puts "Contact with email #{delete_email} deleted successfully\n"
        else
            puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
            puts "This email doesn't exist in the list of contacts"
            puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        end
    elsif option == 5
        if contacts.length() > 0
            File.open("contacts.txt", "w+") do |f|
                f.puts "**********List of contacts**************"
                contacts.each { |contact| f.puts("First Name: #{contact["first_name"]} Last Name: #{contact["last_name"]} Email: #{contact["email"]} Telephone #{contact["telephone"]}\n") } 
            end
            puts "Contacts exported successfully in 'contacts.txt' file"
        else
            puts "You don't have contacts to export"
        end
    elsif option == 6
        puts "Goodbye!"
    else
        puts "Invalid option"
    end

end