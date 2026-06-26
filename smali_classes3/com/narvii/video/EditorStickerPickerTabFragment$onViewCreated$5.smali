.class final Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$5;
.super Ljava/lang/Object;
.source "EditorStickerPickerTabFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/EditorStickerPickerTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $sticker:Lcom/narvii/media/giphy/GiphyItem;

.field final synthetic $stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

.field final synthetic this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$5;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    iput-object p2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$5;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iput-object p3, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$5;->$sticker:Lcom/narvii/media/giphy/GiphyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 105
    new-instance v0, Lcom/narvii/media/giphy/GiphyPack;

    invoke-direct {v0}, Lcom/narvii/media/giphy/GiphyPack;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$5;->$stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v1, v1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/media/giphy/GiphyPack;->id:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$5;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    invoke-virtual {v1, v0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->selectStickerCollection(Lcom/narvii/media/giphy/GiphyPack;)V

    .line 108
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$5;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$5;->$sticker:Lcom/narvii/media/giphy/GiphyItem;

    invoke-virtual {v0, v1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/media/giphy/GiphyItem;)V

    return-void
.end method
