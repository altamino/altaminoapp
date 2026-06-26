.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "StickerPickerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserCreatedInfoAdapter"
.end annotation


# instance fields
.field private cell:Landroid/view/View;

.field storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 544
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 577
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    if-nez p1, :cond_0

    const p1, 0x7f0b0656

    .line 578
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    .line 580
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    const p2, 0x7f09074d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 581
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$400(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    .line 582
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setTextColor(I)V

    .line 584
    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 585
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 588
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    const p3, 0x7f0900e0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 589
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090764

    .line 591
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 592
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOriginalAuthor()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v2, v1

    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x1

    if-eqz v0, :cond_3

    .line 594
    invoke-virtual {v0, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 596
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    const v0, 0x7f090c0e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 597
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    const v1, 0x7f0f111b

    new-array p3, p3, [Ljava/lang/Object;

    sget-object v2, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-object v3, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-wide v3, v3, Lcom/narvii/monetization/sticker/model/StickerCollection;->usedCount:J

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, p2

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$200(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p3, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->showStickerCollectionUsedTimes(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result p3

    invoke-static {p1, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 599
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    const p3, 0x7f090ace

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/StoreItemStatusView;

    .line 602
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-boolean v0, p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    if-eqz v0, :cond_6

    iget-object p3, p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p3, p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-boolean p3, p3, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    if-nez p3, :cond_6

    .line 603
    :cond_4
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    if-nez p3, :cond_5

    .line 604
    new-instance p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p3, p0, v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    iput-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 637
    :cond_5
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 638
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 639
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    const-string p2, "Keyboard"

    iput-object p2, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/16 p2, 0x8

    .line 641
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 643
    :cond_7
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$200(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p3, p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 644
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    const p3, 0x7f0903c0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 645
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    if-eqz p5, :cond_2

    .line 565
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903c0

    if-ne v0, v1, :cond_0

    .line 566
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$200(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    const/4 p1, 0x1

    return p1

    .line 568
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09074d

    if-eq v0, v1, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900e0

    if-eq v0, v1, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c0e

    if-ne v0, v1, :cond_2

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$200(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)V

    .line 572
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
