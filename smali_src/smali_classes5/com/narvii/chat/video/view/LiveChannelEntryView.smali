.class public Lcom/narvii/chat/video/view/LiveChannelEntryView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;,
        Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;
    }
.end annotation


# static fields
.field public static final ENTRY_TYPE_SCREEN_ROOM:I = 0x1

.field public static final ENTRY_TYPE_VV_CHAT:I = 0x0

.field public static final ENTRY_UPDATE_HIDE_ALL:I = 0x0

.field public static final ENTRY_UPDATE_SHOW_INVITE:I = 0x2

.field public static final ENTRY_UPDATE_SHOW_LAUNCHER:I = 0x1


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private channelEntryClickListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private context:Lcom/narvii/app/NVContext;

.field private entryGoLive:Landroid/view/View;

.field private entryViewVisibilityChangeListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;

.field private isEmbedFragment:Z

.field private launchEntry:Landroid/view/View;

.field private previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

.field private signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

.field private vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 3
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    .line 4
    new-instance p2, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {p2, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 5
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    .line 6
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->accountService:Lcom/narvii/account/AccountService;

    .line 7
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/video/view/LiveChannelEntryView;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->lambda$showGoLive$0(IZ)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/chat/video/view/LiveChannelEntryView;)Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->channelEntryClickListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;

    return-object p0
.end method

.method private synthetic lambda$showGoLive$0(IZ)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    move v0, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isReadyToLaunchLiveChannel(Lcom/narvii/model/ChatThread;Z)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    const-string v2, "vvChatJoinType"

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    :goto_1
    const/4 p2, 0x4

    .line 37
    .line 38
    if-ne p1, p2, :cond_3

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->channelEntryClickListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;

    .line 41
    .line 42
    if-eqz p2, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, p1, v1, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;->onChannelCameraPreview(IZLandroid/os/Bundle;)V

    .line 46
    goto :goto_2

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {p0, p1, v1, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchChannel(IZLandroid/os/Bundle;)V

    .line 50
    :cond_4
    :goto_2
    return-void
.end method

.method private updateEnterView(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v1, 0x2

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    if-ne p1, v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v1, 0x1

    .line 44
    .line 45
    if-ne p1, v1, :cond_5

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-nez v1, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->entryViewVisibilityChangeListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;->onEntryViewVisibilityChanged(I)V

    .line 101
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public hideAll()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->updateEnterView(I)V

    .line 5
    return-void
.end method

.method public launchChannel(IZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;-><init>(Lcom/narvii/chat/video/view/LiveChannelEntryView;IZLandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->checkRtcStatus(Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0622

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0a0c5d

    .line 13
    .line 14
    if-eq v0, p1, :cond_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move p1, v0

    .line 25
    :goto_0
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchChannel(IZLandroid/os/Bundle;)V

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->isEmbedFragment:Z

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/chat/video/VVChatEntryHelper;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p1}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 41
    .line 42
    new-instance v6, Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    const-string p1, "showGoLive"

    .line 48
    const/4 v0, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 54
    const/4 v3, 0x1

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    const-string v0, "GoLiveButton"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->showGoLive()V

    .line 81
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0c5d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0a07b6

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0622

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->entryGoLive:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method public setChannelEntryClickListener(Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->channelEntryClickListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;

    return-void
.end method

.method public setEmbedFragment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->isEmbedFragment:Z

    return-void
.end method

.method public setEntryViewVisibilityChangeListener(Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->entryViewVisibilityChangeListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;

    return-void
.end method

.method public showGoLive()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isScreenRoomEnable()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x5

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoChatEnable()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    const/4 v1, 0x4

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    new-instance v2, Lcom/narvii/chat/ChatGoLivePickerDialog;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3, v1, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;-><init>(Lcom/narvii/app/NVContext;ZLjava/util/List;)V

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/chat/video/view/a;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/view/a;-><init>(Lcom/narvii/chat/video/view/LiveChannelEntryView;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;->setLiveModePickCallback(Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/narvii/chat/BottomPopupDialog;->show()V

    .line 78
    return-void
.end method

.method public updateLiveChannelEntryView(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;ZZZ)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->supportLiveChannelInCurCommunity()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    if-eqz p2, :cond_8

    .line 16
    .line 17
    iget v0, p2, Lcom/narvii/model/ChatThread;->status:I

    .line 18
    .line 19
    if-nez v0, :cond_8

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->accountService:Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 40
    move-result v2

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v2, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    move v2, v0

    .line 47
    .line 48
    :goto_1
    if-eqz p3, :cond_4

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    if-eqz p4, :cond_3

    .line 53
    .line 54
    if-nez p5, :cond_3

    .line 55
    move v1, v0

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->updateEnterView(I)V

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_4
    if-eqz p4, :cond_5

    .line 62
    .line 63
    if-eqz v2, :cond_5

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    const/4 v0, 0x2

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->updateEnterView(I)V

    .line 69
    .line 70
    iget-object p3, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p1, p2}, Lcom/narvii/chat/video/view/JoinChannelBanner;->notifyUserChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 79
    move-result p1

    .line 80
    .line 81
    const-wide/16 p2, 0xc8

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object p4, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 89
    move-result p4

    .line 90
    .line 91
    if-nez p4, :cond_6

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    move-result-object p4

    .line 96
    .line 97
    .line 98
    const p5, 0x7f010037

    .line 99
    .line 100
    .line 101
    invoke-static {p4, p5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 102
    move-result-object p4

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    .line 107
    iget-object p5, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p5, p4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    .line 112
    :cond_6
    if-nez p1, :cond_7

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 118
    move-result p1

    .line 119
    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    const p4, 0x7f010038

    .line 128
    .line 129
    .line 130
    invoke-static {p1, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 135
    .line 136
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    :cond_7
    :goto_3
    return-void

    .line 141
    .line 142
    .line 143
    :cond_8
    :goto_4
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->updateEnterView(I)V

    .line 144
    return-void
.end method
