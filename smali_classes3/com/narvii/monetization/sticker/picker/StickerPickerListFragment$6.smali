.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$6;
.super Ljava/lang/Object;
.source "StickerPickerListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$6;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 324
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$6;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$200(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$6;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method
