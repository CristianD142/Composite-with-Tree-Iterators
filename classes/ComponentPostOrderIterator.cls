/**
 * @description       : Iterator for Post-Order Algorithm. the last node is not taken in account.
 * @author            : ing.cristian.diaz@gmail.com
 * @last modified on  : ISO8601: 2022-05-26
 * @last modified by  : ing.cristian.diaz@gmail.com
**/
public class ComponentPostOrderIterator implements ComponentIterator {
    
    private Component component;
    private List<ComponentIterator> iterators;

    /**
    * @description 
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param component 
    **/
    public ComponentPostOrderIterator(Component component) {
        this.component = component;
    }

    /**
    * @description first element. in this case the first child of the composite
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
    public void first(){
        
        ComponentIterator iterator = component.createIterator();
        iterator.first();
        iterators = new List<ComponentIterator>();
        iterators.add(iterator);
        identifyLastLeft();
    }

    /**
    * @description next node in the structure.
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
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
        
    /**
    * @description when list of iterators is null, it means is done. 
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return boolean 
    **/
    public boolean isDone(){
        return iterators.size() == 0;
    }
    
    /**
    * @description get the current component from the last iterator in the list
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @return Component 
    **/
    public Component getCurrent(){
        return iterators[iterators.size()-1].getCurrent();
    }

    /**
    * @description move the cursor to the last node in the list and remove the completed iterators
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
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