/**
 * @description       : Component interface for all composite structure
 * @author            : ing.cristian.diaz@gmail.com
 * @last modified on  : ISO8601: 2022-05-26
 * @last modified by  : ing.cristian.diaz@gmail.com
**/
public abstract class Component {
    
    private Component parent;
    private string name;

    /**
    * @description operation different for compositions and left. 
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param ; 
    * @return abstract 
    **/
    abstract public void print();
    
    /**
    * @description consturctor, all the components should have a name for this example
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param name 
    **/
    protected Component(string name){
        this.name = name;
    }

    /**
    * @description retun the name of the component
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return string 
    **/
    public virtual string getName(){
        return name;
    }
    
    /**
    * @description for composites, this will allow to add new children
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param component 
    * @return virtual 
    **/
    public virtual void add(Component component){
        throw new HandledException('add not supported for this object');
    }

    /**
    * @description for composites (aggregates) will allow to know the number of children
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return integer 
    **/
    public virtual integer count(){
        return 0;
    }

    /**
    * @description allow to get a especific children for composites
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param position 
    * @return virtual 
    **/
    public virtual Component getChild(integer position){
        throw new HandledException('count not supported for this object');
    }

    /**
    * @description returns a new corresponding iterator for component. this is a facthory method
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return virtual 
    **/
    public virtual ComponentIterator createIterator(){
        return new ComponentNullIterator(this);
    }

    /**
    * @description this will allow the in order traverse
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return virtual 
    **/
    public virtual Component getParent(){
        return parent;
    }

    /**
    * @description set the parent of the component
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param parent 
    * @return virtual 
    **/
    public virtual void setParent(Component parent){
        this.parent = parent;
    }

}
