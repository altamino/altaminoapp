.class public interface abstract Lcom/narvii/user/follow/IUserFollow;
.super Ljava/lang/Object;
.source "IUserFollow.java"


# virtual methods
.method public abstract follow(Lcom/narvii/model/User;)V
.end method

.method public abstract followFail()V
.end method

.method public abstract followSuccess()V
.end method

.method public abstract isSendingFollow(Lcom/narvii/model/User;)Z
.end method

.method public abstract needUpdateUserAfterFollow()Z
.end method

.method public abstract onFollowStatusUpdated()V
.end method
