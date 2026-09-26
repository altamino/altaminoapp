.class public Lcom/narvii/chat/video/VVChatEntryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field public source:Ljava/lang/String;

.field vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Chat Thread"

    iput-object v0, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->source:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->context:Lcom/narvii/app/NVContext;

    .line 2
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    const-string v0, "rtc"

    .line 3
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "Chat Thread"

    iput-object p2, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->source:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/video/VVChatEntryHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/video/VVChatEntryHelper;Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannel(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method private launchLiveChannel(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/narvii/chat/video/VVChatEntryHelper;->getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p5, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->context:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    instance-of p3, p2, Lcom/narvii/app/NVFragment;

    .line 24
    .line 25
    if-eqz p3, :cond_2

    .line 26
    .line 27
    check-cast p2, Lcom/narvii/app/NVFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 31
    move-result p2

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    return-void

    .line 35
    .line 36
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->context:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p1}, Lcom/narvii/chat/video/VVChatEntryHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    const-string v1, "thread"

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string p2, "id"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    const-string p2, "Source"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    const-string p2, "channel_type"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    return-object v0
.end method

.method public getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/ChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "fromLiveEvent"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
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

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz p4, :cond_2

    if-eqz v0, :cond_1

    .line 3
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

    iget-object v7, p0, Lcom/narvii/chat/video/VVChatEntryHelper;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 4
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

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannel(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannel(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    :goto_1
    return-void
.end method
