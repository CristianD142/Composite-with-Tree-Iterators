/**
 * @description       : represent a leaf of the composite structure. no children
 * @author            : ing.cristian.diaz@gmail.com
 * @last modified on  : ISO8601: 2022-05-26
 * @last modified by  : ing.cristian.diaz@gmail.com
**/
public class Leaf extends Component {    

    /**
    * @description constructor. all node must have a name for this example
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param name 
    **/
    public Leaf(string name) { 
        super(name);
    }

    /**
    * @description for leafs only show the name.
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
    public override void print(){
        System.debug(this.getName());
    }
}
