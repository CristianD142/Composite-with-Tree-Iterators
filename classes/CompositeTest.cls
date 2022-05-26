@isTest
class CompositeTest {
    
    static Component createTree(){

        /** create the following tree
        *     _ F _
        *    /     \
        *   B       G
        *  / \       \
        * A   D       I
        *    / \     /
        *   C   E   H
        **/

        Component A = new Leaf('A');
        Component B = new Composite('B');
        Component C = new Leaf('C');
        Component D = new Composite('D');        
        Component E = new Leaf('E');        
        Component F = new Composite('F');
        Component G = new Composite('G');
        Component H = new Leaf('H');
        Component I = new Composite('I');

        F.add(B);
        F.add(G);
        B.add(A);
        B.add(D);
        D.add(C);
        D.add(E);
        G.add(I);
        I.add(H);

        return F;
    }

    @isTest
    static void preOrder(){
        
        Component tree = createTree();        
        ComponentIterator iterator = new CompositePreOrderIterator(tree);
        string result = tree.getName();
        
        iterator.first();
        while(!iterator.isDone()){
            Component component = iterator.getCurrent();
            result += component.getName();
            iterator.next();
        }
        
        System.assertEquals('FBADCEGIH', result, 'Tree was not traversed in pre-order');
        
    }

    @isTest
    static void postOrder(){
        
        Component tree = createTree();
        ComponentIterator iterator = new ComponentPostOrderIterator(tree);
        string result = '';        
        iterator.first();
        while(!iterator.isDone()){
            Component component = iterator.getCurrent();
            result += component.getName();
            iterator.next();
        }
        result += tree.getName();

        System.assertEquals('ACEDBHIGF', result, 'Tree was not traversed in post-order');
        
    }

}
