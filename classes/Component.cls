public abstract class Component {
    
    private Component parent;
    private string name;
    
    abstract public void print();
    
    protected Component(string name){
        this.name = name;
    }

    public virtual string getName(){
        return name;
    }
    
    public virtual void add(Component component){
        throw new HandledException('add not supported for this object');
    }

    public virtual integer count(){
        return 0;
    }

    public virtual Component getChild(integer position){
        throw new HandledException('count not supported for this object');
    }

    public virtual ComponentIterator createIterator(){
        return new ComponentNullIterator(this);
    }

    public virtual Component getParent(){
        return parent;
    }

    public virtual void setParent(Component parent){
        this.parent = parent;
    }

}
