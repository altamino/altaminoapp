.class public Lcom/narvii/livelayer/detailview/OnlineBlog;
.super Lcom/narvii/model/Blog;
.source "OnlineBlog.java"

# interfaces
.implements Lcom/narvii/chat/thread/OnlineUserInfoInfo$OnlineUserInfoInfoKeeper;


# instance fields
.field public userInfo:Lcom/narvii/chat/thread/OnlineUserInfoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/Blog;-><init>()V

    return-void
.end method


# virtual methods
.method public getOnlineUserInfoInfo()Lcom/narvii/chat/thread/OnlineUserInfoInfo;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineBlog;->userInfo:Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    return-object v0
.end method
