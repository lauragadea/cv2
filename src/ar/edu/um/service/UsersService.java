package ar.edu.um.service;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ar.edu.um.dao.UsersDAO;
import ar.edu.um.model.User;
import ar.edu.um.model.UserRole;


@Service("usersService")
public class UsersService {
	private UsersDAO usersDao;
		
	@Autowired
	public void setUsersDao(UsersDAO usersDao) {
		this.usersDao = usersDao;
	}
	
	public boolean create(User user){
		return usersDao.create(user);
	}
	
	public void createRole(UserRole userRole){
		usersDao.createRole(userRole);
	}
	
}
