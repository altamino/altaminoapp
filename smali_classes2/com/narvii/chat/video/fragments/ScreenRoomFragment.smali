.class public Lcom/narvii/chat/video/fragments/ScreenRoomFragment;
.super Lcom/narvii/chat/video/fragments/LiveChannelFragment;
.source "ScreenRoomFragment.java"

# interfaces
.implements Lcom/narvii/chat/screenroom/SRRoleChangeListener;
.implements Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;
.implements Lcom/narvii/chat/screenroom/VideoButtonClickListener;
.implements Lcom/narvii/chat/screenroom/SRHostStatusListener;
.implements Lcom/narvii/util/RequestOrientationListener;


# static fields
.field public static final PLAYLIST_FRAGMENT_TAG:Ljava/lang/String; = "playlist"


# instance fields
.field private chatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

.field private hasRepGuideDialogShown:Z

.field isScreenRoomHost:Z

.field isScreenRoomRoleSet:Z

.field keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

.field mLandScape:Z

.field repEarningVisibility:Ljava/lang/Integer;

.field reputationComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

.field reputationGuideDialog:Landroid/app/Dialog;

.field private screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

.field private screenRoomHelper:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

.field private screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field screenRotateHelper:Lcom/narvii/util/ScreenRotateHelper;

.field private spinner:Landroid/view/View;

.field private srItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

.field private srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

.field private videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

