# **Everyones_nanoGPT 穴埋めノートブック・チュートリアル**

これは、「ChatGPTが好き！」「自分でも作ってみたい！」という人のための完全ガイドです。  
「Hello」と打てば「今日はどうしましたか？」と返してくれる。  
それが実は、ただの足し算掛け算と少しの非線形の積み重ねで動いていると知ったとき、
ワクワクして夜も眠れなくなる――  
ようこそ、ディープラーニングの世界へ。もう元には戻れません。  
このガイドは、毎日南北線のぎゅうぎゅうの席で、通学中に書きました。  
学生さんたちから「できた！」というコメントが届くたび、
あの狭い席で過ごした時間に大きな意味があったんだなぁと感じています。

---

さあ、一緒にnano-GPTモデルを作ろう！😎  
このチュートリアルでは、わかりやすい解説と**100問以上の穴埋め問題🫨**を用意しています。  
「ちょっとLLM作りたいからやってみたい」――そんな人が本気で力をつけられる内容です。  
必要な予備知識があれば、12〜18時間で修了可能！  
すべてGoogle Colab上で動かせます。  
このチュートリアルは[Andrej Karpathyさんのnano-GPT](https://colab.research.google.com/drive/1JMLa53HDuA-i7ZBmqV7ZnA3c_fvtXnx-?usp=sharing)をベースにしています。  
この場を借りて、心から感謝します。

---

## 目次

| チャプター  | 推定所要時間 | ノートブック  |
|---|---|---|
| Chapter 00: Start Tutorial      | 1〜2時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter00_todo_ja.ipynb) |
| Chapter 01: Dataloader         | 1〜2時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter01_todo_ja.ipynb) |
| Chapter 02: TokenEmbedding     | 0.5〜1時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter02_todo_ja.ipynb) |
| Chapter 03: PositionEmbedding  | 0.5〜1時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter03_todo_ja.ipynb) |
| Chapter 04: EmbeddingModule    | 0.5〜1時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter04_todo_ja.ipynb) |
| Chapter 05: LayerNorm          | 1〜2時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter05_todo_ja.ipynb) |
| Chapter 06: AttentionHead      | 3〜4時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter06_todo_ja.ipynb) |
| Chapter 07: MultiHeadAttention | 1〜2時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter07_todo_ja.ipynb) |
| Chapter 08: FeedForward        | 1〜2時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter08_todo_ja.ipynb) |
| Chapter 09: TransformerBlock   | 0.5〜1時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter09_todo_ja.ipynb) |
| Chapter 10: VocabularyLogits   | 0.5〜1時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter10_todo_ja.ipynb) |
| Chapter 11: BigramLanguageModel| 1〜2時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter11_todo_ja.ipynb) |
| Chapter 12: Trainer            | 1〜2時間 | [![Colabで開く](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/HayatoHongo/Everyones_nanoGPT/blob/ja/notebooks/todo/Everyones_nanoGPT_colab_Chapter12_todo_ja.ipynb) |



## **デモ出力例**
![nanoGPT_demo_output](assets/Everyones_nanoGPT_demo_output.png)

---

## **Tensor Map（テンソル全体図）**
**下のテンソルマップを自分で作ってみよう！**  
ヒントもたくさん用意しているので安心してください。  
[CanvaでnanoGPTモデルのフル解像度Tensor Mapを見る](https://www.canva.com/design/DAGskS8QP6k/1zs7IklaMrB_LncHn2I8pA/edit?utm_content=DAGskS8QP6k&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

![Everyones TensorMap](assets/Everyones_nanoGPT_TensorMap_answer.png)

---

## **前提知識・スキル**

**理解してほしいこと**  
- 行列の掛け算と足し算  
- 平均値と分散  
- ResNetの残差接続（residual connection）  
- Word2Vectorの仕組み  

**ほぼ必須の経験**  
- PyTorchでMNISTの数字認識モデルを作ったことがある  
- 上のようなモデルでクロスエントロピーを損失関数に使ったことがある  
- ミニバッチ処理やバッチ正規化（batch normalization）を実装したことがある  
- オートエンコーダやVAEを作ったことがある  

---

PyTorchやプログラミングが初めての人向けにも、前提条件を満たすための2025年8月30日までに楽しい入門チュートリアルを準備中です！

---

## **モデルについて**

このチュートリアルで使うのは、1文字＝1トークンという超シンプルな「バイグラムモデル」です。  
内部構造もかなり単純になっています。  
学習データセットはShakespeare（シェイクスピア）のテキスト。とても古いので著作権フリーです。

本物のGPT-2と比べると、ものすごく基本的な内容ですが、「基礎から学んで本物を目指す」にはこれがベスト。  
16GBメモリのPCなら、たった2〜4分のCPU学習だけでシェイクスピアっぽい文章が出てきます！  
きっと感動するはず！

---

## **開発環境について**

セットアップの手間を減らすため、サンプルはすべてGoogle Colab上で動かしてみてください。

ただしGoogle Colabでは、チェックボックスのマークが保存されません。  
進捗管理をしたい人や、30分ごとなど「ちょっとずつ進めたい」人には、VS Codeがおすすめです。  
その場合は、このリポジトリをforkして、自分のPCにcloneしてください。


Python 3.12 & PyTorch 2.6.0がベストですが、たいていは他のバージョンでも動きます。  
普通は、今インストールしているPyTorchでOK！  
もし動かない場合は `requirements.txt` で仮想環境を作ると良いです。  
Docker Desktopを使っている場合は、同梱の`Dockerfile`やDev Container拡張でさらに安定した環境を作れます。

---

## **Project EveryonesAIについて**

![EveryonesAI Logo](assets/EveryonesAI_logo.png)  
![EveryonesAI Goal](assets/EveryonesAI_goal.png)  
![EveryonesAI Idea](assets/EveryonesAI_idea.png)  
![EveryonesAI Prerequites](assets/EveryonesAI_prerequites.png)  
![EveryonesAI Plan](assets/EveryonesAI_plan.png)