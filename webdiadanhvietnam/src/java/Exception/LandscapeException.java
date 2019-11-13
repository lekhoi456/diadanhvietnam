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
public class LandscapeException  extends Exception{

    /**
     * Landscape Exception
     *
     * @param message
     */
    public LandscapeException(String message) {
        super("Landscape Exception: " + message);
    }
}
