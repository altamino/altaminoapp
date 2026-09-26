.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;
.super Lcom/narvii/adapter/NVPagerStatusAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->adapters:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public addSubViewAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->adapters:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public getCount()I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->adapters:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x1

    .line 16
    move v3, v2

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Lcom/narvii/list/NVAdapter;

    .line 29
    .line 30
    .line 31
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    .line 32
    move-result v4

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    move v4, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v4, v1

    .line 38
    :goto_1
    and-int/2addr v3, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return v3
.end method

.method protected getMinHeight()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getCount()I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    const/high16 v2, 0x43340000    # 180.0f

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 36
    move-result v1

    .line 37
    float-to-int v1, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    .line 41
    :goto_0
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->t(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/overlay/OverlayLayout;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 53
    move-result v2

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->t(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/overlay/OverlayLayout;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 64
    move-result v2

    .line 65
    :goto_1
    sub-int/2addr v0, v2

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 71
    move-result v2

    .line 72
    sub-int/2addr v0, v2

    .line 73
    .line 74
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 78
    move-result v2

    .line 79
    sub-int/2addr v0, v2

    .line 80
    sub-int/2addr v0, v1

    .line 81
    return v0
.end method

.method protected onEmptyClickRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onRefresh()V

    .line 6
    return-void
.end method
