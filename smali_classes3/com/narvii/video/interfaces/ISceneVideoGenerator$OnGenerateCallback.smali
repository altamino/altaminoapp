.class public interface abstract Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;
.super Ljava/lang/Object;
.source "ISceneVideoGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/interfaces/ISceneVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGenerateCallback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
