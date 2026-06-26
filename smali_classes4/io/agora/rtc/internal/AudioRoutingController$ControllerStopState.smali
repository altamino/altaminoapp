.class Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;
.super Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerStopState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 2

    .line 393
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    .line 394
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 395
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 396
    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2102(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 397
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)V

    :cond_0
    const/4 v0, -0x1

    .line 399
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 400
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2402(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 401
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 402
    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    const-string p1, "AudioRoute"

    const-string v0, "Monitor stopped"

    .line 403
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onEvent(II)V
    .locals 3

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StopState: onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2600(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;

    move-result-object v0

    const/16 v2, 0xb

    if-eq p1, v2, :cond_0

    .line 442
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->onEvent(II)V

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 434
    :goto_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 436
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ne p2, p1, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    invoke-static {v0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2402(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 437
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 438
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2700(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p2

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2800(Lio/agora/rtc/internal/AudioRoutingController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "onEvent: Exception "

    .line 445
    invoke-static {v1, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public reset()V
    .locals 4

    const-string v0, "AudioRoute"

    const-string v1, "Monitor stop state, reset"

    .line 413
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 415
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 416
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2600(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    :cond_0
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2102(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 418
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 420
    :cond_1
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 421
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$2402(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 422
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 423
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    const-string v1, "Monitor stopped"

    .line 424
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
