.class Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->b(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 13
    .line 14
    new-instance v2, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;-><init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->g(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->h(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->b(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 42
    .line 43
    const-string v0, "TextureMovieEncoder"

    .line 44
    .line 45
    const-string v1, "Encoder thread exiting"

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->b(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    monitor-enter v1

    .line 56
    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->j(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->h(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 67
    const/4 v2, 0x0

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->g(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;)V

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw v0

    .line 76
    :catchall_1
    move-exception v1

    .line 77
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    throw v1
.end method
