.class public Lcom/narvii/util/crawler/TextCrawler$GetCode;
.super Landroid/os/AsyncTask;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/util/crawler/SourceContent;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/narvii/util/crawler/SourceContent;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 13
    .line 14
    iput p2, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->imageQuantity:I

    .line 15
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
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

    .line 2
    aget-object v0, p1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 3
    invoke-virtual {v0, v3}, Lcom/narvii/util/crawler/SourceContent;->setSuccess(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v4, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 4
    aget-object v5, p1, v3

    invoke-static {v5}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/crawler/TextCrawler;->j(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/narvii/util/crawler/SourceContent;->setFinalUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    iget-object v6, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 6
    invoke-virtual {v6}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/narvii/util/crawler/TextCrawler;->h(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v7, "dropbox"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 8
    invoke-virtual {v0, v6}, Lcom/narvii/util/crawler/SourceContent;->setSuccess(Z)V

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 9
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v2}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 10
    invoke-virtual {v0, v4}, Lcom/narvii/util/crawler/SourceContent;->setTitle(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 11
    invoke-virtual {v0, v4}, Lcom/narvii/util/crawler/SourceContent;->setDescription(Ljava/lang/String;)V

    :cond_1
    move v2, v3

    goto/16 :goto_c

    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 12
    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->b(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14
    new-instance v7, Lcom/narvii/util/PackageUtils;

    iget-object v8, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v8}, Lcom/narvii/util/crawler/TextCrawler;->b(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v8

    invoke-interface {v8}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 16
    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->b(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v7, "account"

    invoke-interface {v0, v7}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 18
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "sid"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_3
    move-object v0, v5

    :goto_1
    :try_start_2
    iget-object v7, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 19
    invoke-virtual {v7}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v7

    const-string v8, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36"

    .line 20
    invoke-interface {v7, v8}, Lorg/jsoup/Connection;->userAgent(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v7

    iget-object v8, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 21
    invoke-virtual {v8}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    iget-object v9, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 22
    invoke-static {v9}, Lcom/narvii/util/crawler/TextCrawler;->b(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 23
    new-instance v9, Lcom/narvii/util/PackageUtils;

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v10}, Lcom/narvii/util/crawler/TextCrawler;->b(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v10

    invoke-interface {v10}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v8, :cond_4

    if-eqz v0, :cond_4

    :try_start_4
    const-string v8, "NDCAUTH"

    .line 25
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Lorg/jsoup/Connection;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 26
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "pebkit_secret"

    const-string v8, "charmander_hitokage"

    .line 27
    invoke-interface {v7, v0, v8}, Lorg/jsoup/Connection;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 28
    :catch_1
    :cond_4
    invoke-interface {v7}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v7

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 29
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/narvii/util/crawler/SourceContent;->setHtmlCode(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 30
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "youtube.com"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const-string/jumbo v8, "youtu.be"

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

    goto :goto_2

    :cond_5
    move v9, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v9, v6

    :goto_3
    const-string/jumbo v10, "title"

    const-string/jumbo v11, "watch?.*v=(.*)"

    const-string/jumbo v12, "ytv://"

    if-eqz v9, :cond_b

    :try_start_6
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 31
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 33
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v6}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    move-object v13, v0

    .line 34
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 35
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 36
    :try_start_7
    new-instance v0, Ljava/net/URL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&format=json"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    move-object v3, v0

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 38
    :try_start_8
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 39
    invoke-static {v3}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v15, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    :goto_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 42
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_9

    .line 43
    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v3, 0x0

    .line 44
    :goto_6
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_9

    goto :goto_5

    .line 45
    :cond_9
    :goto_7
    :try_start_b
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 46
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 47
    invoke-virtual {v0, v10}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 48
    invoke-virtual {v2, v0}, Lcom/narvii/util/crawler/SourceContent;->setTitle(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    const-string v2, "Youtube"

    .line 49
    invoke-virtual {v0, v2}, Lcom/narvii/util/crawler/SourceContent;->setSiteName(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 50
    invoke-static {v2, v0}, Lcom/narvii/util/crawler/TextCrawler;->e(Lcom/narvii/util/crawler/TextCrawler;Lcom/narvii/util/crawler/SourceContent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/crawler/SourceContent;->setFavicon(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 51
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 52
    invoke-virtual {v0, v6}, Lcom/narvii/util/crawler/SourceContent;->setSuccess(Z)V

    const/4 v2, 0x0

    return-object v2

    :goto_8
    if-eqz v3, :cond_a

    .line 53
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 54
    :cond_a
    throw v0

    :cond_b
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 55
    invoke-static {v0, v7, v9}, Lcom/narvii/util/crawler/TextCrawler;->f(Lcom/narvii/util/crawler/TextCrawler;Lorg/jsoup/nodes/Document;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    move v3, v6

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    :goto_9
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 58
    invoke-virtual {v5, v0}, Lcom/narvii/util/crawler/SourceContent;->setMetaTags(Ljava/util/HashMap;)V

    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 59
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setTitle(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    const-string v10, "description"

    .line 60
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 61
    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setDescription(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    const-string v10, "sitename"

    .line 62
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setSiteName(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 63
    invoke-static {v10, v5}, Lcom/narvii/util/crawler/TextCrawler;->e(Lcom/narvii/util/crawler/TextCrawler;Lcom/narvii/util/crawler/SourceContent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setFavicon(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 64
    invoke-virtual {v5}, Lcom/narvii/util/crawler/SourceContent;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 65
    invoke-virtual {v5}, Lcom/narvii/util/crawler/SourceContent;->getHtmlCode()Ljava/lang/String;

    move-result-object v5

    const-string v10, "<title(.*?)>(.*?)</title>"

    const/4 v13, 0x2

    .line 66
    invoke-static {v5, v10, v13}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v13, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 68
    invoke-static {v13, v5}, Lcom/narvii/util/crawler/TextCrawler;->g(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/narvii/util/crawler/SourceContent;->setTitle(Ljava/lang/String;)V

    :cond_e
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 69
    invoke-virtual {v5}, Lcom/narvii/util/crawler/SourceContent;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 70
    invoke-virtual {v5}, Lcom/narvii/util/crawler/SourceContent;->getHtmlCode()Ljava/lang/String;

    move-result-object v13

    .line 71
    invoke-static {v10, v13}, Lcom/narvii/util/crawler/TextCrawler;->d(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setDescription(Ljava/lang/String;)V

    :cond_f
    iget-object v5, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 72
    invoke-virtual {v5}, Lcom/narvii/util/crawler/SourceContent;->getDescription()Ljava/lang/String;

    move-result-object v10

    const-string v13, "<script(.*?)>(.*?)</script>"

    invoke-virtual {v10, v13, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    invoke-virtual {v5, v10}, Lcom/narvii/util/crawler/SourceContent;->setDescription(Ljava/lang/String;)V

    const-string v5, "channelId"

    .line 74
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v6

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 76
    invoke-virtual {v10}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v10}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v10

    const-string v13, "/playlist"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    move v10, v6

    goto :goto_a

    :cond_10
    const/4 v10, 0x0

    :goto_a
    iget v13, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->imageQuantity:I

    const/4 v14, -0x2

    if-eq v13, v14, :cond_17

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    if-eqz v9, :cond_12

    if-nez v5, :cond_12

    if-nez v10, :cond_12

    .line 78
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 79
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

    goto/16 :goto_b

    :cond_11
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 80
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v6}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 81
    invoke-virtual {v2}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_12
    iget-object v3, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 82
    invoke-virtual {v3}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v3

    .line 83
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_13
    if-nez v3, :cond_14

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    iget v3, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->imageQuantity:I

    .line 85
    invoke-virtual {v2, v7, v3}, Lcom/narvii/util/crawler/TextCrawler;->getImages(Lorg/jsoup/nodes/Document;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/crawler/SourceContent;->setImages(Ljava/util/List;)V

    :cond_14
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 86
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    if-eqz v9, :cond_17

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 87
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v6}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    if-eqz v2, :cond_16

    :try_start_c
    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 89
    invoke-virtual {v2}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 91
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    move-object v0, v2

    :catch_4
    :cond_16
    :try_start_d
    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 92
    invoke-virtual {v2}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_b
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 93
    invoke-virtual {v0, v6}, Lcom/narvii/util/crawler/SourceContent;->setSuccess(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    const/4 v2, 0x0

    goto :goto_c

    :catch_5
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v2}, Lcom/narvii/util/crawler/SourceContent;->setSuccess(Z)V

    :goto_c
    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 95
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 96
    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lcom/narvii/util/crawler/SourceContent;->setUrl(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 97
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v2, v3}, Lcom/narvii/util/crawler/TextCrawler;->c(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/crawler/SourceContent;->setCannonicalUrl(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    iget-object v2, v1, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 99
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v2, v3}, Lcom/narvii/util/crawler/TextCrawler;->i(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/crawler/SourceContent;->setDescription(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public isNull()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->isSuccess()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/crawler/SourceContent;->getHtmlCode()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/narvii/util/crawler/TextCrawler;->h(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/util/crawler/TextCrawler$GetCode;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 2
    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->b(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->b(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->b(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->b(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 4
    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->a(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/util/crawler/LinkPreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 5
    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->a(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/util/crawler/LinkPreviewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->sourceContent:Lcom/narvii/util/crawler/SourceContent;

    invoke-virtual {p0}, Lcom/narvii/util/crawler/TextCrawler$GetCode;->isNull()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/util/crawler/LinkPreviewCallback;->onPos(Lcom/narvii/util/crawler/SourceContent;Z)V

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->a(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/util/crawler/LinkPreviewCallback;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/util/crawler/TextCrawler$GetCode;->this$0:Lcom/narvii/util/crawler/TextCrawler;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/crawler/TextCrawler;->a(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/util/crawler/LinkPreviewCallback;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/util/crawler/LinkPreviewCallback;->onPre()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 21
    return-void
.end method
