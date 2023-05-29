import scala.io.StdIn
import scala.collection.mutable.ArrayBuffer

object MinMax{
	def main(args: Array[String]):Unit = {
		var numArray = new ArrayBuffer[Int]()
		println("Enter no. of elements")
		val n = scala.io.StdIn.readInt()
		println("Enter elements")
		for(i<- 1 to n)
			numArray+=scala.io.StdIn.readInt()
		println(numArray)
		
		val t=minmax(numArray)
		println("Max is ",t._1)
		println("Min is ",t._2)
	}
	def minmax(numArray: ArrayBuffer[Int]):(Int,Int)={
		var min:Int=999
		var max:Int=(-999)
		for(value <- numArray){
			if(value>max)
				max = value
			else if(value<min)
				min = value
		}
		(max,min)
	}
} 
