# **Everyones_nanoGPT fill-in-the-blank notebook Tutorial**

```
This is a complete guide for those who love ChatGPT and want to build their own.  
You type "Hello," and it replies, "How can I help you today?"
When you realize this runs on simple math, your heart races. You cannot sleep.   
Welcome to deep learning. There is no way back.  
I wrote this guide on the train to school, squeezed into a tiny seat on the Nanboku Line.
Every time I read an excited comment from a student, 
I feel that those days in that tiny seat had a big meaning.
```

Let's make nano-GPT model!😎<br>
This tutorial gives you clear explanations and **over 100 fill-in-the-blank questions!🫨** <br>
Perfect for ealry birds who want to change their interests into real growth.<br>
If you meet the prerequisites, you can finish in 12–18 hours.<br>
Everything runs in Google Colab. This tutorial is based on [Andrej Karpathy’s nano-GPT](https://colab.research.google.com/drive/1JMLa53HDuA-i7ZBmqV7ZnA3c_fvtXnx-?usp=sharing). <br> 


## Table of Contents
| Chapter  | Estimated Time | Notebook  |
|---|---|---|
| Chapter 00: Start Tutorial      | 1-2 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter00_TODO.ipynb) |
| Chapter 01: Dataloader         | 1-2 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter01_TODO.ipynb) |
| Chapter 02: TokenEmbedding     | 0.5-1 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter02_TODO.ipynb) |
| Chapter 03: PositionEmbedding  | 0.5-1 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter03_TODO.ipynb) |
| Chapter 04: EmbeddingModule    | 0.5-1 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter04_TODO.ipynb) |
| Chapter 05: LayerNorm          | 1-2 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter05_TODO.ipynb) |
| Chapter 06: AttentionHead      | 3-4 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter06_TODO.ipynb) |
| Chapter 07: MultiHeadAttention | 1-2 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter07_TODO.ipynb) |
| Chapter 08: FeedForward        | 1-2 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter08_TODO.ipynb) |
| Chapter 09: TransformerBlock   | 0.5-1 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter09_TODO.ipynb) |
| Chapter 10: VocabularyLogits   | 0.5-1 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter10_TODO.ipynb) |
| Chapter 11: BigramLanguageModel| 1-2 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter11_TODO.ipynb) |
| Chapter 12: Trainer            | 1-2 hour | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/main/Everyones_nanoGPT_TODO/Everyones_nanoGPT_colab_Chapter12_TODO.ipynb) |

## **Demo output**
![nanoGPT_demo_output](assets/nanoGPT_demo_output.png)

## **Tensor Map**
To understand fully, you have to map the tensors by yourself.
![Everyones TensorMap](assets/Everyones_nanoGPT_TensorMap_answer.png)


![EveryonesAI Logo](assets/EveryonesAI_logo.png)
![EveryonesAI Goal](assets/EveryonesAI_goal.png)
![EveryonesAI Idea](assets/EveryonesAI_idea.png)
![EveryonesAI Prerequites](assets/EveryonesAI_prerequites.png)
![EveryonesAI Plan](assets/EveryonesAI_plan.png)


## **Prerequisites**

**Understanding**  
- Understand matrix multiplication and addition  
- Understand mean and variance  
- Understand ResNet’s residual connections  
- Understand Word2Vector  
<br>  
<br>  

**Experience**  
- Have built an MNIST digit recognition model using Pytorch’s.
- Have used cross-entropy as a loss function in digit recognition models like the above  
- Have implemented mini-batch processing and batch normalization  
- Have implemented an autoencoder or VAE

We are also working hard to release fun, entry-level tutorials for those who have never used PyTorch or programming by 2025.8.30.

## **Model**

It uses a bigram model, where each token is just one character.<br> 
Also, the internal structure is very simple.<br>  
The training text dataset is Shakespeare’s writings. Since they are very old, they are copyright-free.<br>

Compared to the real GPT-2, it’s quite basic. But start here to master the GPT basics.<br>  
In just 2-4 minutes of CPU training (on a 16GB memory PC), you can generate Shakespeare-like text.<br> 
It’s guaranteed to impress!<br>

## **Development Environment**

To keep setup simple, try running all examples in Google Colab.<br>

However, Google Colab doesn't save the checkbox marks.<br>
If you want to save your progress with checkbox marks, VS Code is a great choice.<br> 
It’s also handy if you like to work in small bursts, such as 30 minutes at a time.<br> 
In that case, fork and clone this repo to your own computer.<br>

```
git clone https://github.com/HayatoHongo/Everyones_nanoGPT.git
```

Python 3.12 and PyTorch 2.6.0 work best, but most versions are fine.<br> 
Usually, your installed PyTorch will just work.<br>
 If you hit issues, you can set up a virtual environment using `requirements.txt`.<br>
Or, if you use Docker Desktop, you can use the included `Dockerfile` and Dev Container extension for an even more stable setup.

