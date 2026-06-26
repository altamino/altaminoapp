.class public interface abstract Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;
.super Ljava/lang/Object;
.source "GiphyStickerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/giphy/GiphyStickerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GiphyStickerDownloadListener"
.end annotation


# virtual methods
.method public abstract onGiphyStickerLoadFailed(Lcom/narvii/media/giphy/GiphyItem;)V
.end method

.method public abstract onGiphyStickerLoaded(Ljava/io/File;Lcom/narvii/media/giphy/GiphyItem;)V
.end method
