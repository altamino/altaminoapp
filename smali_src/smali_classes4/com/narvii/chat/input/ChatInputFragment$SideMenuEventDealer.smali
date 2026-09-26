.class Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;
.super Ljava/lang/Object;
.source "SourceFile"

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

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/chat/input/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;-><init>(Lcom/narvii/chat/input/ChatInputFragment;)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->lambda$openWaitingList$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$openWaitingList$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->openWaitingListInn()V

    .line 4
    return-void
.end method

.method private openWaitingListInn()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->w(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->show(Lcom/narvii/model/ChatThread;)V

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkChannelUserLimit()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->v(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkChannelUserLimit()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public doEndChat()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/narvii/chat/input/ChatInputFragment;->M(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lcom/narvii/chat/input/ChatInputFragment;->G(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    iget v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 34
    .line 35
    new-instance v4, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, p0}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer$1;-><init>(Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;->quitAsPresenter(ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;)V

    .line 42
    return-void
.end method

.method public doJoin()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->v(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->G(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 16
    return-void
.end method

.method public doRequestToSpeak()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->N(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserSpeaker(Lcom/narvii/app/NVContext;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->v(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->G(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public doSettings()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->G(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->G(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    const-class v1, Lcom/narvii/chat/setting/LivePermissionFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "id"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    const-string v2, "vvChatJoinType"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getVvChatJoinType()I

    .line 49
    move-result v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    .line 54
    const-string v2, "ndcId"

    .line 55
    .line 56
    iget v0, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method public isMenuIconShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->t(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->getMenuTypeList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public openWaitingList()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->G(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->v(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->G(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 23
    .line 24
    new-instance v2, Lcom/narvii/chat/input/d;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/narvii/chat/input/d;-><init>(Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkCommunityAvailability(ILcom/narvii/util/Callback;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->openWaitingListInn()V

    .line 37
    :cond_0
    return-void
.end method

.method public toggleMenu()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->T(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->t(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->t(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->hide()V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->u(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0a096a

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->t(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->bindToggleView(Landroid/view/View;)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->t(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->show()V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 72
    const/4 v1, 0x1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    .line 76
    :goto_0
    return-void
.end method

.method public toggleMute(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->u(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->isMuted()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 15
    .line 16
    const-string v1, "statistics"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 23
    .line 24
    const-string v1, "Mute Myself VV Chat"

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/narvii/chat/ChatActivity;->statChannelType(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    const-string v2, "Type"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 51
    .line 52
    const-string v2, "thread"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    const-class v2, Lcom/narvii/model/ChatThread;

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 65
    .line 66
    const-string v2, "Public Chat"

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    const-string v2, "Chat Type"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    const-string v1, "Video"

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_0
    const-string v1, "Voice"

    .line 84
    .line 85
    :goto_0
    const-string v2, "Target"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    const-string v1, "Mute Myself VV Chat Total"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 95
    .line 96
    :cond_1
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->toggleLocalVideo()V

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->G(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 113
    move-result-object p1

    .line 114
    const/4 v0, 0x1

    .line 115
    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 119
    .line 120
    .line 121
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->G(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 125
    const/4 v1, 0x5

    .line 126
    .line 127
    if-ne p1, v1, :cond_4

    .line 128
    .line 129
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 152
    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 166
    .line 167
    iget-boolean p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 168
    .line 169
    if-eqz p1, :cond_4

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 172
    .line 173
    const-string v1, "screenRoom"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    check-cast p1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    const-string v2, "audio"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    check-cast v1, Landroid/media/AudioManager;

    .line 194
    .line 195
    iget-boolean v2, p1, Lcom/narvii/chat/screenroom/ScreenRoomService;->isEchoHintShowed:Z

    .line 196
    .line 197
    if-nez v2, :cond_3

    .line 198
    .line 199
    if-eqz v1, :cond_3

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    .line 203
    move-result v1

    .line 204
    .line 205
    if-nez v1, :cond_3

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    .line 209
    move-result v1

    .line 210
    .line 211
    if-eqz v1, :cond_3

    .line 212
    .line 213
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 214
    .line 215
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 219
    move-result-object v2

    .line 220
    .line 221
    .line 222
    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    const v2, 0x7f120437

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 229
    .line 230
    .line 231
    const v2, 0x7f1207e7

    .line 232
    const/4 v3, 0x0

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 239
    .line 240
    iput-boolean v0, p1, Lcom/narvii/chat/screenroom/ScreenRoomService;->isEchoHintShowed:Z

    .line 241
    return-void

    .line 242
    .line 243
    .line 244
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->toggleHostMic()V

    .line 245
    .line 246
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 247
    .line 248
    .line 249
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 250
    move-result-object v0

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    .line 254
    move-result p1

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->changeLocalVoiceMuteStatus(Z)V

    .line 258
    goto :goto_1

    .line 259
    .line 260
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 261
    .line 262
    .line 263
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->r(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    .line 264
    move-result-object p1

    .line 265
    .line 266
    if-eqz p1, :cond_5

    .line 267
    .line 268
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 269
    .line 270
    .line 271
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->r(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    .line 272
    move-result-object p1

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 276
    move-result p1

    .line 277
    .line 278
    if-ne p1, v0, :cond_5

    .line 279
    .line 280
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 281
    .line 282
    .line 283
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->r(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    .line 284
    move-result-object p1

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->switchMusicPlayStatus()V

    .line 288
    .line 289
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 290
    .line 291
    .line 292
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 293
    move-result-object p1

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->toggleSpeaker()V

    .line 297
    goto :goto_1

    .line 298
    .line 299
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 300
    .line 301
    .line 302
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 303
    move-result-object p1

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->toggleLocalVoice()V

    .line 307
    .line 308
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 309
    .line 310
    .line 311
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->x(Lcom/narvii/chat/input/ChatInputFragment;)Z

    .line 312
    move-result v0

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 316
    return-void
.end method

.method public toggleSpeaker()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->r(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->r(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->r(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/call/CallScreenService;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->switchSpeaker()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->D(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->toggleSpeaker()V

    .line 41
    :goto_0
    return-void
.end method
