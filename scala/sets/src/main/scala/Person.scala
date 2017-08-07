import scalaz._, Scalaz._

final case class Person(age: Int, name: String)

object Person {
  implicit def orderPerson: Order[Person] = new Order[Person] {
    def order(x: Person, y: Person): Ordering =
      x.age ?|? y.age |+| x.name ?|? y.name
  }

  val p1 = Person(24, "George")
  val p2 = Person(20, "Ryan")
  val p3 = Person(50, "Lindsay")

  val persons: ISet[Person] = ISet.fromList(List(p1,p2,p3))
}

