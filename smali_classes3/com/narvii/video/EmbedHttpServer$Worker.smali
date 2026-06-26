.class Lcom/narvii/video/EmbedHttpServer$Worker;
.super Ljava/lang/Object;
.source "EmbedHttpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/EmbedHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final conn:Ljava/net/Socket;

.field final synthetic this$0:Lcom/narvii/video/EmbedHttpServer;


# direct methods
.method public constructor <init>(Lcom/narvii/video/EmbedHttpServer;Ljava/net/Socket;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->this$0:Lcom/narvii/video/EmbedHttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    .line 105
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    move-object v5, v3

    .line 110
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_4

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_0

    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 115
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    const-string v3, " "

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 120
    invoke-virtual {v2, v8, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, " HTTP/"

    .line 121
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    .line 122
    invoke-virtual {v2, v3, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v9, v5

    move-object v5, v3

    move-object v3, v9

    goto :goto_1

    :cond_2
    const-string v6, ":"

    .line 124
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 125
    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 126
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_3
    int-to-char v6, v6

    .line 131
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    :goto_2
    const-string v2, "Content-Length"

    .line 135
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 139
    :cond_5
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v6, "Expect"

    .line 140
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "100-Continue"

    .line 141
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "HTTP/1.1 100 Continue\r\n\r\n"

    const-string v7, "ASCII"

    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 143
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 145
    :cond_6
    new-instance v6, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;

    invoke-direct {v6, v1, v8}, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 146
    new-instance v7, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;

    invoke-direct {v7, v2}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 147
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->this$0:Lcom/narvii/video/EmbedHttpServer;

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/EmbedHttpServer;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/io/InputStream;Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;)V

    .line 148
    invoke-virtual {v7}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    if-eqz v1, :cond_8

    goto :goto_3

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    if-eqz v2, :cond_7

    .line 153
    :try_start_1
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :catch_0
    :cond_7
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->this$0:Lcom/narvii/video/EmbedHttpServer;

    invoke-static {v2}, Lcom/narvii/video/EmbedHttpServer;->access$000(Lcom/narvii/video/EmbedHttpServer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    throw v1

    :catch_1
    nop

    .line 151
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    if-eqz v1, :cond_8

    .line 153
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    :catch_2
    :cond_8
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->this$0:Lcom/narvii/video/EmbedHttpServer;

    invoke-static {v1}, Lcom/narvii/video/EmbedHttpServer;->access$000(Lcom/narvii/video/EmbedHttpServer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
