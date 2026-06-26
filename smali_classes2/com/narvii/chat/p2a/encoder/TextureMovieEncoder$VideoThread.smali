.class Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;
.super Ljava/lang/Thread;
.source "TextureMovieEncoder.java"


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

    .line 322
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 323
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 335
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 336
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$100(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    new-instance v2, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-direct {v2, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;-><init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)V

    invoke-static {v1, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$202(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;)Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 338
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$302(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)Z

    .line 339
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$100(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 340
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 341
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "TextureMovieEncoder"

    const-string v1, "Encoder thread exiting"

    .line 343
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$100(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 345
    :try_start_1
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$402(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$302(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)Z

    .line 346
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$202(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;)Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 347
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 340
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
