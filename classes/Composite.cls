public class Composite extends Component {
    
    private List<Component> components;
    
    public Composite(string name) {
        super(name);
        this.components = new List<Component>();
    }

    public override void print(){
        System.debug(this.getName());
    }

    public override void add(Component component){
        component.setParent(this);
        components.add(component);
    }

    public override integer count(){
        return components.size();
    }

    public override Component getChild(integer position){
        return components[position];
    }

    public override ComponentIterator createIterator(){
        return new CompositeListIterator(this);
    }
}
