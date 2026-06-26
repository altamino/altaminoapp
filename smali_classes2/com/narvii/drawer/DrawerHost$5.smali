.class Lcom/narvii/drawer/DrawerHost$5;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 594
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 639
    :sswitch_0
    const-class p1, Lcom/narvii/search/SearchKeywordTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 640
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 597
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, p1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_3

    .line 599
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$100(Lcom/narvii/drawer/DrawerHost;)V

    .line 600
    new-instance p1, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;-><init>(Landroid/content/Context;)V

    .line 601
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 602
    invoke-virtual {p1}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    if-eq v1, v2, :cond_0

    .line 603
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 604
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 609
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getPendingFloatingThreadId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 610
    iget-object p1, v0, Lcom/narvii/chat/rtc/RtcService;->topActivity:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 611
    :goto_0
    instance-of v0, p1, Lcom/narvii/chat/ChatActivity;

    if-eqz v0, :cond_2

    .line 612
    check-cast p1, Lcom/narvii/chat/ChatActivity;

    .line 613
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    invoke-virtual {p1}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/ChatFragment;

    if-eqz p1, :cond_2

    .line 616
    invoke-virtual {p1}, Lcom/narvii/chat/ChatFragment;->tryShowLiveChannelFloating()V

    .line 622
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/master/MasterActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "exitCommunity"

    .line 623
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 624
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/master/MasterActivity;->backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 625
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v1, 0x7f010026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/drawer/DrawerHost;->overrideEnterAnim:Ljava/lang/Integer;

    .line 626
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v1, 0x7f010027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/drawer/DrawerHost;->overrideExitAnim:Ljava/lang/Integer;

    .line 627
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 646
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 647
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "showJoin"

    .line 648
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 649
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "Left Side Panel"

    .line 650
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a1 -> :sswitch_2
        0x7f0902d3 -> :sswitch_1
        0x7f090396 -> :sswitch_2
        0x7f09039b -> :sswitch_1
        0x7f0903a3 -> :sswitch_0
        0x7f0903ad -> :sswitch_2
    .end sparse-switch
.end method
