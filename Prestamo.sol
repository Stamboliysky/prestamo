// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;


contract ContratoPrestamoDefiCabezera {

    address public SosioPrinsipal;

    struct Prestamista {
        uint256 idEmpleado;
        address Prestamista; 
    }


    struct Prestamista {
        uint256 idEmpleado;
        string nombre;
        uint256 salario;
       
    }
        
    
    mapping(uint256 => Prestamista) public Prestamistas;

    event PrestamistaAgregado(uint256 indexed idPrestamista);
    event PrestamistaEliminado(uint256 indexed idPrestamista);
    

    error ErrorNoEresSosioPrinsipal();

    modifier _SoloSosioPrincipal() {
        require(_SoloSosioPrinsipal == msg.sender, "Error: no eres el Sosio Principl");
}
    
    modifier PrestamistaExiste(uint256 _idPrestamista) {
        require(Prestamistas[_idPrestamista].idPrestamista != 0, "Error: el empleado no existe");
        _;
    }

    struct Prestamo {
        uint256 IdPrestamo;
        address prestatatario;
        uint256 CantidadPrestamo;
        uint256 PlazoReembolso;
        uint256 MarcaTiempoinSolisitud;
        uint256 TiempoLimiteReembolso;
        bool PrestamoAprobado;
        bool PrestamoReembolsado;
        bool GarantiaLiquidada;      
    }
    struct Prestatario {
        bool ClienteActivado;
        uint256 GarantiaActivada;
        uint IdPrestamosVigentes;
    }

}
