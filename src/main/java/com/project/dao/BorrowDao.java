package com.project.dao;

import com.project.domain.borrow;

import java.util.List;

public class BorrowDao extends BasicDao<borrow>{
        public int addBorrow(borrow b){
            Integer bookId = b.getBook_id();
            String bookName = b.getBook_name();
            Integer userId = b.getUser_id();
            String  userName = b.getUser_name();
            String sql = "insert into borrow values(?,?,?,?)";
            return update(sql,bookId,bookName,userId,userName);
        }

        public List<borrow> listAllBorrow(){
            String sql ="select*from borrow";
            return queryMulti(sql,borrow.class);
        }
        public List<borrow> findAllByUserId(Integer userId){
            String sql = "select *from borrow where user_id =?";
            return queryMulti(sql,borrow.class,userId);
        }
    public borrow findByBookId(Integer bookId){
        String sql = "select *from borrow where user_id =?";
        return querySingle(sql,borrow.class,bookId);
    }

}
