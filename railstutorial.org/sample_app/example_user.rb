class User
    attr_accessor :name, :email

    def initialize(param={})
        @name = param[:user]
        @email = param[:email]
    end

    def format
        "#{@name}<<<#{@email}"
    end
end
