abstract class Notification

case class SMS(mobile: String, msg: String) extends Notification

case class Email(emailAddr: String, subject: String, body: String) extends Notification

object Pattern{
	
	def showNotification(notification: Notification): String = {
		notification match{
			case Email(emailAddr, subject, _) => 
				s"You got an email from $emailAddr with subject: $subject"
			case SMS(number, message) =>
				s"You got a SMS from $number! Message: $message"
		}
	}
	def main(args: Array[String]):Unit = {
		val someSMS = SMS("12345","Are you there?")
		val someEmail = Email("xyz@nmit.ac.in","Big data course syllabus", "Intro to Big data, NoSQL Databases, Spark RDDS, SQL, Streaming")

		println(showNotification(someSMS))
		println(showNotification(someEmail))
	}
}
