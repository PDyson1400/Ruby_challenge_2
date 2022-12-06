class PasswordManager
    def initialize()
        @storage = {}
    end

    def add(service, password)
        password.length >= 8 && password =~ /[!@$%&]/ ? @storage[service] = password : false
    end

    def password_for(service)
        return @storage[service]
    end

    def services()
        return @storage.keys
    end
end

#passwords = PasswordManager.new
#passwords.add("Makers", "1234")
#passwords.password_for("Makers")
#passwords.services()