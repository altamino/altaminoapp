.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;
.super Lcom/narvii/adapter/NVPagerStatusAdapter;
.source "LiveLayerDetailBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EmptyAdapter"
.end annotation


# instance fields
.field protected adapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/list/NVAdapter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 480
    invoke-direct {p0, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 483
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->adapters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSubViewAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->adapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 5

    .line 487
    invoke-super {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->adapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/list/NVAdapter;

    .line 494
    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v4

    goto :goto_0

    :cond_2
    return v3
.end method

.method protected getMinHeight()I
    .locals 3

    .line 501
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 502
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    iget-object v1, v1, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 503
    :goto_0
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-static {v2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->access$500(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/overlay/OverlayLayout;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-static {v2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->access$500(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/overlay/OverlayLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    :goto_1
    sub-int/2addr v0, v2

    .line 504
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onEmptyClickRetry()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onRefresh()V

    return-void
.end method
