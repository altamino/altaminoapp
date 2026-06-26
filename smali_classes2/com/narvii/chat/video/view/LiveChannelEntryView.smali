.class public Lcom/narvii/chat/video/view/LiveChannelEntryView;
.super Landroid/widget/FrameLayout;
.source "LiveChannelEntryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;,
        Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;
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

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    .line 82
    new-instance p1, Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 83
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 84
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->accountService:Lcom/narvii/account/AccountService;

    .line 85
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/view/LiveChannelEntryView;)Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->channelEntryClickListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;

    return-object p0
.end method

.method private updateEnterView(I)V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_2

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 223
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v3, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v1, v3}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 226
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->entryViewVisibilityChangeListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;

    if-eqz v0, :cond_6

    .line 233
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;->onEntryViewVisibilityChanged(I)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public hideAll()V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->updateEnterView(I)V

    return-void
.end method

.method public synthetic lambda$showGoLive$0$LiveChannelEntryView(IZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v3, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v2, v3, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isReadyToLaunchLiveChannel(Lcom/narvii/model/ChatThread;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 146
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "vvChatJoinType"

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    .line 148
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 153
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->channelEntryClickListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;

    if-eqz p2, :cond_4

    .line 154
    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;->onChannelCameraPreview(IZLandroid/os/Bundle;)V

    goto :goto_2

    .line 157
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchChannel(IZLandroid/os/Bundle;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public launchChannel(IZLandroid/os/Bundle;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    new-instance v1, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;-><init>(Lcom/narvii/chat/video/view/LiveChannelEntryView;IZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/utils/VVChatHelper;->checkRtcStatus(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904d7

    if-eq v0, v1, :cond_2

    const p1, 0x7f090997

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchChannel(IZLandroid/os/Bundle;)V

    goto :goto_1

    .line 114
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->isEmbedFragment:Z

    if-eqz v0, :cond_3

    .line 115
    new-instance v1, Lcom/narvii/chat/video/VVChatEntryHelper;

    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, p1}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 116
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x1

    const-string v0, "showGoLive"

    .line 117
    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    iget-object v2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "GoLiveButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 122
    invoke-virtual {p0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->showGoLive()V

    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090997

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/view/JoinChannelBanner;

    iput-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    .line 92
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090635

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchEntry:Landroid/view/View;

    const v0, 0x7f0904d7

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->entryGoLive:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->entryGoLive:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setChannelEntryClickListener(Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->channelEntryClickListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;

    return-void
.end method

.method public setEmbedFragment(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->isEmbedFragment:Z

    return-void
.end method

.method public setEntryViewVisibilityChangeListener(Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->entryViewVisibilityChangeListener:Lcom/narvii/chat/video/view/LiveChannelEntryView$EntryViewVisibilityChangeListener;

    return-void
.end method

.method public showGoLive()V
    .locals 4

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isScreenRoomEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoChatEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    .line 140
    new-instance v2, Lcom/narvii/chat/ChatGoLivePickerDialog;

    iget-object v3, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v3, v1, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;-><init>(Lcom/narvii/app/NVContext;ZLjava/util/List;)V

    .line 141
    new-instance v0, Lcom/narvii/chat/video/view/-$$Lambda$LiveChannelEntryView$_6VM_S-pnIp4NhYDM2xx1K96bPc;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/view/-$$Lambda$LiveChannelEntryView$_6VM_S-pnIp4NhYDM2xx1K96bPc;-><init>(Lcom/narvii/chat/video/view/LiveChannelEntryView;)V

    invoke-virtual {v2, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;->setLiveModePickCallback(Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;)V

    .line 160
    invoke-virtual {v2}, Lcom/narvii/chat/BottomPopupDialog;->show()V

    return-void
.end method

.method public updateLiveChannelEntryView(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;ZZZ)V
    .locals 3

    .line 182
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 183
    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 184
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->supportLiveChannelInCurCommunity()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    iget v0, p2, Lcom/narvii/model/ChatThread;->status:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->accountService:Lcom/narvii/account/AccountService;

    .line 187
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 191
    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz p3, :cond_4

    if-eqz v2, :cond_3

    if-eqz p4, :cond_3

    if-nez p5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 193
    :goto_2
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->updateEnterView(I)V

    goto :goto_4

    :cond_4
    if-eqz p4, :cond_5

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    .line 195
    :goto_3
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->updateEnterView(I)V

    .line 196
    iget-object p3, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    invoke-virtual {p3, p1, p2}, Lcom/narvii/chat/video/view/JoinChannelBanner;->notifyUserChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;)V

    .line 197
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const-wide/16 p2, 0xc8

    if-eqz p1, :cond_6

    .line 198
    iget-object p4, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p4

    if-nez p4, :cond_6

    .line 199
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x7f010029

    invoke-static {p4, p5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p4

    .line 200
    invoke-virtual {p4, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 201
    iget-object p5, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    invoke-virtual {p5, p4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    if-nez p1, :cond_7

    .line 203
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_7

    .line 204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f01002a

    invoke-static {p1, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 205
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 206
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView;->previewEntry:Lcom/narvii/chat/video/view/JoinChannelBanner;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    :goto_4
    return-void

    .line 188
    :cond_8
    :goto_5
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->updateEnterView(I)V

    return-void
.end method
