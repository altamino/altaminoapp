.class Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "StickerCollectionManageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StickerListAdapter"
.end annotation


# instance fields
.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 354
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 355
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    iget-object v1, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 376
    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->error:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "StickerPackList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->getItem(I)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 419
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->getItem(I)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 425
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->getItem(I)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    const v0, 0x7f0b064a

    .line 427
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;

    .line 428
    invoke-virtual {p2, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    const p3, 0x7f0903bb

    .line 430
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 431
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->notAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p3, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 432
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public isListShown()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 394
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 395
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->access$300(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 400
    instance-of v0, p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_2

    .line 401
    move-object p1, p3

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 p2, 0x1

    if-nez p5, :cond_0

    .line 403
    sget-object p4, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p4}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 404
    iget-object p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    const-string p4, "Management"

    invoke-virtual {p3, p1, p4}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)V

    return p2

    :cond_0
    if-eqz p5, :cond_1

    .line 407
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p3

    const p4, 0x7f0903bb

    if-ne p3, p4, :cond_1

    .line 408
    iget-object p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {p3, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    :cond_1
    return p2

    .line 413
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 388
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 389
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->access$200(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V

    return-void
.end method
