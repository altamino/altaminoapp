.class Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 13
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->error:Ljava/lang/String;

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "StickerPackList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 2
    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->getItem(I)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->getItem(I)Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->getItem(I)Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d0701

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    check-cast p2, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 17
    .line 18
    .line 19
    const p3, 0x7f0a04b2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->notAvailable()Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {p3, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-object p2
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->x(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V

    .line 9
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    move-object p1, p3

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 8
    const/4 p2, 0x1

    .line 9
    .line 10
    if-nez p5, :cond_0

    .line 11
    .line 12
    sget-object p4, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p3, p4}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 16
    .line 17
    iget-object p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 18
    .line 19
    const-string p4, "Management"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p1, p4}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)V

    .line 23
    return p2

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 27
    move-result p3

    .line 28
    .line 29
    .line 30
    const p4, 0x7f0a04b2

    .line 31
    .line 32
    if-ne p3, p4, :cond_1

    .line 33
    .line 34
    iget-object p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 38
    :cond_1
    return p2

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 42
    move-result p1

    .line 43
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->w(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V

    .line 14
    return-void
.end method
