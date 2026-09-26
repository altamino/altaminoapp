.class Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;
.super Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;
.source "SourceFile"


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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1900(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 23
    :cond_0
    const/4 v0, -0x1

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2002(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 36
    .line 37
    const-string p1, "AudioRoute"

    .line 38
    .line 39
    const-string v0, "Monitor stopped"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "info"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "StopState: onEvent: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, ", info: "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "AudioRoute"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const/16 v2, 0xb

    .line 39
    .line 40
    if-eq p1, v2, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->onEvent(II)V

    .line 44
    goto :goto_3

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    const/4 p1, 0x1

    .line 48
    .line 49
    if-ne p2, p1, :cond_1

    .line 50
    move v2, p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v2, 0x0

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 56
    .line 57
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 58
    .line 59
    if-ne p2, p1, :cond_2

    .line 60
    const/4 p1, 0x3

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 p1, -0x1

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-static {v0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 66
    .line 67
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2002(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 71
    .line 72
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2500(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 76
    move-result p2

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2600(Lio/agora/rtc/internal/AudioRoutingController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :goto_2
    const-string p2, "onEvent: Exception "

    .line 83
    .line 84
    .line 85
    invoke-static {v1, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :goto_3
    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "Monitor stop state, reset"

    .line 3
    .line 4
    const-string v1, "AudioRoute"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 14
    .line 15
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 19
    .line 20
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 44
    .line 45
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1900(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 51
    const/4 v3, -0x1

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$2002(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 55
    .line 56
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$2102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 60
    .line 61
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 65
    .line 66
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 70
    .line 71
    const-string v0, "Monitor stopped"

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
