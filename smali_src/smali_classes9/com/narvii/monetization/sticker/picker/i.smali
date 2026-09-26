.class public final synthetic Lcom/narvii/monetization/sticker/picker/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/i;->a:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/i;->a:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->u(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
