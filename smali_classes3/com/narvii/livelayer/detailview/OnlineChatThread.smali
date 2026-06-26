.class public Lcom/narvii/livelayer/detailview/OnlineChatThread;
.super Lcom/narvii/model/ChatThread;
.source "OnlineChatThread.java"

# interfaces
.implements Lcom/narvii/chat/thread/OnlineUserInfoInfo$OnlineUserInfoInfoKeeper;


# instance fields
.field public playlistInThreadInfo:Lcom/narvii/model/PlayList;

.field public userInfo:Lcom/narvii/chat/thread/OnlineUserInfoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/ChatThread;-><init>()V

    return-void
.end method


# virtual methods
.method public getOnlineUserInfoInfo()Lcom/narvii/chat/thread/OnlineUserInfoInfo;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineChatThread;->userInfo:Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    return-object v0
.end method
