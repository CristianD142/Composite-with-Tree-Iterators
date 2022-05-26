/**
 * @description       : Aggregate for composite structure
 * @author            : ing.cristian.diaz@gmail.com
 * @last modified on  : ISO8601: 2022-05-26
 * @last modified by  : ing.cristian.diaz@gmail.com
**/
public class Composite extends Component {
    
    private List<Component> components;
    
    /**
    * @description cosntructor. as a node, it requires a name for this model.
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param name 
    **/
    public Composite(string name) {
        super(name);
        this.components = new List<Component>();
    }

    /**
    * @description this method prints the name. if want to use an iternal iterator
    * here with should call the children and apply some operation. recursive operation
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
    public override void print(){
        System.debug(this.getName());
    }

    /**
    * @description add a new component to the list of children
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param component 
    **/
    public override void add(Component component){
        component.setParent(this);
        components.add(component);
    }

    /**
    * @description return the total children in the component
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return integer 
    **/
    public override integer count(){
        return components.size();
    }

    /**
    * @description get child in specific position 
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param position 
    * @return Component 
    **/
    public override Component getChild(integer position){
        return components[position];
    }

    /**
    * @description factory method. returns a list iterator
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return ComponentIterator 
    **/
    public override ComponentIterator createIterator(){
        return new CompositeListIterator(this);
    }
}
