.class Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;
.super Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerStartState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 2

    .line 452
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    .line 454
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 455
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1100(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 456
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 458
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 462
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monitor start: default routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1700(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", current routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1700(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioRoute"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(II)V
    .locals 8

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartState: onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2600(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1b

    const-string v4, " mIsBTHeadsetPlugged "

    const-string v5, "BT HEADSET EVENT  "

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p1, v7, :cond_12

    if-eq p1, v6, :cond_e

    const/16 v6, 0xb

    if-eq p1, v6, :cond_c

    const/16 v6, 0x10

    if-eq p1, v6, :cond_a

    const/16 v6, 0x15

    if-eq p1, v6, :cond_9

    const/16 v6, 0x16

    if-eq p1, v6, :cond_6

    const/16 v6, 0x70

    if-eq p1, v6, :cond_3

    const/16 v1, 0x71

    if-eq p1, v1, :cond_0

    .line 622
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->onEvent(II)V

    goto/16 :goto_1

    .line 609
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1900(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 612
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$2502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 613
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1902(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 614
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 615
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 616
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    goto/16 :goto_1

    .line 618
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    goto/16 :goto_1

    .line 593
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1900(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-ne p1, v3, :cond_4

    goto/16 :goto_1

    .line 596
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$1902(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$2502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 599
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 600
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3600(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 601
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$2102(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 602
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$3200(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    goto/16 :goto_1

    .line 604
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2102(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 605
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    goto/16 :goto_1

    .line 580
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phone state changed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p2, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    if-nez p2, :cond_8

    .line 587
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    goto/16 :goto_1

    .line 589
    :cond_8
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2402(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_1

    .line 529
    :cond_9
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1502(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 530
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 531
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p2

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3300(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_1

    .line 517
    :cond_a
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2600(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;

    move-result-object p1

    if-nez p2, :cond_b

    .line 519
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 520
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    goto/16 :goto_1

    .line 523
    :cond_b
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 524
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3200(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    goto/16 :goto_1

    .line 508
    :cond_c
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1100(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-ne p1, v3, :cond_d

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto/16 :goto_1

    .line 511
    :cond_d
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 512
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 513
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    goto/16 :goto_1

    .line 570
    :cond_e
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ne p2, v3, :cond_f

    const/4 v7, 0x1

    :cond_f
    invoke-static {p1, v7}, Lio/agora/rtc/internal/AudioRoutingController;->access$3402(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 571
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    .line 574
    :cond_10
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ne p2, v3, :cond_11

    const/4 v2, 0x1

    :cond_11
    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3500(Lio/agora/rtc/internal/AudioRoutingController;Z)V

    if-nez p2, :cond_1f

    .line 576
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    goto/16 :goto_1

    :cond_12
    if-nez p2, :cond_13

    .line 535
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 538
    :cond_13
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 539
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ne p2, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_0

    :cond_14
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 540
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_15

    return-void

    .line 543
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 545
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3000(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_1

    .line 552
    :cond_16
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2300(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-ne p1, v3, :cond_17

    .line 553
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v6}, Lio/agora/rtc/internal/AudioRoutingController;->access$3000(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_1

    .line 554
    :cond_17
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2300(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-nez p1, :cond_19

    .line 555
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 556
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3000(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_1

    .line 558
    :cond_18
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$3000(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_1

    .line 561
    :cond_19
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 562
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3000(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_1

    .line 564
    :cond_1a
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p2

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3000(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_1

    .line 491
    :cond_1b
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$902(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 492
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ltz p2, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1002(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 493
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1

    .line 496
    :cond_1d
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-eq p1, p2, :cond_1e

    .line 498
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3000(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_1

    .line 504
    :cond_1e
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    :cond_1f
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 3

    .line 469
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 470
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1100(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 476
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monitor reset: default routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1700(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", current routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1700(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
