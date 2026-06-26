.class public final Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;
.super Ljava/lang/Object;
.source "EditorStickerPickerTabFragment.kt"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGiphyStickerSelected(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 1

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    invoke-static {v0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->access$setCurrentSticker$p(Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/media/giphy/GiphyItem;)V

    return-void
.end method
