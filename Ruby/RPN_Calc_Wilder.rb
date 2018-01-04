# Reverse Polish Notation Command-Line Calculator
# By Alan Wilder for SciMed Solutions code exercise

# RPN Methods put into RpnCalc module to facilitate a possible change of interface
module RpnCalc
  # Add additional operators here.  Any binary operators recognized by ruby will work
  Operators = ['+', '-', '*', '/']

  # Method used to determine if strings are valid floats.  Found on Reference 3.
  def self.valid_float?(str)
    !!Float(str) rescue false
  end

  # Method to make sure all inputs are either numbers or one of the recognized operators.
  def self.valid_characters?(input_array)
    input_array.each do |input|
      if !valid_float?(input) && !Operators.include?(input)
        return false
      end
    end
    return true
  end

  # Method that takes in an array, does the reverse polish notation calculation, and returns either the output of that calculation or the final number input.  Returns false if not enough operands for the operators. Algorithm steps taken from Reference 6.
  def self.return_rpn_calc(rpn_array)
    index = 0
    loop do
      if rpn_array[index].nil?
        break
      elsif Operators.include?(rpn_array[index])
        if index < 2
          return false
        elsif
          output = rpn_array[index - 2].to_f.send(rpn_array[index], rpn_array[index-1].to_f) # Reference 5
          rpn_array[index - 2] = output
          rpn_array.delete_at(index)
          rpn_array.delete_at(index - 1)
          index = index - 1
        end
      else
        index += 1
      end
    end
    return rpn_array.last
  end
end

# Initialization / instruction prompt
puts <<~HEREDOC
  *** Reverse Polish Notation Calculator ***
  *** Enter 'quit' or 'ctrl-d' to quit ***
  *** Enter numbers and operators "#{RpnCalc::Operators.join(', ')}\" to calculate ***
  HEREDOC

# This variable stores the current input(s) from the session.
all_inputs = []

# This loop continuously takes a input from the command line until 'quit' or ctrl-d is entered.  input is processed and rpn calculation or error message is printed.
loop do
  print '>'
  current_input = gets
  if current_input.nil? || current_input.include?('quit')
    puts '*** RPN calcuator quitting ***'
    break
  end

  # store current command line inputs in an array
  current_input = current_input.split(' ')

  # Make sure only numbers and valid operators are entered.  If invalid input, this method returns false and the program outputs error message and a reminder of current input (if any)
  if !RpnCalc.valid_characters?(current_input)
    puts "*** Only numbers and the operators \"#{RpnCalc::Operators.join(', ')}\" are allowed ***"
    input_report = all_inputs.empty? ? 'blank' : '"' + all_inputs.join(' ').to_s + '"'
    puts "*** Current calculator input is #{input_report}. Try again. ***"
    next
  end

  # Checks for valid RPN syntax.  If invalid, this method returns false and the program ignores current_input and outputs error message and moves to next iteration of loop.
  if !RpnCalc.return_rpn_calc(all_inputs + current_input)
    input_report = all_inputs.empty? ? 'blank' : '"' + all_inputs.join(' ').to_s + '"'
    puts <<~HEREDOC
    *** Invalid RPN syntax. Not enough operands. ***
    *** Current calculator input is #{input_report}. Try again. ***
    HEREDOC
    next
  end

  # Add current inputs to previous inputs and store
  all_inputs = all_inputs + current_input

  # Calculates the answer, alters the all_inputs array, and puts the RPN caculation to screen.
  puts RpnCalc.return_rpn_calc(all_inputs)
end




=begin
REFERENCES
1. Glanced at for command line interface structure
https://stackoverflow.com/questions/33924808/command-line-interface-helpers/33924963

2. Used to determine value of ctrl-d when inputed using gets method
https://stackoverflow.com/questions/36524304/is-it-possible-to-break-out-of-a-ruby-program-if-i-input-ctrld

3. Used a method from this thread to check if strings are valid_floats.  The method used works better than any RegEx I tried.
https://stackoverflow.com/questions/1034418/determine-if-a-string-is-a-valid-float-value

4. Used this to remind me of multiline string syntax
https://infinum.co/the-capsized-eight/multiline-strings-ruby-2-3-0-the-squiggly-heredoc

5. Used code from this thread to call operators from strings using the Object.send method
https://stackoverflow.com/questions/19733737/how-do-i-convert-a-math-operator-character-to-perform-its-operation

6. wikipedia page linked by SciMed Solutions prompt used to determine algorithm
https://en.wikipedia.org/wiki/Reverse_Polish_notation


ISSUES
- return_rpn_calc alters the array.  If we wanted to store all the inputed values, we could alter the method to clone the array first before the calculation.  This would preserve the all inputted variables.
=end