.field videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;-><init>()V

    .line 511
    new-instance v0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/widgets/SRVideoController;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;II)I
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->getMainItemTranslationX(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->updateViewTranslationX(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->showReputationGuide()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->chatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    return-object p0
.end method

.method static synthetic access$602(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;Lcom/narvii/chat/video/utils/VVChatInviteHelper;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->chatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    return-object p1
.end method

.method private getChatFragment()Lcom/narvii/chat/ChatFragment;
    .locals 3

    .line 469
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatActivity;

    .line 471
    invoke-virtual {v0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 472
    instance-of v2, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v2, :cond_1

    .line 473
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 474
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private getMainItemTranslationX(II)I
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 420
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 424
    :cond_1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 426
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 p1, v1, -0x1

    .line 430
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 432
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int v0, v0, p1

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_3
    mul-int v0, v0, p1

    add-int/2addr v0, p2

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method private initReputationSystem(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090960

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const-string v0, "creator"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 245
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;-><init>(Landroid/view/View;Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->reputationComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 248
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->reputationComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->resetReputationComposite(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->repEarningVisibility:Ljava/lang/Integer;

    return-void
.end method

.method private showReputationGuide()V
    .locals 0

    return-void
.end method

.method private updateViewTranslationX(I)V
    .locals 2

    .line 441
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    int-to-float v1, p1

    .line 443
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method protected getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    return-object v0
.end method

.method protected getNormalContentHeight()I
    .locals 8

    .line 582
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 583
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 584
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 585
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 586
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 587
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 588
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    .line 589
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    :cond_0
    add-int/2addr v0, v5

    return v0
.end method

.method public isMappedLiveChannel(I)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected liveContentId()I
    .locals 1

    const v0, 0x7f09005a

    return v0
.end method

.method protected notifyCollapseStatusChange(I)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 156
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRotateHelper:Lcom/narvii/util/ScreenRotateHelper;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 157
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/util/ScreenRotateHelper;->setMonitorEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 538
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 539
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->chatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->handleAddMemberOnActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 567
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->getChatFragment()Lcom/narvii/chat/ChatFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "playlist"

    .line 570
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    instance-of v1, v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    if-eqz v1, :cond_0

    .line 572
    check-cast v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 346
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 347
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    .line 349
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    invoke-virtual {p1, v1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setLandscape(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->configCollapse()V

    .line 354
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090960

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "config"

    .line 355
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 356
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    .line 357
    iget-boolean v2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    const/16 v3, 0x8

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->repEarningVisibility:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 361
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 358
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    if-nez p1, :cond_4

    .line 366
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->updateViewTranslationX(I)V

    .line 369
    :cond_4
    sget-boolean p1, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 370
    :goto_3
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    if-eqz p1, :cond_6

    .line 371
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 373
    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 376
    :goto_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    const v1, 0x7f0901c7

    invoke-static {p1, v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 379
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    if-eqz p1, :cond_7

    .line 380
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/DrawerActivity;

    if-eqz p1, :cond_7

    .line 381
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->closeDrawersDirectly()V

    .line 385
    :cond_7
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    if-eqz p1, :cond_9

    .line 386
    new-instance p1, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    invoke-direct {p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 387
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    if-eqz v0, :cond_8

    const v0, 0x7f090c55

    goto :goto_5

    :cond_8
    const v0, 0x7f090ca7

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 388
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V

    .line 389
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090999

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->setAvMainLayout(Landroid/view/View;)V

    .line 390
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    const-string v2, "srOverlayTab"

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 391
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    new-instance v0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_6

    .line 409
    :cond_9
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    if-eqz p1, :cond_a

    .line 410
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 411
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    :cond_a
    :goto_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 87
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "screenRoom"

    .line 88
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 89
    new-instance v1, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomHelper:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 90
    new-instance v1, Lcom/narvii/util/ScreenRotateHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/narvii/util/ScreenRotateHelper;-><init>(Landroid/content/Context;Lcom/narvii/util/RequestOrientationListener;)V

    iput-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRotateHelper:Lcom/narvii/util/ScreenRotateHelper;

    const-string v1, "relaunch"

    .line 92
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 94
    new-instance v0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "isScreenRoomRoleSet"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomRoleSet:Z

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-boolean v0, p1, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomRoleSet:Z

    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomRoleSet:Z

    .line 101
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b05f5

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 338
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 339
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 330
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 331
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V

    .line 332
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V

    .line 333
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/rtc/RtcService;->removeSRRoleChangeListener(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V

    return-void
.end method

.method public onHostMicIndicatorLevelChanged(F)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isSrHostMuted()Z

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/high16 v0, 0x43800000    # 256.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 307
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    if-eqz v0, :cond_2

    .line 308
    invoke-static {p1}, Lcom/narvii/video/ui/UserStatusData;->getVolumeLevel(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->updateHostVolumeLevel(I)V

    :cond_2
    return-void
.end method

.method public onHostMutedChanged(Z)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->updateHosMuteStatus(Z)V

    :cond_0
    return-void
.end method

.method public onHostVideoProgress(F)V
    .locals 0

    return-void
.end method

.method protected onLiveContentForceRemoved()V
    .locals 2

    .line 594
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->getChatFragment()Lcom/narvii/chat/ChatFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "playlist"

    .line 597
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    instance-of v1, v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    if-eqz v1, :cond_0

    .line 599
    check-cast v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->removeSelfAndBg()V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->reputationGuideDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRotateHelper:Lcom/narvii/util/ScreenRotateHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ScreenRotateHelper;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRotateHelper:Lcom/narvii/util/ScreenRotateHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ScreenRotateHelper;->start()V

    .line 117
    new-instance v0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomRoleSet:Z

    const-string v1, "isScreenRoomRoleSet"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onScreenRoomRoleChange(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomRoleSet:Z

    .line 270
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    .line 271
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setupRoomRole(I)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->configCollapse()V

    .line 277
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    const v1, 0x7f090ca7

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    if-eqz v2, :cond_1

    const v2, 0x7f090c55

    goto :goto_0

    :cond_1
    const v2, 0x7f090ca7

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 279
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    invoke-virtual {v2, v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V

    .line 280
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090999

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->setAvMainLayout(Landroid/view/View;)V

    :cond_2
    if-nez p1, :cond_3

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 285
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->showAndAutoHide()V

    :cond_3
    return-void
.end method

.method public onThreadActionChanged(I)V
    .locals 0

    .line 257
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method protected onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 546
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    .line 547
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    .line 559
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 560
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    if-eqz p2, :cond_0

    .line 561
    invoke-virtual {p1}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->onHostBadConnection(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 163
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090998

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 167
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$2;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    invoke-static {p2, v0}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    const/4 p2, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09081a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    invoke-virtual {v0, p2}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setChatPanelLayout(Landroid/view/ViewGroup;)V

    .line 183
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setUpVideoPlayListener(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 184
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setLiveUserItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V

    .line 185
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    iget-object p2, p2, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    new-instance v0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$3;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setOnUserCountClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;)V

    .line 191
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V

    .line 192
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    const v0, 0x7f090a85

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 193
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-boolean v0, p2, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomRoleSet:Z

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setupRoomRole(I)V

    .line 198
    :cond_3
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getGlVideoView()Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    move-result-object p2

    if-nez p2, :cond_4

    .line 201
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0904d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 202
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b0636

    invoke-virtual {v0, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 203
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnVideoSizeChangeListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 204
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setGlVideoView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    .line 207
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090c55

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 208
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setPlayActionListener(Lcom/narvii/chat/screenroom/PlayActionListener;)V

    .line 209
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setOnSeekPositionChangedListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;)V

    .line 210
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 212
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090ca7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 213
    invoke-virtual {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V

    .line 215
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090ca2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    .line 216
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPlayList()Lcom/narvii/model/PlayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->onPlayListChanged(Lcom/narvii/model/PlayList;)V

    .line 217
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->onHostAudioOnlyChanged(Z)V

    .line 218
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addPlayListChangeListenter(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    .line 219
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostLoadingListener(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V

    .line 220
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostAudioOnlyListener(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V

    .line 221
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090960

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "config"

    .line 223
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 224
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->initReputationSystem(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 228
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V

    .line 233
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V

    .line 234
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addSRRoleChangeListener(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V

    return-void
.end method

.method public openPlaylist()V
    .locals 5

    .line 451
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->getChatFragment()Lcom/narvii/chat/ChatFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "playlist"

    .line 454
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 456
    new-instance v2, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-direct {v2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;-><init>()V

    .line 457
    new-instance v3, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$5;

    invoke-direct {v3, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$5;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    invoke-virtual {v2, v3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->registerPlaylistDismissListener(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;)V

    .line 463
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v3, 0x7f01000c

    const v4, 0x7f01000d

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v3, 0x7f0909b3

    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public requestOrientation(I)V
    .locals 1

    .line 486
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method protected supportCollapse()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomRoleSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
