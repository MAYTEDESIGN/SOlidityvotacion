// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

///@title VOTACIÓN PERSONERO EDTUDIANTIL DE UN COLEGIO

 /*Integrantres grupo 20: Karin Alicia Reyes, Maria Teresa Batalla, 
 Nela Berlin Gonzales, Raicelys Diaz, Zarith Fabiola Niño Castillo*/


contract Votacion {

    // Defino variabless
    address public PRUE = 0xADB9ec4592470736C8d83845Fd98825C41250062; //De metamask

     mapping(address => Estudiante) vota; // Externally owned account Colocar una dirección para votar

    uint256 tVotos;


    struct Estudiante{

        bool vot;

        bool Sivota;

    }
//Registrar los candidatos
    struct paraPersonero {

        uint id;

        string Nombre;

        uint256 Numvotos;

    }

    //Se publican los participantes o candidatos registrados 

    paraPersonero public Personero1 = paraPersonero({

        id: 1,

        Nombre: "Ricardo Zapata",

        Numvotos: 0

    });

    paraPersonero public Personero2 = paraPersonero({

        id: 2,

        Nombre: "Julia Olave",

        Numvotos: 0

    });

    paraPersonero public Personero3 = paraPersonero({

        id: 3,

        Nombre: "Maria Del Pilar Torres",

        Numvotos: 0

    });

     paraPersonero public Personero4 = paraPersonero({

        id: 4,

        Nombre: "Daniel Perez",

        Numvotos: 0

    });


    /*Funtion: se da permiso al estudiante para votar, 
    por medio de una dirección que se le asigna a 'Estudiante' 
    y esta dirección debe ser pública*/

    function AddAdres(address _Estudiante) public returns(bool, address) {

        vota[_Estudiante].Sivota = true;

        return (true, _Estudiante);

    }

    /* votar - Lo podrán hacer únicamente los estudiantes con permiso para votar. 
    Aquí vemos el conteo de votos. según el número que oprima el estudiante que está votando. 
    Si oprime el #1 será para el candidacon con id #1, si no oprimirá del 
    2 o el 3 o el 4. y el que oprima se quedará con el voto.*/

    function Numavotar(uint _votper) public {

        require(vota[msg.sender].Sivota, "NO PUEDE VOTAR");

        vota[msg.sender].vot = true;

        if( _votper == 1){

            // voto por RICARDO ZAPATA

            Personero1.Numvotos += 1;

        } 

        else if ( _votper == 2) {

            // voto por JULIA OLAVE

            Personero2.Numvotos += 1;

        } 

        else if ( _votper == 3) {

            // voto por MARIA DEL PILAR TORRES
            Personero3.Numvotos += 1;

               }


             if ( _votper == 4) {

            // voto por DANIEL PEREZ

            Personero4.Numvotos += 1;

        } 

          

    }

   
    }
    

    