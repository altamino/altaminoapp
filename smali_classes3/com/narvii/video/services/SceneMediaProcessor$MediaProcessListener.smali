.class public interface abstract Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/services/SceneMediaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaProcessListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onFailed(Z)V
.end method

.method public abstract onProgress(F)V
.end method

.method public abstract onSuccess(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
