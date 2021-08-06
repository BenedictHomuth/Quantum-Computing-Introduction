namespace NumberGenerator {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    //Generates a random number either 1 or 0!
    operation GenerateNumber() : Result {
        //create a qubit
        use q = Qubit() {
            H(q); //set superposition

            let result = M(q); //messure qubit

            Reset(q); //You always need to reset 

            return result;
        }
    }
}
