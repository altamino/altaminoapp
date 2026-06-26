.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$3;
.super Lcom/narvii/list/MergeAdapter;
.source "StickerPickerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v1, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$000(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
