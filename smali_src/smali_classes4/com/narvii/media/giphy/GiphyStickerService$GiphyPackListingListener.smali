.class public interface abstract Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/giphy/GiphyStickerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GiphyPackListingListener"
.end annotation


# virtual methods
.method public abstract onGiphyPackListLoaded(Ljava/util/ArrayList;)V
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/giphy/GiphyPack;",
            ">;)V"
        }
    .end annotation
.end method
