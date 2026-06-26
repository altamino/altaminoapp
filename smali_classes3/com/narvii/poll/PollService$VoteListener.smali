.class public interface abstract Lcom/narvii/poll/PollService$VoteListener;
.super Ljava/lang/Object;
.source "PollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poll/PollService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoteListener"
.end annotation


# virtual methods
.method public abstract onVoteFail(Lcom/narvii/model/Blog;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onVoteFinish(Lcom/narvii/model/Blog;Ljava/lang/String;)V
.end method
