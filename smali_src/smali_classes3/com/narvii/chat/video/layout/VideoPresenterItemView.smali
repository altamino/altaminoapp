.class public Lcom/narvii/chat/video/layout/VideoPresenterItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;
    }
.end annotation


# instance fields
.field private attachContainer:Landroid/view/View;

.field private badNetworkIndicator:Landroid/view/View;

.field private badNetworkIndicatorVideoLayer:Landroid/view/View;

.field private cameraFlip:Lcom/narvii/chat/video/view/CheckableImageView;

.field private cameraMuted:Lcom/narvii/chat/video/view/CheckableImageView;

.field public channelUid:I

.field private controllerViewOverlay:Landroid/widget/LinearLayout;

.field private emptyContainer:Landroid/view/View;

.field private imgBadge:Landroid/widget/ImageView;

.field private imgBadgeInfo:Landroid/widget/ImageView;

.field private loadingIndicator:Landroid/widget/ImageView;

.field private localMuteIndicator:Landroid/view/View;

.field private muteIndicator:Landroid/widget/ImageView;

.field private muteIndicatorVideoLayer:Landroid/widget/ImageView;

.field private nicknameContainer:Landroid/view/View;

.field private nicknameInfoContainer:Landroid/view/View;

.field private organizerLabel:Landroid/view/View;

.field private sfContainer:Landroid/widget/FrameLayout;

.field public subViewClickListener:Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;

.field private tvNickname:Lcom/narvii/widget/NicknameView;

.field private tvNicknameInfo:Lcom/narvii/widget/NicknameView;

.field private userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field private userInfoContainer:Landroid/view/View;

.field private userInfoLayerBg:Lcom/narvii/widget/BlurImageView;

.field private userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

.field private volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

