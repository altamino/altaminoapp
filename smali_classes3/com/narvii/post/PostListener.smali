.class public interface abstract Lcom/narvii/post/PostListener;
.super Ljava/lang/Object;
.source "PostListener.java"


# virtual methods
.method public abstract onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
.end method

.method public abstract onPostProgress(Lcom/narvii/post/PostHelper;II)V
.end method

.method public abstract onPostStart(Lcom/narvii/post/PostHelper;)V
.end method
