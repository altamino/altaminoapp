.class abstract Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/internal/AudioRoutingController$ControllerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ControllerBaseState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    const/4 v0, 0x0

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
            "event",
            "info"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-eq p1, v1, :cond_a

    .line 5
    const/4 v2, 0x2

    .line 6
    .line 7
    if-eq p1, v2, :cond_8

    .line 8
    .line 9
    const/16 v2, 0x15

    .line 10
    .line 11
    if-eq p1, v2, :cond_7

    .line 12
    .line 13
    const/16 v2, 0x16

    .line 14
    .line 15
    if-eq p1, v2, :cond_5

    .line 16
    .line 17
    const/16 v2, 0x70

    .line 18
    .line 19
    if-eq p1, v2, :cond_3

    .line 20
    .line 21
    const/16 v2, 0x71

    .line 22
    .line 23
    if-eq p1, v2, :cond_4

    .line 24
    .line 25
    .line 26
    packed-switch p1, :pswitch_data_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :pswitch_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 30
    .line 31
    if-lez p2, :cond_0

    .line 32
    move v0, v1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1102(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :pswitch_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 39
    .line 40
    if-lez p2, :cond_1

    .line 41
    move v0, v1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :pswitch_2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 48
    .line 49
    if-lez p2, :cond_2

    .line 50
    move v0, v1

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 60
    .line 61
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 68
    .line 69
    if-lez p2, :cond_6

    .line 70
    move v0, v1

    .line 71
    .line 72
    .line 73
    :cond_6
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_7
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1402(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_8
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 83
    .line 84
    if-ne p2, v1, :cond_9

    .line 85
    move v0, v1

    .line 86
    .line 87
    .line 88
    :cond_9
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_a
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 92
    .line 93
    .line 94
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$902(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 95
    .line 96
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 97
    .line 98
    if-ltz p2, :cond_b

    .line 99
    move v0, v1

    .line 100
    .line 101
    .line 102
    :cond_b
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1002(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 103
    :goto_0
    return-void

    .line 104
    nop

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 6
    return-void
.end method

.method public setState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->getState()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const-string p1, "AudioRoute"

    .line 9
    .line 10
    const-string v0, "setState: state not changed!"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$502(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$ControllerState;)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 24
    return-void
.end method
