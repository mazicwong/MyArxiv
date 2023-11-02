// ["Dataset", "Survey", "Review", "Overview"];
let titles_type = [];

let titles_model = ["Transformer", "BERT", "GPT", "GPT3", "GPT4", "GPT5",
                    "ChatGPT", "ChatGLM", "DynaBERT", "GPT3.5", "GPT4", "Large Language Model", "Language Model", "LLM"];

//                     "Prompt", "Self-Supervised", "Multi-modal", "Multimodal", "Sarcasm Detection", 
//                     "Dialogue System", "Dialogue", "Story", "KBQA", "KGQA", "Knowledge Graph", "Chinese"
//"Pre-train", "pretrained", "Pretrain",
let titles_method = ["Low-Bitwidth", "Quantization", "PCA", "Sparsity",
                     "Rotary", "Positional", "Positional Encoding", "Positional Embeddings", "RoPE", "32k", "100k", "128k", "196k", "256k", "400k", "1M", "4M",
                     "Length Extrapolation", "Length Extension", "Window Extrapolation", "Window Extension", "Context Extrapolation", "Context Extension",
                     "MOE", "Mixture of Expert", "Mixture-of-Expert", "Mixture of Attention", "Long Context", "Long Range", "Lossless",
                     "SLU", "Spoken Language Understanding",
                     "Hugging", "Flash-Attention", "Flash Attention", "Llama", "Megatron", "Megatron-LM",
                     "Baichuan", "Minimax", "OpenAI", "Open-AI"];

let titles =  titles_model + titles_method + titles_type;

//"Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio", "Mu Li",
//"Min Yang", "Lidong Bing", "Ruifeng Xu"
let authors_array = ["Zhilin Yang", "Xinyu Zhou", "Yuxin Wu", "Jiezhong Qiu", "Jianlin Su", "Zhiqi Huang",
                     "Mingxing Zhang", "Weiran He", "Xinran Xu", "Jingyuan Liu", "Yutao Zhang", "Xingcheng Yao", "Tong Gao",
                     "Tri Dao", "Danqi Chen", "Jie Tang", "Song Han", "Yuexian Zou", "Xu Sun",
                     "Lu Hou", "Haoli Bai", "Xiaoqi Jiao", "Qun Liu", "Lifeng Shang", "Xin Jiang", "Milind Rao", "Anirudh Raju",
                     "Zhihong Zhu", "Dongsheng Chen", "Xuxin Cheng", "Yifeng Xie", "Libo Qin", "Bowen Xing"];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // DM
    "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // IR
    "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // NLP
    "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    // Arch
    //"ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    //"FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    // Security
    //"ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
