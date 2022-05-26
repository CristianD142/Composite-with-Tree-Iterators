/**
 * @description       : Interface for all iterators
 * @author            : ing.cristian.diaz@gmail.com
 * @last modified on  : ISO8601: 2022-05-26
 * @last modified by  : ing.cristian.diaz@gmail.com
**/
public interface ComponentIterator {

    /**
    * @description move the iterator to the first position 
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
    void first();

    /**
    * @description move the iterator at the next position
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
    void next();

    /**
    * @description must return true when the iteration is completed
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return boolean 
    **/
    boolean isDone();

    /**
    * @description return the current component of the iteration
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return Component 
    **/
    Component getCurrent();

}
