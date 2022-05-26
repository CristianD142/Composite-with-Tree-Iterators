public class ComponentPostOrderIterator implements ComponentIterator {
    
    private Component component;
    private List<ComponentIterator> iterators;

    public ComponentPostOrderIterator(Component component) {
        this.component = component;
    }

    public void first(){
        
        ComponentIterator iterator = component.createIterator();
        iterator.first();
        iterators = new List<ComponentIterator>();
        iterators.add(iterator);
        identifyLastLeft();
    }

    public void next(){

        //this is not done, move next and find the last left
        if(!iterators[iterators.size()-1].isDone()){
            iterators[iterators.size()-1].next();
            identifyLastLeft();
        } else{
            //remove completed node, and move next in parent
            while(iterators.size() > 0 && iterators[iterators.size()-1].isDone()){
                iterators.remove(iterators.size()-1);
                iterators[iterators.size()-1].next();
            }
        }
    }
        
    public boolean isDone(){
        return iterators.size() == 0;
    }
    
    public Component getCurrent(){
        return iterators[iterators.size()-1].getCurrent();
    }

    private void identifyLastLeft(){

        //find the last left in the structure
        while(!iterators[iterators.size()-1].isDone()){
            ComponentIterator iterator = iterators[iterators.size()-1].getCurrent().createIterator();            
            iterator.first();
            iterators.add(iterator);
        }

        //remove null iterator
        while(iterators.size() > 0 && iterators[iterators.size()-1].isDone()){
            iterators.remove(iterators.size()-1);
        }
    }
}