.class Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;
.super Ljava/lang/Thread;
.source "TextureMovieEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;


# direct methods
.method private constructor <init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$1;)V
    .locals 0

    .line 615
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;-><init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/16 v0, -0x13

    .line 621
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 627
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1000(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 628
    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1100(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_0

    .line 630
    :try_start_1
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1000(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    .line 634
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 635
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1102(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)Z

    const/16 v0, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0xac44

    .line 638
    :try_start_3
    invoke-static {v4, v0, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const v4, 0xc000

    const/16 v5, 0x800

    if-ge v4, v0, :cond_1

    .line 643
    div-int/2addr v0, v5

    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x800

    mul-int/lit8 v4, v0, 0x2

    .line 646
    :cond_1
    invoke-static {}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1200()[I

    move-result-object v0

    array-length v2, v0

    const/4 v12, 0x0

    move-object v6, v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v2, :cond_4

    aget v7, v0, v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 648
    :try_start_4
    new-instance v14, Landroid/media/AudioRecord;

    const/16 v9, 0x10

    const/4 v10, 0x2

    const v8, 0xac44

    move-object v6, v14

    move v11, v4

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 652
    invoke-virtual {v14}, Landroid/media/AudioRecord;->getState()I

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eq v6, v3, :cond_2

    move-object v14, v12

    :cond_2
    move-object v6, v14

    goto :goto_2

    :catch_1
    move-object v6, v12

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v6, :cond_7

    .line 665
    :try_start_5
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 667
    invoke-virtual {v6}, Landroid/media/AudioRecord;->startRecording()V

    .line 668
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v2, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1302(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 670
    :cond_5
    :goto_4
    :try_start_6
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1400(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 672
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 673
    invoke-virtual {v6, v0, v5}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v2

    if-lez v2, :cond_5

    .line 676
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 677
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 678
    iget-object v4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v4}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1500(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    move-result-object v4

    iget-object v7, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-virtual {v7}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->getPTSUs()J

    move-result-wide v7

    invoke-virtual {v4, v0, v2, v7, v8}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 679
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1500(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->drainEncoder()V

    goto :goto_4

    .line 682
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1500(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-virtual {v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->getPTSUs()J

    move-result-wide v4

    invoke-virtual {v0, v12, v1, v4, v5}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->encode(Ljava/nio/ByteBuffer;IJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 684
    :try_start_7
    invoke-virtual {v6}, Landroid/media/AudioRecord;->stop()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 687
    :try_start_8
    invoke-virtual {v6}, Landroid/media/AudioRecord;->release()V

    .line 688
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1500(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 684
    :try_start_9
    invoke-virtual {v6}, Landroid/media/AudioRecord;->stop()V

    .line 685
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    .line 687
    :try_start_a
    invoke-virtual {v6}, Landroid/media/AudioRecord;->release()V

    .line 688
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1500(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->release()V

    .line 689
    throw v0

    :cond_7
    const-string v0, "TextureMovieEncoder"

    const-string v1, "failed to initialize AudioRecord"

    .line 691
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v1, "TextureMovieEncoder"

    const-string v2, "AudioThread#run"

    .line 694
    invoke-static {v1, v2, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 700
    :goto_5
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1600(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 701
    :try_start_b
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v0, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1702(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)Z

    .line 702
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->access$1600(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 703
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 634
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method
