public class CompositeListIterator implements ComponentIterator{
    
    private Composite composite;
    private integer position;
    private Component current;

    public CompositeListIterator(Composite composite) {
        this.composite = composite;
    }

    public void first(){
        position = 0;
        current = composite.getChild(position);
    }

    public void next(){
        position++;
    }
        
    public boolean isDone(){
        return position>=composite.count();
    }
    
    public Component getCurrent(){
        return composite.getChild(position);
    }
}
