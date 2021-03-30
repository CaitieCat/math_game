class Question
    def initialize
        @first_num = rand(21)
        @second_num = rand(21)
        @sum = first_num + second_num
    end

    attr_accessor :first_num, :second_num, :sum
end