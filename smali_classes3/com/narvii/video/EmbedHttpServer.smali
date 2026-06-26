.class public Lcom/narvii/video/EmbedHttpServer;
.super Ljava/lang/Object;
.source "EmbedHttpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;,
        Lcom/narvii/video/EmbedHttpServer$BodyInputStream;,
        Lcom/narvii/video/EmbedHttpServer$Worker;
    }
.end annotation


# instance fields
.field private final latestSocket:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/narvii/video/EmbedHttpServer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->latestSocket:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    iput p1, p0, Lcom/narvii/video/EmbedHttpServer;->port:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/EmbedHttpServer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/narvii/video/EmbedHttpServer;->latestSocket:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer;->port:I

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    :cond_1
    return v0
.end method

.method protected handle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/io/InputStream;Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public isStarted()Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 9

    .line 65
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 66
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 67
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-ne v0, v1, :cond_3

    .line 69
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer;->latestSocket:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    .line 71
    iget-object v3, p0, Lcom/narvii/video/EmbedHttpServer;->latestSocket:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 72
    new-instance v3, Lcom/narvii/video/EmbedHttpServer$Worker;

    invoke-direct {v3, p0, v1}, Lcom/narvii/video/EmbedHttpServer$Worker;-><init>(Lcom/narvii/video/EmbedHttpServer;Ljava/net/Socket;)V

    invoke-virtual {v8, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 82
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3a98

    .line 88
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/narvii/video/EmbedHttpServer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/narvii/video/EmbedHttpServer;->port:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 30
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "embed-http-server"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    :cond_0
    return-void
.end method
