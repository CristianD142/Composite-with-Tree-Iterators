public class Leaf extends Component {    

    public Leaf(string name) { 
        super(name);
    }

    public override void print(){
        System.debug(this.getName());
    }
}
