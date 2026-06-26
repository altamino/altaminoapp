.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$1;
.super Ljava/lang/Object;
.source "SharedStickerCollectionPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$1;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$1;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    iget-object v1, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selectListener:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;

    if-eqz v1, :cond_0

    .line 54
    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selected:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-interface {v1, v0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;->onStickerCollectionSelected(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$1;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    return-void
.end method
