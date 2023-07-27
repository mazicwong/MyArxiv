// ["Dataset", "Survey", "Review", "Overview"];
let titles_type = [];

let titles_model = ["Transformer", "BERT", "GPT", "GPT3", "GPT4", "GPT5",
                    "ChatGPT", "ChatGLM", "DynaBERT", "GPT3.5", "GPT4", "Large Language Model", "Language Model", "LLM"];

//                     "Prompt", "Self-Supervised", "Multi-modal", "Multimodal", "Sarcasm Detection", 
//                     "Dialogue System", "Dialogue", "Story", "KBQA", "KGQA", "Knowledge Graph", "Chinese"
let titles_method = ["Pre-train", "Pretrain", "Pretrained", 
                     "MOE", "Mixture of Expert", "Mixture-of-Expert", "Mixture of Attention",
                     "SLU", "Spoken Language Understanding",
                     "Hugging", "Flash-Attention", "Flash Attention", "Llama", "Megatron", "Megatron-LM"];

let titles =  titles_model + titles_method + titles_type;

let authors_array = ["Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio",
                     "Zhilin Yang", "Xinyu Zhou", "Yuxin Wu", "Jiezhong Qiu", "Zhiqi Huang",
                     "Danqi Chen", "Jie Tang", "Yuexian Zou", "Xu Sun", "Song Han", "Mu Li",
                     "Lu Hou", "Haoli Bai", "Xiaoqi Jiao", "Qun Liu", "Lifeng Shang", "Milind Rao", "Anirudh Raju",
                     "Libo Qin", "Bowen Xing", "Zhihong Zhu", "Dongsheng Chen",
                     "Min Yang", "Lidong Bing", "Ruifeng Xu"];

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
