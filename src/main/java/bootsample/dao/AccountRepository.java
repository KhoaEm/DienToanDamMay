package bootsample.dao;

import org.springframework.data.repository.CrudRepository;

import bootsample.model.Account;

public interface AccountRepository extends CrudRepository<Account,Integer> {

}
