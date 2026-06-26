.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$2;
.super Ljava/lang/Object;
.source "SharedStickerCollectionPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;Ljava/util/List;I)V
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

    .line 103
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$2;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$2;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    return-void
.end method
