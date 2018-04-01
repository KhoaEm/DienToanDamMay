package bootsample.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.AccountRepository;
import bootsample.model.Account;
import bootsample.model.Task;
@Service
@Transactional
public class AccountService {
	private final AccountRepository accountRepository;

	public AccountService(AccountRepository accountRepository) {
	
		this.accountRepository = accountRepository;
	}
	public List<Account> findAll(){
		List<Account> accounts=new ArrayList<>();
		 for(Account account: accountRepository.findAll()) {
			 accounts.add(account);
		 }
		 return accounts;
	}
	
	public Account findAccount(int id) {
		Account accountcantim=new Account();
		List<Account> accounts=new ArrayList<>();
		for(Account account: accountRepository.findAll()) {
			if(account.getId()==id)
				accountcantim= account;
		 }
		return accountcantim;
	}
	public void save(Account account) {
		accountRepository.save(account);
	}
	
	public void delete(int id) {
		accountRepository.delete(id);
	}
}
