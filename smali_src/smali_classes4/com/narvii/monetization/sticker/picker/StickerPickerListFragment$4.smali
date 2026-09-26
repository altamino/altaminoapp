.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;
.super Lcom/narvii/list/SimpleViewAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;->val$divideColumnAdapter:Lcom/narvii/list/DivideColumnAdapter;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/list/SimpleViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;->val$divideColumnAdapter:Lcom/narvii/list/DivideColumnAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/DivideColumnAdapter;->getCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0704

    return v0
.end method
