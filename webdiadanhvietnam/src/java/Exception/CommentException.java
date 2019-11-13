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
public class CommentException extends Exception {

    /**
     * Comment Exception
     *
     * @param message
     */
    public CommentException(String message) {
        super("Comment Exception: " + message);
    }
}