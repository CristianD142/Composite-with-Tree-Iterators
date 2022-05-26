/**
 * @description       : always return done. this is use for leafs
 * @author            : ing.cristian.diaz@gmail.com
 * @last modified on  : ISO8601: 2022-05-26
 * @last modified by  : ing.cristian.diaz@gmail.com
**/
public class ComponentNullIterator implements ComponentIterator {
    
    private Component component;

    /**
    * @description component to iterate
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param component 
    **/
    public ComponentNullIterator(Component component) {
        this.component = component;
    }

    /**
    * @description do nothing because is a null iterator
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
    public void first(){}    
    /**
    * @description do nothing because is a null iterator
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
    public void next(){}
        
    /**
    * @description always returns true. this should be used for leaf components without children
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return boolean 
    **/
    public boolean isDone(){
        return true;
    }

    /**
    * @description returns the same component passed in the constructor
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return Component 
    **/
    public Component getCurrent(){
        return component;
    }
}
