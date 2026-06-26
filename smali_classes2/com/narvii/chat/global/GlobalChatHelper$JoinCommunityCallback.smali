.class public interface abstract Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;
.super Ljava/lang/Object;
.source "GlobalChatHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/GlobalChatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JoinCommunityCallback"
.end annotation


# virtual methods
.method public abstract followingChatToJoin()Lcom/narvii/model/ChatThread;
.end method

.method public abstract getActionRTCType()I
.end method

.method public abstract onCheckLoginFailed()V
.end method

.method public abstract onPostJoinCommunity(IZ)V
.end method

.method public abstract onPreJoinCommunity(I)Z
.end method