.field private volumeIndicatorVideoLayer:Lcom/narvii/widget/VolumeIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    const p2, 0x7f0d049b

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0e0e

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    const p1, 0x7f0a04e1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->emptyContainer:Landroid/view/View;

    const p1, 0x7f0a0f4a

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoContainer:Landroid/view/View;

    const p1, 0x7f0a0148

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->attachContainer:Landroid/view/View;

    const p1, 0x7f0a0f48

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/BlurImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoLayerBg:Lcom/narvii/widget/BlurImageView;

    const p1, 0x7f0a0f5b

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/view/UserSpeakingView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    const p1, 0x7f0a0f36

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f0a0fea

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/VolumeIndicator;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    const p1, 0x7f0a0826

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->localMuteIndicator:Landroid/view/View;

    const p1, 0x7f0a01a4

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->badNetworkIndicator:Landroid/view/View;

    const p1, 0x7f0a09cd

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->muteIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0a0821

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0a0fee

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/VolumeIndicator;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicatorVideoLayer:Lcom/narvii/widget/VolumeIndicator;

    const p1, 0x7f0a09ce

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->muteIndicatorVideoLayer:Landroid/widget/ImageView;

    const p1, 0x7f0a01a6

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->badNetworkIndicatorVideoLayer:Landroid/view/View;

    const p1, 0x7f0a09f9

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f0a09fb

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->imgBadge:Landroid/widget/ImageView;

    const p1, 0x7f0a0a07

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNicknameInfo:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f0a09fc

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->imgBadgeInfo:Landroid/widget/ImageView;

    const p1, 0x7f0a0aa1

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->organizerLabel:Landroid/view/View;

    const p1, 0x7f0a09ff

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->nicknameContainer:Landroid/view/View;

    const p1, 0x7f0a09fd

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->nicknameInfoContainer:Landroid/view/View;

    const p1, 0x7f0a03b3

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->controllerViewOverlay:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0245

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/view/CheckableImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->cameraMuted:Lcom/narvii/chat/video/view/CheckableImageView;

    .line 28
    new-instance p2, Lcom/narvii/chat/video/layout/b;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/layout/b;-><init>(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->controllerViewOverlay:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0244

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/view/CheckableImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->cameraFlip:Lcom/narvii/chat/video/view/CheckableImageView;

    .line 30
    new-instance p2, Lcom/narvii/chat/video/layout/c;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/layout/c;-><init>(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance p1, Lcom/narvii/chat/video/layout/d;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/layout/d;-><init>(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)Lcom/narvii/widget/BlurImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoLayerBg:Lcom/narvii/widget/BlurImageView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->subViewIsClicked(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->subViewIsClicked(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->subViewClickListener:Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;->onSubViewCliekedd(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method private subViewIsClicked(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->subViewClickListener:Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;->onSubViewCliekedd(Landroid/view/View;)V

    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public stripView(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :cond_0
    return-void
.end method

.method public updatePresenter(Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZZZZ)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p4

    .line 7
    const/4 v3, -0x1

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    const/4 v5, 0x0

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput v3, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    .line 15
    .line 16
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->emptyContainer:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 25
    .line 26
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoContainer:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->attachContainer:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->controllerViewOverlay:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v5}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 50
    .line 51
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    .line 52
    const/4 v2, 0x0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v5}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 56
    .line 57
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicatorVideoLayer:Lcom/narvii/widget/VolumeIndicator;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2, v5}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 61
    return-void

    .line 62
    .line 63
    :cond_0
    iget v6, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 64
    .line 65
    iput v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    .line 66
    .line 67
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->emptyContainer:Landroid/view/View;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoContainer:Landroid/view/View;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->attachContainer:Landroid/view/View;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    iget-object v6, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 88
    .line 89
    iget-object v7, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 90
    .line 91
    if-nez v7, :cond_1

    .line 92
    const/4 v7, 0x0

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_1
    iget-object v7, v7, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 96
    .line 97
    :goto_0
    iget v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 98
    const/4 v8, 0x1

    .line 99
    .line 100
    if-ne v1, v8, :cond_2

    .line 101
    move v1, v8

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move v1, v5

    .line 104
    .line 105
    :goto_1
    if-eqz v6, :cond_3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    .line 109
    move-result v9

    .line 110
    .line 111
    if-eqz v9, :cond_3

    .line 112
    move v9, v8

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    move v9, v5

    .line 115
    .line 116
    :goto_2
    if-eqz v6, :cond_4

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 120
    move-result v10

    .line 121
    .line 122
    if-eqz v10, :cond_4

    .line 123
    move v10, v8

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    move v10, v5

    .line 126
    .line 127
    :goto_3
    if-eqz v6, :cond_5

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted()Z

    .line 131
    move-result v11

    .line 132
    .line 133
    if-eqz v11, :cond_5

    .line 134
    move v11, v8

    .line 135
    goto :goto_4

    .line 136
    :cond_5
    move v11, v5

    .line 137
    .line 138
    :goto_4
    if-eqz p2, :cond_6

    .line 139
    .line 140
    if-eqz p3, :cond_6

    .line 141
    move v12, v8

    .line 142
    goto :goto_5

    .line 143
    :cond_6
    move v12, v5

    .line 144
    .line 145
    :goto_5
    if-nez v11, :cond_8

    .line 146
    .line 147
    if-nez p5, :cond_8

    .line 148
    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    if-nez v12, :cond_7

    .line 152
    goto :goto_6

    .line 153
    :cond_7
    move v12, v5

    .line 154
    goto :goto_7

    .line 155
    :cond_8
    :goto_6
    move v12, v8

    .line 156
    .line 157
    :goto_7
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoContainer:Landroid/view/View;

    .line 158
    .line 159
    if-eqz v12, :cond_9

    .line 160
    move v14, v5

    .line 161
    goto :goto_8

    .line 162
    :cond_9
    move v14, v4

    .line 163
    .line 164
    .line 165
    :goto_8
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    if-nez v11, :cond_b

    .line 168
    .line 169
    if-eqz v6, :cond_c

    .line 170
    .line 171
    iget-object v13, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 172
    .line 173
    if-eqz v13, :cond_c

    .line 174
    .line 175
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    .line 179
    move-result v13

    .line 180
    .line 181
    if-eqz v13, :cond_a

    .line 182
    .line 183
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 187
    move-result-object v13

    .line 188
    .line 189
    iget-object v14, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 190
    .line 191
    if-eq v13, v14, :cond_c

    .line 192
    .line 193
    :cond_a
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 197
    .line 198
    iget-object v13, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v13}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->stripView(Landroid/view/View;)V

    .line 202
    .line 203
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    .line 204
    .line 205
    iget-object v14, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 209
    goto :goto_9

    .line 210
    .line 211
    :cond_b
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 215
    .line 216
    :cond_c
    :goto_9
    if-eqz v6, :cond_e

    .line 217
    .line 218
    if-nez v10, :cond_e

    .line 219
    .line 220
    if-eqz p5, :cond_d

    .line 221
    goto :goto_a

    .line 222
    .line 223
    .line 224
    :cond_d
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    .line 225
    move-result v6

    .line 226
    goto :goto_b

    .line 227
    :cond_e
    :goto_a
    move v6, v5

    .line 228
    .line 229
    :goto_b
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    .line 230
    .line 231
    if-eqz v1, :cond_f

    .line 232
    .line 233
    if-nez p5, :cond_f

    .line 234
    .line 235
    if-nez v10, :cond_f

    .line 236
    .line 237
    if-eqz v11, :cond_f

    .line 238
    move v14, v5

    .line 239
    goto :goto_c

    .line 240
    :cond_f
    move v14, v4

    .line 241
    .line 242
    .line 243
    :goto_c
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    .line 246
    int-to-float v14, v6

    .line 247
    .line 248
    const/high16 v15, 0x40800000    # 4.0f

    .line 249
    div-float/2addr v14, v15

    .line 250
    .line 251
    .line 252
    invoke-virtual {v13, v14, v8}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 253
    .line 254
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicatorVideoLayer:Lcom/narvii/widget/VolumeIndicator;

    .line 255
    .line 256
    if-nez v12, :cond_10

    .line 257
    .line 258
    if-eqz v1, :cond_10

    .line 259
    .line 260
    if-nez v10, :cond_10

    .line 261
    move v15, v5

    .line 262
    goto :goto_d

    .line 263
    :cond_10
    move v15, v4

    .line 264
    .line 265
    .line 266
    :goto_d
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicatorVideoLayer:Lcom/narvii/widget/VolumeIndicator;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v13, v14, v8}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 272
    .line 273
    if-nez p5, :cond_11

    .line 274
    .line 275
    if-nez v10, :cond_11

    .line 276
    .line 277
    if-nez v12, :cond_12

    .line 278
    :cond_11
    move v6, v5

    .line 279
    .line 280
    :cond_12
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v13, v6}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 284
    .line 285
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 286
    .line 287
    if-eqz p2, :cond_13

    .line 288
    .line 289
    if-nez v1, :cond_13

    .line 290
    move v14, v8

    .line 291
    goto :goto_e

    .line 292
    :cond_13
    move v14, v5

    .line 293
    .line 294
    .line 295
    :goto_e
    invoke-virtual {v13, v14}, Lcom/narvii/chat/video/view/UserSpeakingView;->setPendingSpeakingMode(Z)V

    .line 296
    .line 297
    .line 298
    const v13, 0x7f0a0171

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 302
    move-result-object v13

    .line 303
    .line 304
    check-cast v13, Lcom/narvii/widget/NVImageView;

    .line 305
    .line 306
    new-instance v14, Lcom/narvii/chat/video/layout/VideoPresenterItemView$1;

    .line 307
    .line 308
    .line 309
    invoke-direct {v14, v0}, Lcom/narvii/chat/video/layout/VideoPresenterItemView$1;-><init>(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v13, v14}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 313
    .line 314
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 315
    .line 316
    if-eqz p2, :cond_14

    .line 317
    .line 318
    if-eqz v1, :cond_15

    .line 319
    .line 320
    :cond_14
    if-lez v6, :cond_15

    .line 321
    goto :goto_f

    .line 322
    :cond_15
    move v8, v5

    .line 323
    .line 324
    .line 325
    :goto_f
    invoke-virtual {v13, v8}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    .line 326
    .line 327
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v6, v7, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 331
    .line 332
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6, v7}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 336
    .line 337
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNicknameInfo:Lcom/narvii/widget/NicknameView;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6, v7}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 341
    .line 342
    if-eqz p2, :cond_16

    .line 343
    .line 344
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    .line 345
    .line 346
    .line 347
    const v7, 0x7f120c2a

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6, v7}, Lcom/narvii/widget/NicknameView;->setText(I)V

    .line 351
    .line 352
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNicknameInfo:Lcom/narvii/widget/NicknameView;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6, v7}, Lcom/narvii/widget/NicknameView;->setText(I)V

    .line 356
    .line 357
    :cond_16
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->nicknameContainer:Landroid/view/View;

    .line 358
    .line 359
    if-nez p7, :cond_18

    .line 360
    .line 361
    if-nez p2, :cond_18

    .line 362
    .line 363
    if-eqz v11, :cond_17

    .line 364
    goto :goto_10

    .line 365
    :cond_17
    move v7, v5

    .line 366
    goto :goto_11

    .line 367
    :cond_18
    :goto_10
    move v7, v4

    .line 368
    .line 369
    .line 370
    :goto_11
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .line 372
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->nicknameInfoContainer:Landroid/view/View;

    .line 373
    .line 374
    if-nez p2, :cond_1a

    .line 375
    .line 376
    if-eqz v11, :cond_1a

    .line 377
    .line 378
    if-eqz p7, :cond_19

    .line 379
    goto :goto_12

    .line 380
    :cond_19
    move v7, v5

    .line 381
    goto :goto_13

    .line 382
    :cond_1a
    :goto_12
    move v7, v4

    .line 383
    .line 384
    .line 385
    :goto_13
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 386
    .line 387
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->imgBadge:Landroid/widget/ImageView;

    .line 388
    .line 389
    if-eqz v2, :cond_1b

    .line 390
    move v7, v5

    .line 391
    goto :goto_14

    .line 392
    :cond_1b
    move v7, v4

    .line 393
    .line 394
    .line 395
    :goto_14
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    .line 397
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->imgBadgeInfo:Landroid/widget/ImageView;

    .line 398
    .line 399
    if-eqz v2, :cond_1c

    .line 400
    move v2, v5

    .line 401
    goto :goto_15

    .line 402
    :cond_1c
    move v2, v4

    .line 403
    .line 404
    .line 405
    :goto_15
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    .line 407
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->localMuteIndicator:Landroid/view/View;

    .line 408
    .line 409
    if-eqz p5, :cond_1d

    .line 410
    move v6, v5

    .line 411
    goto :goto_16

    .line 412
    :cond_1d
    move v6, v4

    .line 413
    .line 414
    .line 415
    :goto_16
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 416
    .line 417
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->badNetworkIndicator:Landroid/view/View;

    .line 418
    .line 419
    if-eqz v12, :cond_1e

    .line 420
    .line 421
    if-nez p5, :cond_1e

    .line 422
    .line 423
    if-eqz v9, :cond_1e

    .line 424
    .line 425
    if-nez v10, :cond_1e

    .line 426
    move v6, v5

    .line 427
    goto :goto_17

    .line 428
    :cond_1e
    move v6, v4

    .line 429
    .line 430
    .line 431
    :goto_17
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->badNetworkIndicatorVideoLayer:Landroid/view/View;

    .line 434
    .line 435
    if-nez v12, :cond_1f

    .line 436
    .line 437
    if-eqz v9, :cond_1f

    .line 438
    .line 439
    if-nez v10, :cond_1f

    .line 440
    move v6, v5

    .line 441
    goto :goto_18

    .line 442
    :cond_1f
    move v6, v4

    .line 443
    .line 444
    .line 445
    :goto_18
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 446
    .line 447
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->muteIndicator:Landroid/widget/ImageView;

    .line 448
    .line 449
    if-nez p5, :cond_20

    .line 450
    .line 451
    if-eqz v10, :cond_20

    .line 452
    move v6, v5

    .line 453
    goto :goto_19

    .line 454
    :cond_20
    move v6, v4

    .line 455
    .line 456
    .line 457
    :goto_19
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    .line 459
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->muteIndicatorVideoLayer:Landroid/widget/ImageView;

    .line 460
    .line 461
    if-nez v12, :cond_21

    .line 462
    .line 463
    if-eqz v10, :cond_21

    .line 464
    move v6, v5

    .line 465
    goto :goto_1a

    .line 466
    :cond_21
    move v6, v4

    .line 467
    .line 468
    .line 469
    :goto_1a
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    .line 471
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->organizerLabel:Landroid/view/View;

    .line 472
    const/4 v6, 0x4

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 476
    .line 477
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->controllerViewOverlay:Landroid/widget/LinearLayout;

    .line 478
    .line 479
    if-eqz p2, :cond_22

    .line 480
    move v6, v5

    .line 481
    goto :goto_1b

    .line 482
    :cond_22
    move v6, v4

    .line 483
    .line 484
    .line 485
    :goto_1b
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 486
    .line 487
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->cameraMuted:Lcom/narvii/chat/video/view/CheckableImageView;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2, v11}, Lcom/narvii/chat/video/view/CheckableImageView;->setChecked(Z)V

    .line 491
    .line 492
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 496
    move-result-object v2

    .line 497
    .line 498
    instance-of v2, v2, Lcom/narvii/widget/SpinDrawable;

    .line 499
    .line 500
    if-eqz v2, :cond_23

    .line 501
    .line 502
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 506
    move-result-object v2

    .line 507
    .line 508
    check-cast v2, Lcom/narvii/widget/SpinDrawable;

    .line 509
    goto :goto_1c

    .line 510
    .line 511
    :cond_23
    new-instance v2, Lcom/narvii/widget/SpinDrawable;

    .line 512
    .line 513
    .line 514
    invoke-direct {v2}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2, v3}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 518
    .line 519
    iget-object v3, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    .line 524
    :goto_1c
    if-nez v1, :cond_26

    .line 525
    .line 526
    if-nez p5, :cond_26

    .line 527
    .line 528
    if-nez p2, :cond_26

    .line 529
    .line 530
    if-eqz v11, :cond_24

    .line 531
    goto :goto_1d

    .line 532
    .line 533
    .line 534
    :cond_24
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    .line 535
    move-result v1

    .line 536
    .line 537
    if-nez v1, :cond_25

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 541
    .line 542
    :cond_25
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    goto :goto_1e

    .line 547
    .line 548
    .line 549
    :cond_26
    :goto_1d
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 550
    .line 551
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    :goto_1e
    return-void
.end method
