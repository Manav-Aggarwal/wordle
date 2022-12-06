import { GeneratedType } from "@cosmjs/proto-signing";
import { MsgSubmitWordle } from "./types/wordle/wordle/tx";
import { MsgSubmitGuess } from "./types/wordle/wordle/tx";

const msgTypes: Array<[string, GeneratedType]>  = [
    ["/wordle.wordle.MsgSubmitWordle", MsgSubmitWordle],
    ["/wordle.wordle.MsgSubmitGuess", MsgSubmitGuess],
    
];

export { msgTypes }