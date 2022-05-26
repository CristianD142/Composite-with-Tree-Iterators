/** 
 * Pre-order, NLR
 * Visit the current node.
 * Recursively traverse the current node's left subtree.
 * Recursively traverse the current node's right subtree. 
*/
public class ComponentPreorderIterator implements ComponentIterator{    
    
    private Component component;
    private List<ComponentIterator> iterators;

    public ComponentPreorderIterator(Component component) {
        this.component = component;
    }

    public void first(){
        ComponentIterator iterator = component.createIterator();
        iterator.first();
        iterators = new List<ComponentIterator>();
        iterators.add(iterator);
    }

    public void next(){

        ComponentIterator iterator = iterators[iterators.size()-1].getCurrent().createIterator();
        iterator.first();
        iterators.add(iterator);

        //delete all completed iterators and execute next in the valid iterator
        while(iterators.size() > 0 && iterators[iterators.size()-1].isDone()){
            iterators.remove(iterators.size()-1);
            if(iterators.size() > 0){
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
}