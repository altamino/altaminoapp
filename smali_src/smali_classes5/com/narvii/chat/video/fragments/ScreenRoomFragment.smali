.class public Lcom/narvii/chat/video/fragments/ScreenRoomFragment;
.super Lcom/narvii/chat/video/fragments/LiveChannelFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->showReputationGuide()V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->updateViewTranslationX(I)V

    return-void
.end method

.method private getChatFragment()Lcom/narvii/chat/ChatFragment;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/chat/ChatActivity;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/chat/ChatActivity;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    instance-of v2, v0, Lcom/narvii/chat/ChatFragment;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0

    .line 40
    :cond_1
    :goto_0
    return-object v1
.end method

.method private getMainItemTranslationX(II)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    return v1

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 33
    move-result v1

    .line 34
    sub-int/2addr v1, p1

    .line 35
    .line 36
    add-int/lit8 p1, v1, -0x1

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    mul-int/2addr v0, p1

    .line 48
    sub-int/2addr v0, p2

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    mul-int/2addr v0, p1

    .line 51
    add-int/2addr v0, p2

    .line 52
    neg-int v0, v0

    .line 53
    :goto_0
    return v0
.end method

.method private initReputationSystem(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0c1e

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "creator"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p1, p0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;-><init>(Landroid/view/View;Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->reputationComposite:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lcom/narvii/chat/rtc/RtcService;->resetReputationComposite(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->repEarningVisibility:Ljava/lang/Integer;

    .line 79
    return-void
.end method

.method private showReputationGuide()V
    .locals 0

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->chatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    return-object p0
.end method

.method private updateViewTranslationX(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0a029d

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    int-to-float v1, p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 26
    int-to-float p1, p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 30
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/screenroom/widgets/SRVideoController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;Lcom/narvii/chat/video/utils/VVChatInviteHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->chatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->getMainItemTranslationX(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected getLiveUserLayout()Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 5
    return-object v0
.end method

.method protected getNormalContentHeight()I
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0704cc

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    const v2, 0x7f07024b

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    const v3, 0x7f0704de

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    const v4, 0x7f0704dc

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    const v5, 0x7f0704dd

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result v4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    const v6, 0x7f070248

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result v5

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v6

    .line 71
    .line 72
    .line 73
    const v7, 0x7f070237

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    move-result v6

    .line 78
    add-int/2addr v0, v1

    .line 79
    add-int/2addr v0, v2

    .line 80
    add-int/2addr v0, v3

    .line 81
    add-int/2addr v0, v4

    .line 82
    add-int/2addr v0, v6

    .line 83
    .line 84
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    .line 85
    .line 86
    if-eqz v1, :cond_0

    .line 87
    const/4 v5, 0x0

    .line 88
    :cond_0
    add-int/2addr v0, v5

    .line 89
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

    const v0, 0x7f0a008b

    return v0
.end method

.method protected notifyCollapseStatusChange(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRotateHelper:Lcom/narvii/util/ScreenRotateHelper;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/util/ScreenRotateHelper;->setMonitorEnabled(Z)V

    .line 17
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->chatInviteHelper:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->handleAddMemberOnActivityResult(IILandroid/content/Intent;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->getChatFragment()Lcom/narvii/chat/ChatFragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "playlist"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    instance-of v1, v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->dismiss()V

    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return v0
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v1

    .line 13
    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setLandscape(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->configCollapse()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0c1e

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string v0, "config"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 45
    move-result v0

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    .line 48
    .line 49
    const/16 v3, 0x8

    .line 50
    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->repEarningVisibility:Ljava/lang/Integer;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    goto :goto_2

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    .line 68
    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->updateViewTranslationX(I)V

    .line 73
    .line 74
    :cond_4
    sget-boolean p1, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    goto :goto_3

    .line 78
    .line 79
    .line 80
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 85
    move-result v1

    .line 86
    .line 87
    :goto_3
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 103
    move-result v0

    .line 104
    sub-int/2addr v0, v1

    .line 105
    .line 106
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    goto :goto_4

    .line 108
    .line 109
    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    move-result-object p1

    .line 114
    const/4 v0, -0x1

    .line 115
    .line 116
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    .line 118
    .line 119
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    .line 123
    .line 124
    .line 125
    const v1, 0x7f0a027e

    .line 126
    .line 127
    .line 128
    invoke-static {p1, v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 129
    .line 130
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    .line 131
    .line 132
    if-eqz p1, :cond_7

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    instance-of p1, p1, Lcom/narvii/app/DrawerActivity;

    .line 139
    .line 140
    if-eqz p1, :cond_7

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    check-cast p1, Lcom/narvii/app/DrawerActivity;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->closeDrawersDirectly()V

    .line 150
    .line 151
    :cond_7
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->mLandScape:Z

    .line 152
    .line 153
    if-eqz p1, :cond_9

    .line 154
    .line 155
    new-instance p1, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 156
    .line 157
    .line 158
    invoke-direct {p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;-><init>()V

    .line 159
    .line 160
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    .line 167
    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    .line 171
    const v0, 0x7f0a0f7b

    .line 172
    goto :goto_5

    .line 173
    .line 174
    .line 175
    :cond_8
    const v0, 0x7f0a0fd2

    .line 176
    .line 177
    .line 178
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 182
    .line 183
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V

    .line 187
    .line 188
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    .line 195
    const v2, 0x7f0a0c5f

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->setAvMainLayout(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 206
    move-result-object p1

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 210
    move-result-object p1

    .line 211
    .line 212
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 213
    .line 214
    const-string v2, "srOverlayTab"

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 222
    .line 223
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 224
    .line 225
    new-instance v0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 232
    goto :goto_6

    .line 233
    .line 234
    :cond_9
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 235
    .line 236
    if-eqz p1, :cond_a

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 250
    move-result-object p1

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 254
    const/4 p1, 0x0

    .line 255
    .line 256
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 257
    :cond_a
    :goto_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "screenRoom"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    iput-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomHelper:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/util/ScreenRotateHelper;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, p0}, Lcom/narvii/util/ScreenRotateHelper;-><init>(Landroid/content/Context;Lcom/narvii/util/RequestOrientationListener;)V

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRotateHelper:Lcom/narvii/util/ScreenRotateHelper;

    .line 32
    .line 33
    const-string v1, "relaunch"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 51
    .line 52
    :cond_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    const-string v0, "isScreenRoomRoleSet"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomRoleSet:Z

    .line 61
    .line 62
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 63
    .line 64
    iget-boolean v0, p1, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomRoleSet:Z

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomRoleSet:Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    .line 70
    move-result p1

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d06a9

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 11
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/narvii/chat/rtc/RtcService;->removeSRRoleChangeListener(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V

    .line 19
    return-void
.end method

.method public onHostMicIndicatorLevelChanged(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isSrHostMuted()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    cmpl-float v1, p1, v0

    .line 13
    .line 14
    if-lez v1, :cond_0

    .line 15
    move p1, v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    cmpg-float v1, p1, v0

    .line 19
    .line 20
    if-gez v1, :cond_1

    .line 21
    move p1, v0

    .line 22
    .line 23
    :cond_1
    const/high16 v0, 0x43800000    # 256.0f

    .line 24
    mul-float/2addr p1, v0

    .line 25
    float-to-int p1, p1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/video/ui/UserStatusData;->getVolumeLevel(I)I

    .line 33
    move-result p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->updateHostVolumeLevel(I)V

    .line 37
    :cond_2
    return-void
.end method

.method public onHostMutedChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->updateHosMuteStatus(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public onHostVideoProgress(F)V
    .locals 0

    return-void
.end method

.method protected onLiveContentForceRemoved()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->getChatFragment()Lcom/narvii/chat/ChatFragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "playlist"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    instance-of v1, v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->removeSelfAndBg()V

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->reputationGuideDialog:Landroid/app/Dialog;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 35
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRotateHelper:Lcom/narvii/util/ScreenRotateHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/ScreenRotateHelper;->stop()V

    .line 9
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRotateHelper:Lcom/narvii/util/ScreenRotateHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/ScreenRotateHelper;->start()V

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$1;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "isScreenRoomRoleSet"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomRoleSet:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onScreenRoomRoleChange(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomRoleSet:Z

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setupRoomRole(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->configCollapse()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a0fd2

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->isScreenRoomHost:Z

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    .line 33
    const v2, 0x7f0a0f7b

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v2, v1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srOverlayTabFragment:Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    const v3, 0x7f0a0c5f

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->setAvMainLayout(Landroid/view/View;)V

    .line 63
    .line 64
    :cond_2
    if-nez p1, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->showAndAutoHide()V

    .line 78
    :cond_3
    return-void
.end method

.method public onThreadActionChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 4
    return-void
.end method

.method protected onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->onHostBadConnection(Z)V

    .line 27
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0c5e

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$2;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0a0ac3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Landroid/view/ViewGroup;

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 p2, 0x0

    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setChatPanelLayout(Landroid/view/ViewGroup;)V

    .line 63
    .line 64
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setUpVideoPlayListener(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    .line 70
    .line 71
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->srItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setLiveUserItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V

    .line 77
    .line 78
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 79
    .line 80
    iget-object p2, p2, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 81
    .line 82
    new-instance v0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$3;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$3;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setOnUserCountClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;)V

    .line 89
    .line 90
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V

    .line 94
    .line 95
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 96
    .line 97
    .line 98
    const v0, 0x7f0a0d79

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    .line 106
    move-result v0

    .line 107
    const/4 v1, 0x0

    .line 108
    .line 109
    const/16 v2, 0x8

    .line 110
    .line 111
    if-eqz v0, :cond_2

    .line 112
    move v0, v2

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move v0, v1

    .line 115
    .line 116
    .line 117
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 120
    .line 121
    iget-boolean v0, p2, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomRoleSet:Z

    .line 122
    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomContainer:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    .line 129
    move-result p2

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p2}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setupRoomRole(I)V

    .line 133
    .line 134
    :cond_3
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getGlVideoView()Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 138
    move-result-object p2

    .line 139
    .line 140
    if-nez p2, :cond_4

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    .line 147
    const v0, 0x7f0a061d

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object p2

    .line 152
    .line 153
    check-cast p2, Landroid/widget/FrameLayout;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    .line 168
    const v3, 0x7f0d06ee

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 172
    move-result-object p2

    .line 173
    .line 174
    check-cast p2, Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setOnVideoSizeChangeListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 180
    .line 181
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setGlVideoView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 188
    move-result-object p2

    .line 189
    .line 190
    .line 191
    const v0, 0x7f0a0f7b

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    move-result-object p2

    .line 196
    .line 197
    check-cast p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 198
    .line 199
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 200
    .line 201
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setPlayActionListener(Lcom/narvii/chat/screenroom/PlayActionListener;)V

    .line 205
    .line 206
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setOnSeekPositionChangedListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;)V

    .line 212
    .line 213
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 220
    move-result-object p2

    .line 221
    .line 222
    .line 223
    const v0, 0x7f0a0fd2

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    move-result-object p2

    .line 228
    .line 229
    check-cast p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 236
    move-result-object p2

    .line 237
    .line 238
    .line 239
    const v0, 0x7f0a0fcd

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 243
    move-result-object p2

    .line 244
    .line 245
    check-cast p2, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    .line 246
    .line 247
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    .line 248
    .line 249
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPlayList()Lcom/narvii/model/PlayList;

    .line 253
    move-result-object v0

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->onPlayListChanged(Lcom/narvii/model/PlayList;)V

    .line 257
    .line 258
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    .line 259
    .line 260
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly()Z

    .line 264
    move-result v0

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->onHostAudioOnlyChanged(Z)V

    .line 268
    .line 269
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 270
    .line 271
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addPlayListChangeListenter(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    .line 275
    .line 276
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 277
    .line 278
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostLoadingListener(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V

    .line 282
    .line 283
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 284
    .line 285
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->videoWatchOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostAudioOnlyListener(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 292
    move-result-object p2

    .line 293
    .line 294
    .line 295
    const v0, 0x7f0a0c1e

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 299
    move-result-object p2

    .line 300
    .line 301
    const-string v0, "config"

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 311
    move-result v0

    .line 312
    .line 313
    if-eqz v0, :cond_5

    .line 314
    .line 315
    .line 316
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->initReputationSystem(Landroid/view/View;)V

    .line 317
    goto :goto_2

    .line 318
    .line 319
    :cond_5
    if-eqz p2, :cond_6

    .line 320
    .line 321
    .line 322
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRPermissionListener(Lcom/narvii/chat/screenroom/SRPermissionActionChangeListener;)V

    .line 328
    .line 329
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V

    .line 333
    .line 334
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addSRRoleChangeListener(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V

    .line 338
    return-void
.end method

.method public openPlaylist()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->getChatFragment()Lcom/narvii/chat/ChatFragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "playlist"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;-><init>()V

    .line 24
    .line 25
    new-instance v3, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$5;

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, p0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$5;-><init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->registerPlaylistDismissListener(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    const v3, 0x7f01000c

    .line 39
    .line 40
    .line 41
    const v4, 0x7f01000d

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->y(II)Landroidx/fragment/app/FragmentTransaction;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    const v3, 0x7f0a0c7c

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 56
    :cond_0
    return-void
.end method

.method public requestOrientation(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 24
    :cond_0
    return-void
.end method

.method protected supportCollapse()Z
    .locals 1

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
