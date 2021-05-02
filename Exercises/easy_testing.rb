assert value.odd?, "no"

assert_equal('xyz', value.downcase)

assert_equal(nil, value)

assert list.empty?

assert_includes(list, 'xyz')

assert_raises(NoExperienceError){ employee.hire }

assert_instance_of(Numeric, value)

assert_kind_of Numeric, value

assert list.equal? list.process

refute_includes(list, 'xyz')
