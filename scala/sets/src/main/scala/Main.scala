import scalaz._, Scalaz._

import Person.{p2, persons}

object Main {

  implicit def orderPersonByName: Order[Person] = new Order[Person] {
    def order(x: Person, y: Person): Ordering =
      x.name ?|? y.name |+| x.age ?|? y.age
  }

  def main(args: Array[String]): Unit =
    println(persons.contains(p2))
}

