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
public class RatingException extends Exception {
    /**
     * Rating Exception
     *
     * @param message
     */
    public RatingException(String message) {
        super("Rating Exception: " + message);
    }
}
