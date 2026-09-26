.class public final Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/EditorStickerPickerTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGiphyStickerSelected(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 1
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->access$setCurrentSticker$p(Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/media/giphy/GiphyItem;)V

    .line 11
    return-void
.end method
