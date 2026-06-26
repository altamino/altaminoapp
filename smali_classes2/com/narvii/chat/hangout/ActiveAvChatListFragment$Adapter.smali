.class Lcom/narvii/chat/hangout/ActiveAvChatListFragment$Adapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "ActiveAvChatListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/hangout/ActiveAvChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/hangout/ActiveAvChatListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/hangout/ActiveAvChatListFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/chat/hangout/ActiveAvChatListFragment$Adapter;->this$0:Lcom/narvii/chat/hangout/ActiveAvChatListFragment;

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Active VV Chats"

    .line 50
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 55
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "live-layer/public-vv-chats"

    .line 56
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 66
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v1

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance p1, Lcom/narvii/chat/video/VVChatEntryHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 68
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result p2

    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->source:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;Z)V

    return p4

    .line 71
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/chat/hangout/HangoutListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method
