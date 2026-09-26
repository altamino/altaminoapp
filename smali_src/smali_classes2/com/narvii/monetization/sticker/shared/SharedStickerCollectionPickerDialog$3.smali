.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3$1;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
