.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->a(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->access$101(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .line 18
    const-string v1, "dismiss"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :goto_0
    return-void
.end method
