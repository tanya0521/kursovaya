if (u1 = User.find_by_email('admin@localhost')).nil?
  u1 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'admin@localhost')
  u1.activate!
end
if (u2 = User.find_by_email('user@localhost')).nil?
  u2 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user@localhost')
  u2.activate!
end
r1, r2 = Role.create_main_roles
ru1 = RoleUser.create(role: r1, user: u1)
<<<<<<< HEAD
ru2 = RoleUser.create(role: r2, user: u2)

Collection.destroy_all; Hall.destroy_all; Exhibit.destroy_all
=======
ru2 = RoleUser.create(role: r2, user: u2)
>>>>>>> 4681a207acfef92ab970235c4f96b4c3944db4e7
