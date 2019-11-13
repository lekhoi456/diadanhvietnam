/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Exception;

/**
 *
 * @author KhoiLeQuoc
 */
public class PostException extends Exception {
    /**
     * Post Exception
     *
     * @param message
     */
    public PostException(String message) {
        super("Post Exception: " + message);
    }
}
