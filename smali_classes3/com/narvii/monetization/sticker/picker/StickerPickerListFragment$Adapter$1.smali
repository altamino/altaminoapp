.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;
.super Ljava/lang/Object;
.source "StickerPickerListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

.field final synthetic val$sticker:Lcom/narvii/model/Sticker;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;->val$sticker:Lcom/narvii/model/Sticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 733
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;->val$sticker:Lcom/narvii/model/Sticker;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 734
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;->val$sticker:Lcom/narvii/model/Sticker;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 735
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;->val$sticker:Lcom/narvii/model/Sticker;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/monetization/sticker/StickerService;->removeSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 730
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
