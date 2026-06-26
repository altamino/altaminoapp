.class final Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;
.super Landroid/os/Handler;
.source "WorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/model/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerThreadHandler"
.end annotation


# instance fields
.field private mWorkerThread:Lcom/narvii/video/model/WorkerThread;


# direct methods
.method constructor <init>(Lcom/narvii/video/model/WorkerThread;)V
    .locals 0

    .line 355
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;->mWorkerThread:Lcom/narvii/video/model/WorkerThread;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;->mWorkerThread:Lcom/narvii/video/model/WorkerThread;

    if-nez v0, :cond_0

    .line 366
    invoke-static {}, Lcom/narvii/video/model/WorkerThread;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler is already released! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 370
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1010

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 408
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 409
    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/video/model/WorkerThread;->changeRole(I)V

    goto/16 :goto_0

    .line 403
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 404
    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/video/model/WorkerThread;->configAudioManger(Z)V

    goto/16 :goto_0

    .line 399
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 400
    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/model/WorkerThread;->changeVideoProfile(IZ)V

    goto/16 :goto_0

    .line 389
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 390
    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aget-object v3, p1, v3

    check-cast v3, Landroid/view/SurfaceView;

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v3, p1}, Lcom/narvii/video/model/WorkerThread;->preview(ZLandroid/view/SurfaceView;I)V

    goto/16 :goto_0

    .line 394
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 395
    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v3, p1}, Lcom/narvii/video/model/WorkerThread;->configAudioSource(ZII)V

    goto :goto_0

    .line 385
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 386
    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v2, 0x3

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v2, 0x4

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/model/WorkerThread;->configEngine(IIZZZ)V

    goto :goto_0

    .line 379
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 380
    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    .line 381
    aget-object p1, p1, v3

    check-cast p1, Lcom/narvii/video/model/ChannelActionCallback;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/model/WorkerThread;->leaveChannel(Ljava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    goto :goto_0

    .line 375
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 376
    aget-object v2, v1, v4

    aget-object v1, v1, v3

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1, p1}, Lcom/narvii/video/model/WorkerThread;->joinChannel(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->exit()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2010
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;->mWorkerThread:Lcom/narvii/video/model/WorkerThread;

    return-void
.end method
