.class public Lcom/narvii/video/EmbedHttpServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/EmbedHttpServer$Worker;,
        Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;,
        Lcom/narvii/video/EmbedHttpServer$BodyInputStream;
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

    .line 3
    invoke-direct {p0, v0}, Lcom/narvii/video/EmbedHttpServer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->latestSocket:Ljava/util/concurrent/atomic/AtomicReference;

    iput p1, p0, Lcom/narvii/video/EmbedHttpServer;->port:I

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/video/EmbedHttpServer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/video/EmbedHttpServer;->latestSocket:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer;->port:I

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 14
    move-result v0

    .line 15
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public run()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 3
    .line 4
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x2

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    .line 14
    .line 15
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 16
    move-object v1, v8

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 20
    .line 21
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 22
    .line 23
    if-ne v0, v1, :cond_3

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer;->latestSocket:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Ljava/net/Socket;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/video/EmbedHttpServer;->latestSocket:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41
    .line 42
    new-instance v3, Lcom/narvii/video/EmbedHttpServer$Worker;

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, p0, v1}, Lcom/narvii/video/EmbedHttpServer$Worker;-><init>(Lcom/narvii/video/EmbedHttpServer;Ljava/net/Socket;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :catch_0
    :cond_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    :cond_2
    const/4 v1, 0x0

    .line 67
    .line 68
    iput-object v1, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_3
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 72
    .line 73
    const-wide/16 v1, 0x3a98

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v1, v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/EmbedHttpServer;->isStarted()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/net/ServerSocket;

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/video/EmbedHttpServer;->port:I

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/Thread;

    .line 18
    .line 19
    const-string v1, "embed-http-server"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/video/EmbedHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 11
    :cond_0
    return-void
.end method
