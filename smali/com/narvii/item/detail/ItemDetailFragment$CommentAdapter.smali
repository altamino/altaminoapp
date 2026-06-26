.class Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "ItemDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/ItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentAdapter"
.end annotation


# instance fields
.field flHeight:I

.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 1

    .line 1466
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 1467
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Page Detailed View"

    .line 1468
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 1469
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const-string v0, "loggingOrigin"

    .line 1470
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1472
    invoke-static {p1}, Lcom/narvii/util/logging/LoggingOrigin;->valueOf(Ljava/lang/String;)Lcom/narvii/util/logging/LoggingOrigin;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    :cond_0
    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected firstLoadingHeight()I
    .locals 1

    .line 1535
    iget v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->flHeight:I

    return v0
.end method

.method public getCount()I
    .locals 3

    .line 1488
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3200(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1491
    :cond_0
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getCount()I

    move-result v0

    .line 1492
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    .line 1493
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    return v0
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1520
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_0

    .line 1521
    new-instance p1, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    invoke-direct {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;-><init>()V

    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 1522
    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->feed(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p1

    const/4 p2, 0x2

    .line 1523
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->type(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const-string p3, "id"

    .line 1524
    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->id(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p1

    const-string p2, "Page Detailed View"

    .line 1525
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p1

    .line 1526
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1527
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 1530
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/comment/list/CommentListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    .line 1540
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const/16 v1, 0x6f

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public showListEnd(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
