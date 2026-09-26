.class public interface abstract Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/dialog/SceneMediaPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPickerListener"
.end annotation


# virtual methods
.method public abstract onPickOnlineVideo()V
.end method

.method public abstract onPickPhoto()V
.end method

.method public abstract onPickRecentMedia(Lcom/narvii/model/Media;)V
    .param p1    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onPickVideoTemplate()V
.end method
