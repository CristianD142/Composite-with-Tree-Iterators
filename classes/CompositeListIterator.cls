/**
 * @description       : a simple list iterator from 0 to total size
 * @author            : ing.cristian.diaz@gmail.com
 * @last modified on  : ISO8601: 2022-05-26
 * @last modified by  : ing.cristian.diaz@gmail.com
**/
public class CompositeListIterator implements ComponentIterator{
    
    private Composite composite;
    private integer position;
    private Component current;

    /**
    * @description constructor with the component to iterate
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param composite 
    **/
    public CompositeListIterator(Composite composite) {
        this.composite = composite;
    }

    /**
    * @description put the cursor in 0 first position
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
    public void first(){
        position = 0;
        current = composite.getChild(position);
    }

    /**
    * @description move the cursor to next position
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
    public void next(){
        position++;
    }
        
    /**
    * @description get the last poistion is done
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return boolean 
    **/
    public boolean isDone(){
        return position>=composite.count();
    }
    
    /**
    * @description get the current child based on internal cursor
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return Component 
    **/
    public Component getCurrent(){
        return composite.getChild(position);
    }
}
