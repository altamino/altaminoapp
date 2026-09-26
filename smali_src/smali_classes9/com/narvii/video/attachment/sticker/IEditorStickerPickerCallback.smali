.class public interface abstract Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract forsakePreviewSticker()V
.end method

.method public abstract onBlockedInstallingSticker()V
.end method

.method public abstract onStickerInstallFailed()V
.end method

.method public abstract savePreviewSticker()V
.end method

.method public abstract setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
