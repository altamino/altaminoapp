.class Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Lcom/narvii/chat/input/ChatInputRightViewContainer$OnClickRightView;
.implements Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatInputFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SideMenuEventDealer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1736
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/chat/input/ChatInputFragment$1;)V
    .locals 0

    .line 1736
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    return-void
.end method

.method private openWaitingListInn()V
    .locals 2

    .line 1838
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1839
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$3200(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->show(Lcom/narvii/model/ChatThread;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkChannelUserLimit()Z
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2200(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkChannelUserLimit()Z

    move-result v0

    return v0
.end method

.method public doEndChat()V
    .locals 5

    .line 1847
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1851
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->access$3000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v1

    .line 1852
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v2}, Lcom/narvii/chat/input/ChatInputFragment;->access$3300(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/video/utils/VVChatHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v3}, Lcom/narvii/chat/input/ChatInputFragment;->access$2800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v3

    iget v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    new-instance v4, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer$1;

    invoke-direct {v4, p0}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer$1;-><init>(Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;->quitAsPresenter(ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public doJoin()V
    .locals 2

    .line 1766
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2200(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->access$2800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public doRequestToSpeak()V
    .locals 2

    const-string v0, "GOVNO"

    const-string v1, "HUITA VIZVANA"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2900(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 1772
    invoke-static {v0}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserSpeaker(Lcom/narvii/app/NVContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2200(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->access$2800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public doSettings()V
    .locals 4

    .line 1864
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1871
    :cond_1
    const-class v1, Lcom/narvii/chat/setting/LivePermissionFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 1872
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1873
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    move-result v2

    const-string/jumbo v3, "vvChatJoinType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1874
    iget v0, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    const-string v2, "ndcId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1875
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isMenuIconShown()Z
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->getMenuTypeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1827
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$openWaitingList$0$ChatInputFragment$SideMenuEventDealer(Ljava/lang/Boolean;)V
    .locals 0

    .line 1832
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->openWaitingListInn()V

    return-void
.end method

.method public openWaitingList()V
    .locals 3

    .line 1832
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2200(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->access$2800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    new-instance v2, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$SideMenuEventDealer$9BAYLemthjivmi8CJHO8TDTiL4U;

    invoke-direct {v2, p0}, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$SideMenuEventDealer$9BAYLemthjivmi8CJHO8TDTiL4U;-><init>(Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkCommunityAvailability(ILcom/narvii/util/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->openWaitingListInn()V

    :cond_0
    return-void
.end method

.method public toggleMenu()V
    .locals 3

    .line 1740
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V

    .line 1741
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2500(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 1743
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->hide()V

    .line 1745
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    goto :goto_0

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputRightViewContainer;

    move-result-object v0

    const v2, 0x7f090708

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1748
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v2}, Lcom/narvii/chat/input/ChatInputFragment;->access$1100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->bindToggleView(Landroid/view/View;)V

    .line 1750
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1751
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v2}, Lcom/narvii/chat/input/ChatInputFragment;->access$2700(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v2}, Lcom/narvii/chat/input/ChatInputFragment;->access$2700(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->access$2700(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1753
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->show()V

    .line 1754
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    :goto_0
    return-void
.end method

.method public toggleMute(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1789
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$3000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->toggleLocalVideo()V

    goto/16 :goto_0

    .line 1790
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$2800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$2800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 1791
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$3000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 1792
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$3000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 1793
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$3000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget-boolean p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz p1, :cond_2

    .line 1794
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    const-string v1, "screenRoom"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 1795
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1796
    iget-boolean v2, p1, Lcom/narvii/chat/screenroom/ScreenRoomService;->isEchoHintShowed:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1797
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f03cc

    .line 1798
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v2, 0x7f0f073e

    const/4 v3, 0x0

    .line 1799
    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1800
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 1801
    iput-boolean v0, p1, Lcom/narvii/chat/screenroom/ScreenRoomService;->isEchoHintShowed:Z

    return-void

    .line 1804
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->toggleHostMic()V

    .line 1805
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$3000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->changeLocalVoiceMuteStatus(Z)V

    goto :goto_0

    .line 1807
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$3100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$3100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 1810
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$3100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->switchMusicPlayStatus()V

    .line 1811
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$3000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->toggleSpeaker()V

    goto :goto_0

    .line 1813
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$3000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->toggleLocalVoice()V

    .line 1816
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$800(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    return-void
.end method

.method public toggleSpeaker()V
    .locals 2

    .line 1880
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$3100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$3100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$3100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->switchSpeaker()V

    goto :goto_0

    .line 1883
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$3000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->toggleSpeaker()V

    :goto_0
    return-void
.end method
