/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

/**
 *
 * @author java2
 */
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import action.IndexWrapper;
 
public class WholeWordIndexFinder {
 
    private String searchString;
 
    public WholeWordIndexFinder(String searchString) {
        this.searchString = searchString;
    }
 
    public List<IndexWrapper> findIndexesForKeyword(String keyword) {
        String regex = "\\b"+keyword+"\\b";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(searchString);
 
        List<IndexWrapper> wrappers = new ArrayList<IndexWrapper>();
 
        while(matcher.find() == true){
            int end = matcher.end();
            int start = matcher.start();
            IndexWrapper wrapper = new IndexWrapper(start, end);
            wrappers.add(wrapper);
        }
        return wrappers;
    }
 
//    public static void main(String[] args) {
//        WholeWordIndexFinder finder = new WholeWordIndexFinder("don’t  evil.being evil is bad");
//        List<IndexWrapper> indexes = finder.findIndexesForKeyword("be");
//        
//        int size = indexes.size();
//        System.out.print(size);
//        
////        System.out.println("Indexes found "+indexes.size() +" keyword found at index : "+indexes.get(0).getStart());
//    }
 
}