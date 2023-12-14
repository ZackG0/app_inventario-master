import 'package:app_inventario/admin/controller/detalle_prov_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UpdateProvPage extends StatefulWidget {
  DetalleProvController con = Get.put(DetalleProvController());

  @override
  State<UpdateProvPage> createState() => _UpdateProvPageState();
}

class _UpdateProvPageState extends State<UpdateProvPage> {
  
  /*
  @override
  void initState() {
    widget.con.nombreEmpresaController = new TextEditingController(text: widget.con.proveedor.nombreEmpresa);
    widget.con.contactoController = TextEditingController(text: widget.con.proveedor.contacto);
    widget.con.telefonoController = TextEditingController(text: widget.con.proveedor.telefono);
    widget.con.correoElectronicoController = TextEditingController(text: widget.con.proveedor.correoElectronico);
    widget.con.contactoController = TextEditingController(text: widget.con.proveedor.correoElectronico);
    widget.con.direccionController = TextEditingController(text: widget.con.proveedor.direccion);
    super.initState();
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,),
          ), systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    _textFieldId(label: ""),
                    _textFieldNombreProv(label: "Nombre del proveedor"),
                    _textFieldEmail(label: "Email del proveedor"),
                    _textFieldNombreEmpresa(label: "Nombre de la empresa"),
                    _textFieldTelefono(label: "Teléfono del proveedor"),
                    _textFieldDireccion(label: "Dirección de la empresa")
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 3, left: 3),
                  decoration:
                  BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: const Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                      )
                  ),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        setState(() {
                          widget.con.edit(context);
                        });
                      },
                      color: const Color.fromARGB(255, 244, 110, 0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        "Modificar", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,

                      ),
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

  Widget _textFieldId({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color:Colors.black87
          ),

        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: widget.con.idController,
          obscureText: obscureText,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0,
                  horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              )
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }


  Widget _textFieldEmail({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color:Colors.black87
          ),

        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: widget.con.correoElectronicoController,
          obscureText: obscureText,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0,
                  horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              )
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }

  Widget _textFieldNombreProv({label, obscureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color:Colors.black87
          ),

        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: widget.con.contactoController,
          obscureText: obscureText,
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0,
                  horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              )
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }

  Widget _textFieldNombreEmpresa({label, obscureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color:Colors.black87
          ),

        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: widget.con.nombreEmpresaController,
          obscureText: obscureText,
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0,
                  horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              )
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }

  Widget _textFieldTelefono({label, obscureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color:Colors.black87
          ),

        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: widget.con.telefonoController,
          obscureText: obscureText,
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0,
                  horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              )
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }

  Widget _textFieldDireccion({label, obscureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color:Colors.black87
          ),

        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: widget.con.direccionController,
          obscureText: obscureText,
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0,
                  horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              )
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
  }

