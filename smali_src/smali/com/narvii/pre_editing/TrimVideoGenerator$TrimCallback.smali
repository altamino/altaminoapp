.class public interface abstract Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrimCallback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError()V
.end method

.method public abstract onProgress(F)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
