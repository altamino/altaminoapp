.class public Lcom/narvii/util/crawler/TextCrawler$GetCode;
.super Landroid/os/AsyncTask;
.source "TextCrawler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/crawler/TextCrawler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private imageQuantity:I

.field private sourceContent:Lcom/narvii/util/crawler/SourceContent;

.field final synthetic this$0:Lcom/narvii/util/crawler/TextCrawler;

.field private urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/util/crawler/TextCrawler;I)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 76
    new-instance p1, Lcom/narvii/util/crawler/SourceContent;

    invoke-direct {p1}, Lcom/narvii/util/crawler/SourceContent;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 81
    iput p2, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->imageQuantity:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/util/crawler/TextCrawler$GetCode;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "image"

    const/4 v3, 0x0

    .line 106
    aget-object v0, p1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0, v3}, Lcom/narvii/util/crawler/SourceContent;->setSuccess(Z)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v4, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    aget-object v5, p1, v3

    invoke-static {v5}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/crawler/TextCrawler;->access$200(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/narvii/util/crawler/SourceContent;->setFinalUrl(Ljava/lang/String;)V

    .line 111
    :goto_0
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1a

    .line 112
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    iget-object v6, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v6}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/narvii/util/crawler/TextCrawler;->access$300(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 113
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v7, "dropbox"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0, v6}, Lcom/narvii/util/crawler/SourceContent;->setSuccess(Z)V

    .line 116
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v2}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0, v4}, Lcom/narvii/util/crawler/SourceContent;->setTitle(Ljava/lang/String;)V

    .line 119
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0, v4}, Lcom/narvii/util/crawler/SourceContent;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 124
    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->access$100(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v0, :cond_2

    .line 126
    :try_start_1
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    new-instance v7, Lcom/narvii/util/PackageUtils;

    iget-object v8, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v8}, Lcom/narvii/util/crawler/TextCrawler;->access$100(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v8

    invoke-interface {v8}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->access$100(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v7, "account"

    invoke-interface {v0, v7}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 130
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "sid"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move-object v0, v5

    .line 138
    :goto_1
    :try_start_2
    iget-object v7, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 139
    invoke-virtual {v7}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v7

    const-string v8, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36"

    .line 140
    invoke-interface {v7, v8}, Lorg/jsoup/Connection;->userAgent(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v7

    .line 142
    iget-object v8, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v8}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 145
    :try_start_3
    iget-object v9, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v9}, Lcom/narvii/util/crawler/TextCrawler;->access$100(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 146
    new-instance v9, Lcom/narvii/util/PackageUtils;

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v10}, Lcom/narvii/util/crawler/TextCrawler;->access$100(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v10

    invoke-interface {v10}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    if-eqz v0, :cond_4

    :try_start_4
    const-string v8, "NDCAUTH"

    .line 154
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Lorg/jsoup/Connection;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 155
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "pebkit_secret"

    const-string v8, "charmander_hitokage"

    .line 156
    invoke-interface {v7, v0, v8}, Lorg/jsoup/Connection;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 159
    :cond_4
    invoke-interface {v7}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v7

    .line 161
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/narvii/util/crawler/SourceContent;->setHtmlCode(Ljava/lang/String;)V

    .line 163
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v8, "youtube.com"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const-string v8, "youtu.be"

    if-nez v0, :cond_6

    :try_start_5
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, 0x1

    :goto_4
    const-string v10, "title"

    const-string v11, "watch?.*v=(.*)"

    const-string v12, "ytv://"

    if-eqz v9, :cond_b

    .line 165
    :try_start_6
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 167
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v6}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    move-object v13, v0

    .line 169
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 170
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 173
    :try_start_7
    new-instance v0, Ljava/net/URL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.youtube.com/oembed?url=http://www.youtube.com/watch?v="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&format=json"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 176
    :try_start_8
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 177
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v15, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    :goto_5
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 180
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    .line 186
    :try_start_9
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v5, v3

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    .line 183
    :goto_6
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v5, :cond_9

    .line 186
    :try_start_b
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 189
    :cond_9
    :goto_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 191
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 193
    invoke-virtual {v0, v10}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v3, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v3, v0}, Lcom/narvii/util/crawler/SourceContent;->setTitle(Ljava/lang/String;)V

    .line 195
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    const-string v3, "Youtube"

    invoke-virtual {v0, v3}, Lcom/narvii/util/crawler/SourceContent;->setSiteName(Ljava/lang/String;)V

    .line 196
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v3, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-static {v3, v5}, Lcom/narvii/util/crawler/TextCrawler;->access$400(Lcom/narvii/util/crawler/TextCrawler;Lcom/narvii/util/crawler/SourceContent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/util/crawler/SourceContent;->setFavicon(Ljava/lang/String;)V

    .line 197
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v3, v5

    :goto_8
    if-eqz v3, :cond_a

    .line 186
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 188
    :cond_a
    throw v0

    :cond_b
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c

    .line 206
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0, v6}, Lcom/narvii/util/crawler/SourceContent;->setSuccess(Z)V

    const/4 v2, 0x0

    return-object v2

    .line 210
    :cond_c
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0, v7, v9}, Lcom/narvii/util/crawler/TextCrawler;->access$500(Lcom/narvii/util/crawler/TextCrawler;Lorg/jsoup/nodes/Document;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 213
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v3, 0x1

    goto :goto_a

    :cond_e
    const/4 v3, 0x0

    .line 219
    :goto_a
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v5, v0}, Lcom/narvii/util/crawler/SourceContent;->setMetaTags(Ljava/util/HashMap;)V

    .line 221
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setTitle(Ljava/lang/String;)V

    .line 222
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    const-string v10, "description"

    .line 223
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 222
    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setDescription(Ljava/lang/String;)V

    .line 224
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    const-string v10, "sitename"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setSiteName(Ljava/lang/String;)V

    .line 225
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    iget-object v13, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-static {v10, v13}, Lcom/narvii/util/crawler/TextCrawler;->access$400(Lcom/narvii/util/crawler/TextCrawler;Lcom/narvii/util/crawler/SourceContent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setFavicon(Ljava/lang/String;)V

    .line 226
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v5}, Lcom/narvii/util/crawler/SourceContent;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 227
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 228
    invoke-virtual {v5}, Lcom/narvii/util/crawler/SourceContent;->getHtmlCode()Ljava/lang/String;

    move-result-object v5

    const-string v10, "<title(.*?)>(.*?)</title>"

    const/4 v13, 0x2

    .line 227
    invoke-static {v5, v10, v13}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 232
    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v13, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v13, v5}, Lcom/narvii/util/crawler/TextCrawler;->access$600(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/narvii/util/crawler/SourceContent;->setTitle(Ljava/lang/String;)V

    .line 235
    :cond_f
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v5}, Lcom/narvii/util/crawler/SourceContent;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 236
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    iget-object v13, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 238
    invoke-virtual {v13}, Lcom/narvii/util/crawler/SourceContent;->getHtmlCode()Ljava/lang/String;

    move-result-object v13

    .line 237
    invoke-static {v10, v13}, Lcom/narvii/util/crawler/TextCrawler;->access$700(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setDescription(Ljava/lang/String;)V

    .line 240
    :cond_10
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 241
    invoke-virtual {v10}, Lcom/narvii/util/crawler/SourceContent;->getDescription()Ljava/lang/String;

    move-result-object v10

    const-string v13, "<script(.*?)>(.*?)</script>"

    invoke-virtual {v10, v13, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 240
    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setDescription(Ljava/lang/String;)V

    const-string v5, "channelId"

    .line 243
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 244
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v5, 0x1

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    .line 245
    :goto_b
    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v10}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v10}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v10

    const-string v13, "/playlist"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    goto :goto_c

    :cond_12
    const/4 v10, 0x0

    .line 246
    :goto_c
    iget v13, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->imageQuantity:I

    const/4 v14, -0x2

    if-eq v13, v14, :cond_19

    .line 247
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    if-eqz v9, :cond_14

    if-nez v5, :cond_14

    if-nez v10, :cond_14

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 250
    iget-object v3, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v3}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 252
    :cond_13
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v6}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v2}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 257
    :cond_14
    iget-object v3, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v3}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v3

    .line 258
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_15
    if-nez v3, :cond_16

    .line 262
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    iget v3, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->imageQuantity:I

    invoke-virtual {v2, v7, v3}, Lcom/narvii/util/crawler/TextCrawler;->getImages(Lorg/jsoup/nodes/Document;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/crawler/SourceContent;->setImages(Ljava/util/List;)V

    .line 265
    :cond_16
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_19

    :cond_17
    if-eqz v9, :cond_19

    .line 267
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v6}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    if-eqz v2, :cond_18

    .line 270
    :try_start_c
    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v2}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 272
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    move-object v0, v2

    .line 278
    :catch_4
    :cond_18
    :try_start_d
    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v2}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_19
    :goto_d
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0, v6}, Lcom/narvii/util/crawler/SourceContent;->setSuccess(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_e

    .line 286
    :catch_5
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/narvii/util/crawler/SourceContent;->setSuccess(Z)V

    goto :goto_f

    :cond_1a
    :goto_e
    const/4 v2, 0x0

    .line 291
    :goto_f
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v3, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lcom/narvii/util/crawler/SourceContent;->setUrl(Ljava/lang/String;)V

    .line 294
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 295
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-static {v2, v3}, Lcom/narvii/util/crawler/TextCrawler;->access$800(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/crawler/SourceContent;->setCannonicalUrl(Ljava/lang/String;)V

    .line 296
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 297
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-static {v2, v3}, Lcom/narvii/util/crawler/TextCrawler;->access$900(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/crawler/SourceContent;->setDescription(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public isNull()Z
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 307
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getHtmlCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    iget-object v1, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 308
    invoke-virtual {v1}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/crawler/TextCrawler;->access$300(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/util/crawler/TextCrawler$GetCode;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->access$100(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->access$100(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 95
    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->access$100(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->access$100(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->access$000(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/util/crawler/LinkPreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->access$000(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/util/crawler/LinkPreviewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {p0}, Lcom/narvii/util/crawler/TextCrawler$GetCode;->isNull()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/util/crawler/LinkPreviewCallback;->onPos(Lcom/narvii/util/crawler/SourceContent;Z)V

    .line 101
    :cond_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->access$000(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/util/crawler/LinkPreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->access$000(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/util/crawler/LinkPreviewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/util/crawler/LinkPreviewCallback;->onPre()V

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
