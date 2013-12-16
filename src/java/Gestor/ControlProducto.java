/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestor;

import Bean.BeanProducto;
import DAO.DaoProducto;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author aya
 */
public class ControlProducto {

    DaoProducto dao = new DaoProducto();

    public void modificar(int id, String valor) {
        dao.modificar(id, valor);
    }

    public List<BeanProducto> getProductos() {
        return dao.getProductos();
    }

    public void insertar(BeanProducto bean) {
        if (!dao.buscar(bean) && dao.insertar(bean)) {
            JOptionPane.showMessageDialog(null,
                    "Se ha agregado un nuevo producto", "Info", 1);
        } else {
            JOptionPane.showMessageDialog(null,
                    "El producto ya existe", "Info", 1);
        }
    }

    public void eliminar(int id) {
        dao.delete(id);
    }
}
