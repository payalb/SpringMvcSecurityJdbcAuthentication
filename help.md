1) Include dependency for jdbctemplate
spring-jdbc

Advantages:
Open the connection.
Prepare and execute the statement.
Set up the loop to iterate through the results (if any).
Process any exception.
Handle transactions.
Close the connection, the statement, and the resultset.

 Given a Connection provided by the JdbcTemplate class, the PreparedStatementCreator callback interface creates a prepared statement, providing SQL and any necessary parameters. The same is true for the CallableStatementCreator interface, which creates callable statements. The RowCallbackHandler interface extracts values from each row of a ResultSet.
 
 queryForObject: to get data of particular type
 You can use the update(..) method to perform insert, update, and delete operations. Parameter values are usually provided as variable argumets or, alternatively, as an object array.
 this.jdbcTemplate.update(
        "insert into t_actor (first_name, last_name) values (?, ?)",
        "Leonor", "Watling");

        You can use the execute(..) method to run any arbitrary SQL. Consequently, the method is often used for DDL statements. It is heavily overloaded with variants that take callback interfaces, binding variable arrays, and so on
        this.jdbcTemplate.update(
        "call SUPPORT.REFRESH_ACTORS_SUMMARY(?)",
        Long.valueOf(unionId));
        
        
        Instances of the JdbcTemplate class are thread-safe, once configured. This is important because it means that you can configure a single instance of a JdbcTemplate and then safely inject this shared reference into multiple DAOs (or repositories). The JdbcTemplate is stateful, in that it maintains a reference to a DataSource,