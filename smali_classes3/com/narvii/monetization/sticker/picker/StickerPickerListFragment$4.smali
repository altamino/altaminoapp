.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;
.super Lcom/narvii/list/SimpleViewAdapter;
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

.field final synthetic val$divideColumnAdapter:Lcom/narvii/list/DivideColumnAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/list/DivideColumnAdapter;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iput-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;->val$divideColumnAdapter:Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/list/SimpleViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;->val$divideColumnAdapter:Lcom/narvii/list/DivideColumnAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/DivideColumnAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b064d

    return v0
.end method
