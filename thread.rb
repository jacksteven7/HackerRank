array=['hola', 'esto', 'es', 'un', 'ejemplo']
 
hilo= Array.new
 
array.each{|element|
   hilo<<Thread.new(element){|x|
   puts x
   }
}
 
hilo.each{|ele| ele.join}