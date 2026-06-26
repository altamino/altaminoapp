.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3$1;
.super Ljava/lang/Object;
.source "SharedStickerCollectionPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->access$100(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V

    .line 210
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->access$201(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dismiss"

    .line 212
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
