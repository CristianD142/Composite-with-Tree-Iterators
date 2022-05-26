/**
 * @description       : Iterator for Pre-Order Algorithm. the first node is not taken in account.
 * @author            : ing.cristian.diaz@gmail.com
 * @last modified on  : ISO8601: 2022-05-26
 * @last modified by  : ing.cristian.diaz@gmail.com
**/
public class ComponentPreorderIterator implements ComponentIterator{    
    
    private Component component;
    private List<ComponentIterator> iterators;

    /**
    * @description constructor. receive the component to apply the algorithm
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    * @param component 
    **/
    public ComponentPreorderIterator(Component component) {
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
    }

    /**
    * @description next node in the structure.
    * @author ing.cristian.diaz@gmail.com | ISO8601: 2022-05-26 
    **/
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
}