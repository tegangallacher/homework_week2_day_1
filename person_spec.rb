require('minitest/autorun')
require('minitest/rg')
require_relative('person')


class TestPerson < Minitest::Test
  person = Person.new('Tegan', 23)

  def test_person_has_name
    person = Person.new('Tegan', 23)
    assert_equal(person.name, 'Tegan')
  end

  def test_person_has_an_age
    person = Person.new('Tegan', 23)
    assert_equal(person.age, 23)
  end

end