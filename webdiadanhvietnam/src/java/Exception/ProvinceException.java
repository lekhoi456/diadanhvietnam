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
public class ProvinceException extends Exception {
    /**
     * Province Exception
     *
     * @param message
     */
    public ProvinceException(String message) {
        super("Province Exception: " + message);
    }
}
