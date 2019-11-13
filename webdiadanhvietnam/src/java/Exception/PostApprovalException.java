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
public class PostApprovalException extends Exception {
    public PostApprovalException(String message) {
         super("Post Approval Exception: " + message);
    }
}
