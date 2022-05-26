public class ComponentNullIterator implements ComponentIterator {
    
    private Component component;

    public ComponentNullIterator(Component component) {
        this.component = component;
    }

    public void first(){}    
    public void next(){}
        
    public boolean isDone(){
        return true;
    }
    
    public Component getCurrent(){
        return component;
    }
}
