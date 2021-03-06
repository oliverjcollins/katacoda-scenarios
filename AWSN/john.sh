# Create files
mkdir john
cd john

# Download & unpack John the Ripper
sudo snap install john-the-ripper

# Generate Hash
wordlist=("ashley" "qwerty" "111111" "iloveu" "0" "michelle" "tigger" "sunshine" "chocolate" "password1" "soccer" "anthony" "friends" "butterfly" "purple" "angel" "jordan" "liverpool" "justin" "loveme" "fuckyou" "123123" "football" "secret" "andrea" "carlos" "jennifer" "joshua" "bubbles" "1234567890" "superman" "hannah" "amanda" "loveyou" "pretty" "basketball" "andrew" "angels" "tweety" "flower" "playboy" "hello" "elizabeth" "hottie" "tinkerbell" "charlie" "samantha" "barbie" "chelsea" "lovers" "teamo" "jasmine" "brandon" "666666" "shadow" "melissa" "eminem" "matthew" "robert" "danielle" "forever" "family" "jonathan" "987654321" "computer" "whatever" "dragon" "vanessa" "cookie" "naruto" "summer" "sweety" "spongebob" "joseph" "junior" "softball" "taylor" "yellow" "daniela" "lauren" "mickey" "princesa")
rand=$[$RANDOM % ${#wordlist[@]}]

# Let the user know they should be using part 2 docs
echo "Hey if you are in this folder you should be using the Learning to Meow with Hashcat documentation, this is for part 2 of the CTF" > README

# Write a hash to a file
echo -n ${wordlist[$rand]} | md5sum | tr -d " -" >> hash.txt
printf "%s\n" "${wordlist[@]}" > wordlist.txt

# Hide our challenges from the user
history -c
rm /tmp/*