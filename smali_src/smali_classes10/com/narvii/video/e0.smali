.class public final synthetic Lcom/narvii/video/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/model/StickerInfoPack;

.field public final synthetic b:Lcom/narvii/video/EditorStickerPickerTabFragment;

.field public final synthetic c:Lcom/narvii/media/giphy/GiphyItem;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/e0;->a:Lcom/narvii/video/model/StickerInfoPack;

    iput-object p2, p0, Lcom/narvii/video/e0;->b:Lcom/narvii/video/EditorStickerPickerTabFragment;

    iput-object p3, p0, Lcom/narvii/video/e0;->c:Lcom/narvii/media/giphy/GiphyItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/video/e0;->a:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v1, p0, Lcom/narvii/video/e0;->b:Lcom/narvii/video/EditorStickerPickerTabFragment;

    iget-object v2, p0, Lcom/narvii/video/e0;->c:Lcom/narvii/media/giphy/GiphyItem;

    invoke-static {v0, v1, v2}, Lcom/narvii/video/EditorStickerPickerTabFragment;->q(Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/media/giphy/GiphyItem;)V

    return-void
.end method
