# About Class method and instance method

class ClassA

  def intMethod # instance method will be called by creating object . obj.method name
    puts ' This is instance method.'
  end

  def self.classMeth  # class method is created self.method name, and only called by class name,
    puts " This is class method."
  end

  class << self
  def myClsMet
    puts " This is also class method."
  end
  end

end
ClassA.new.intMethod
ClassA.classMeth
ClassA.myClsMet

