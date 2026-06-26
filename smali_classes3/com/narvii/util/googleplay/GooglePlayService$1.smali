.class Lcom/narvii/util/googleplay/GooglePlayService$1;
.super Ljava/lang/Thread;
.source "GooglePlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/googleplay/GooglePlayService;->update(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/googleplay/GooglePlayService;

.field final synthetic val$pn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/util/googleplay/GooglePlayService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService$1;->this$0:Lcom/narvii/util/googleplay/GooglePlayService;

    iput-object p3, p0, Lcom/narvii/util/googleplay/GooglePlayService$1;->val$pn:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x0

    .line 53
    :try_start_0
    new-instance v1, Lcom/narvii/util/http/ProxyStack;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 54
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/util/googleplay/GooglePlayService$1;->val$pn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36"

    .line 55
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept"

    const-string v3, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8"

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    const-string v3, "en-US"

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x1000

    new-array v2, v2, [B

    const-string v3, ">([12]\\.[\\d]{1,2}\\.(?:[\\d]{1,2}\\.)?[\\d]{5})<"

    .line 62
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    add-int/lit16 v6, v5, 0x800

    const/16 v7, 0x800

    rsub-int v8, v5, 0x800

    .line 64
    invoke-virtual {v0, v2, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    move v9, v6

    :goto_0
    add-int/2addr v5, v9

    if-ge v5, v7, :cond_2

    if-ne v6, v8, :cond_5

    .line 68
    :cond_2
    :try_start_1
    new-instance v9, Ljava/lang/String;

    add-int/lit16 v5, v5, 0x800

    invoke-direct {v9, v2, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 69
    invoke-virtual {v3, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 70
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    .line 71
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "google play publish version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 74
    iget-object v9, p0, Lcom/narvii/util/googleplay/GooglePlayService$1;->this$0:Lcom/narvii/util/googleplay/GooglePlayService;

    invoke-virtual {v9}, Lcom/narvii/util/googleplay/GooglePlayService;->getLatestVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_3

    .line 100
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-void

    .line 76
    :cond_3
    :try_start_2
    new-instance v9, Lcom/narvii/util/googleplay/GooglePlayService$1$1;

    invoke-direct {v9, p0, v5}, Lcom/narvii/util/googleplay/GooglePlayService$1$1;-><init>(Lcom/narvii/util/googleplay/GooglePlayService$1;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 89
    :catch_0
    :cond_4
    :try_start_3
    invoke-static {v2, v7, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :cond_5
    if-ne v6, v8, :cond_0

    .line 96
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "fail to fetch google play page"

    .line 98
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    :goto_2
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-void

    :goto_3
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 101
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
