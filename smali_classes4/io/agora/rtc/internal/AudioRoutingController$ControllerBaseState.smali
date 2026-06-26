.class abstract Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;
.super Ljava/lang/Object;
.source "AudioRoutingController.java"

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

    .line 329
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    .line 329
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    const/16 v2, 0x70

    if-eq p1, v2, :cond_4

    const/16 v2, 0x71

    if-eq p1, v2, :cond_5

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 379
    :pswitch_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto/16 :goto_0

    .line 372
    :pswitch_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1502(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_0

    .line 357
    :pswitch_2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_0

    .line 363
    :pswitch_3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto :goto_0

    .line 369
    :pswitch_4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1402(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto :goto_0

    .line 366
    :pswitch_5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto :goto_0

    .line 382
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1902(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 384
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1902(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto :goto_0

    .line 375
    :cond_6
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User set default routing to:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    invoke-static {p2, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1700(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_7
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ne p2, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto :goto_0

    .line 353
    :cond_9
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$902(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 354
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ltz p2, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1002(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 341
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method

.method public setState(I)V
    .locals 1

    .line 332
    invoke-virtual {p0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->getState()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string p1, "AudioRoute"

    const-string v0, "setState: state not changed!"

    .line 333
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$502(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$ControllerState;)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    return-void
.end method
