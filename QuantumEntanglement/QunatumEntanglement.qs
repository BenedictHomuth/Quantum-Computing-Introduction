namespace QunatumEntanglement {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    //Entangles two quantums
    operation EntangleTwoQuantums() : (Result, Result) {
        mutable q1State = Zero;
        mutable q2State = Zero;

        //create a qubit tuple
        use (q1, q2) = (Qubit(), Qubit()) {
            H(q1); //set superposition

            //CNOT is like a assembly line, so its very low level
            CNOT(q1,q2); // this step entangles the qubits

            set q1State = M(q1); //messure qubit
            set q2State = M(q2); //messure qubit

            Reset(q1);
            Reset(q2);
        }
        
        return (q1State, q2State);

    }
}
