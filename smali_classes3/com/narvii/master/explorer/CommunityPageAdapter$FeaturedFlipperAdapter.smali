.class Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;
.super Ljava/lang/Object;
.source "CommunityPageAdapter.java"

# interfaces
.implements Lcom/narvii/widget/Flipper$FlipperAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/explorer/CommunityPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeaturedFlipperAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/widget/Flipper$FlipperAdapter<",
        "Lcom/narvii/master/explorer/CommunityCollection;",
        ">;"
    }
.end annotation


# instance fields
.field flipper:Lcom/narvii/widget/Flipper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/widget/Flipper<",
            "Lcom/narvii/master/explorer/CommunityCollection;",
            ">;"
        }
    .end annotation
.end field

.field inflater:Landroid/view/LayoutInflater;

.field private isFragmentResume:Z

.field private isFragmentVisible:Z

.field private isVisibleInListView:Z

.field item:Lcom/narvii/master/explorer/CommunityCollection;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/master/explorer/CommunityCollection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/explorer/CommunityPageAdapter;Lcom/narvii/widget/Flipper;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/widget/Flipper<",
            "Lcom/narvii/master/explorer/CommunityCollection;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/master/explorer/CommunityCollection;",
            ">;)V"
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x1

    .line 383
    iput-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->isFragmentVisible:Z

    .line 384
    iput-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->isVisibleInListView:Z

    .line 385
    iput-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->isFragmentResume:Z

    .line 389
    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->flipper:Lcom/narvii/widget/Flipper;

    .line 390
    iput-object p3, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->list:Ljava/util/List;

    .line 391
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->flipper:Lcom/narvii/widget/Flipper;

    const/16 p2, 0xbb8

    invoke-virtual {p1, p2}, Lcom/narvii/widget/Flipper;->startAutoFlip(I)V

    :cond_0
    return-void
.end method

.method private setAutoScroll(Z)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->flipper:Lcom/narvii/widget/Flipper;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 414
    iget-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->isVisibleInListView:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->isFragmentVisible:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->isFragmentResume:Z

    if-eqz p1, :cond_0

    .line 415
    iget-boolean p1, v0, Lcom/narvii/widget/Flipper;->autoFilp:Z

    if-nez p1, :cond_1

    .line 416
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 417
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->flipper:Lcom/narvii/widget/Flipper;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/narvii/widget/Flipper;->startAutoFlip(I)V

    goto :goto_0

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->flipper:Lcom/narvii/widget/Flipper;

    iget-boolean v0, p1, Lcom/narvii/widget/Flipper;->autoFilp:Z

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {p1}, Lcom/narvii/widget/Flipper;->stopAutoFlip()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getNextItem(Lcom/narvii/master/explorer/CommunityCollection;)Lcom/narvii/master/explorer/CommunityCollection;
    .locals 6

    .line 444
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_2

    .line 449
    iget-object v4, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/master/explorer/CommunityCollection;

    iget-object v4, v4, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    iget-object v5, p1, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->list:Ljava/util/List;

    add-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 453
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->list:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    return-object p1
.end method

.method public bridge synthetic getNextItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 379
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->getNextItem(Lcom/narvii/master/explorer/CommunityCollection;)Lcom/narvii/master/explorer/CommunityCollection;

    move-result-object p1

    return-object p1
.end method

.method public getPreviousItem(Lcom/narvii/master/explorer/CommunityCollection;)Lcom/narvii/master/explorer/CommunityCollection;
    .locals 5

    .line 430
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 435
    iget-object v3, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/master/explorer/CommunityCollection;

    iget-object v3, v3, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    iget-object v4, p1, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->list:Ljava/util/List;

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->list:Ljava/util/List;

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    return-object p1
.end method

.method public bridge synthetic getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 379
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->getPreviousItem(Lcom/narvii/master/explorer/CommunityCollection;)Lcom/narvii/master/explorer/CommunityCollection;

    move-result-object p1

    return-object p1
.end method

.method public getView(Lcom/narvii/master/explorer/CommunityCollection;Landroid/view/View;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 460
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0350

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 462
    :cond_0
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->mediaMapping:Lcom/narvii/master/explorer/MediaMap;

    const v2, 0x7f090431

    if-eqz v1, :cond_1

    .line 463
    iget-object v3, v1, Lcom/narvii/master/explorer/MediaMap;->coverImages:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 464
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVImageView;

    const v4, 0x7f09040c

    .line 465
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 466
    new-instance v5, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter$1;

    invoke-direct {v5, p0, v4}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter$1;-><init>(Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 474
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    iget-object v1, v1, Lcom/narvii/master/explorer/MediaMap;->coverImages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 479
    :goto_0
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/narvii/master/explorer/PageUI;->displayMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 480
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->community:Lcom/narvii/model/Community;

    invoke-static {v0, p2, v1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->access$000(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_1

    .line 482
    :cond_2
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-static {v1, p2, v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->access$100(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/lang/Object;)V

    .line 485
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_3

    .line 487
    invoke-virtual {p1}, Lcom/narvii/master/explorer/CommunityCollection;->id()Ljava/lang/String;

    move-result-object p1

    const-string v1, "collectionId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-static {p1, p2, v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->access$200(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/util/HashMap;)V

    return-object p2
.end method

.method public bridge synthetic getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 379
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->getView(Lcom/narvii/master/explorer/CommunityCollection;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMoved(Lcom/narvii/master/explorer/CommunityCollection;Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 0

    .line 503
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/list/NVListFragment;

    if-eqz p1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/NVListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->logImpressionQuit()V

    .line 505
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/NVListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->logImpression()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onMoved(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 379
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    check-cast p2, Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->onMoved(Lcom/narvii/master/explorer/CommunityCollection;Lcom/narvii/master/explorer/CommunityCollection;)V

    return-void
.end method

.method public onMoving(Lcom/narvii/master/explorer/CommunityCollection;Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onMoving(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 379
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    check-cast p2, Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->onMoving(Lcom/narvii/master/explorer/CommunityCollection;Lcom/narvii/master/explorer/CommunityCollection;)V

    return-void
.end method

.method public onTap(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-static {v0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->access$300(Lcom/narvii/master/explorer/CommunityPageAdapter;Lcom/narvii/master/explorer/CommunityCollection;)V

    return-void
.end method

.method public bridge synthetic onTap(Ljava/lang/Object;)V
    .locals 0

    .line 379
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->onTap(Lcom/narvii/master/explorer/CommunityCollection;)V

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setFragmentResume(Z)V
    .locals 0

    .line 402
    iput-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->isFragmentResume:Z

    .line 403
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setAutoScroll(Z)V

    return-void
.end method

.method public setFragmentVisible(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->isFragmentVisible:Z

    .line 398
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setAutoScroll(Z)V

    return-void
.end method

.method public setVisibleInListView(Z)V
    .locals 0

    .line 408
    iput-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->isVisibleInListView:Z

    .line 409
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setAutoScroll(Z)V

    return-void
.end method
