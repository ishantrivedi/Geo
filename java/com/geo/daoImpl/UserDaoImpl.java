/*package com.geo.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.geo.dao.UserDao;
import com.geo.model.Role;
import com.geo.model.User;

@Repository
@EnableTransactionManagement
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<User> getUserList() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User");
		List<User> userList = query.list();
		session.flush();

		return userList;
	}

	@Transactional
	public User getUserById(int id) {
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		session.flush();
		return user;
	}

	@Transactional
	public void addUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
		Role r1=new Role();
		r1.setAuthority("ROLE_USER");
		r1.setUsername(user.getusername());
		session.saveOrUpdate(r1);
		session.flush();
	}

	@Transactional
	public void editUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
		session.flush();
	}

	@Transactional
	public void deleteUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(user);
		session.flush();
	}

	// getusername and validate mathods are added for login username-password
	// confirmation
	@Transactional //removed override annotation
	public User getUserByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User where username = ?");
		query.setString(0, username);
		return (User) query.uniqueResult();
	}

	//removed override annotation
	public int validateUser(String getusername, String getpassword) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Transactional
	public void approveUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
		session.flush();
	}

	public void BillingAddress(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int validateUser(String getusername, String getpassword) {
		int res = 0;
		Session session = sessionFactory.getCurrentSession();
		Query result = session.createQuery("from User u where u.username='" + getusername + "'");
		// result.setString("username",username);
		List<User> user = result.list();
		System.out.println("user:" + user);
		if (user.size() == 0) {
			res = 0;
		} else {
			for (int i = 0; i < user.size(); i++) {
				System.out.println("inside for loop");
				String dbuserName = user.get(i).getusername();
				String dbpassword = user.get(i).getpassword();
				// String dbrole=user.get(i).getRole();
				if (dbuserName.equals(getusername) && dbpassword.equals(getpassword)) {
					res = 1;
					System.out.println("the result is:" + res);
				} else if (dbuserName.equals(getusername) && dbpassword.equals(getpassword)) {
					res = 2;
					System.out.println("the result  is:" + res);
				}
			}
		}
		return res;
	}
}*/