class Queu

  def initialize 
    @queu = []
  end 

  def enqueu(el)
    @queu << el 
  end
  
  def dequeu
    @queu.shift

  end
  
  def peek
    @queu.first
  end 

end 