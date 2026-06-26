.class public interface abstract Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
.super Ljava/lang/Object;
.source "VideoManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/services/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IInstallStickerCallback"
.end annotation


# virtual methods
.method public abstract onStickerInstallFailed(Lcom/narvii/model/Sticker;)V
.end method

.method public abstract onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V
.end method

.method public abstract onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V
.end method
