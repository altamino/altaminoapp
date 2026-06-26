.class public Lcom/narvii/chat/video/VVChatEntryHelper;
.super Ljava/lang/Object;
.source "VVChatEntryHelper.java"


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field public source:Ljava/lang/String;

.field vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Chat Thread"

    .line 27
    iput-object v0, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->source:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->context:Lcom/narvii/app/NVContext;

    .line 34
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    const-string/jumbo v0, "rtc"

    .line 35
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "Chat Thread"

    .line 27
    iput-object p2, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->source:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/VVChatEntryHelper;Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannel(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/VVChatEntryHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private launchLiveChannel(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/narvii/chat/video/VVChatEntryHelper;->getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 86
    invoke-virtual {p1, p5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 88
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->context:Lcom/narvii/app/NVContext;

    instance-of p3, p2, Lcom/narvii/app/NVFragment;

    if-eqz p3, :cond_2

    check-cast p2, Lcom/narvii/app/NVFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 92
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "thread"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "id"

    .line 98
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Source"

    .line 99
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "channel_type"

    .line 100
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;
    .locals 2

    .line 106
    const-class v0, Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromLiveEvent"

    .line 107
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V
    .locals 9

    .line 48
    iget-object v0, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz p4, :cond_2

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    const/4 v6, 0x0

    if-nez p1, :cond_0

    move-object v1, v6

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v7, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    new-instance v8, Lcom/narvii/chat/video/VVChatEntryHelper$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/video/VVChatEntryHelper$1;-><init>(Lcom/narvii/chat/video/VVChatEntryHelper;Lcom/narvii/model/ChatThread;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v8, v6}, Lcom/narvii/chat/video/utils/VVChatHelper;->showSwitchChannelDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannel(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 78
    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannel(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    :goto_1
    return-void
.end method
