.class public abstract Lcom/narvii/master/search/trending/FlowLayoutAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "FlowLayoutAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/narvii/list/AdriftAdapter;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowLayoutAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowLayoutAdapter.kt\ncom/narvii/master/search/trending/FlowLayoutAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1596#2,3:87\n*E\n*S KotlinDebug\n*F\n+ 1 FlowLayoutAdapter.kt\ncom/narvii/master/search/trending/FlowLayoutAdapter\n*L\n69#1,3:87\n*E\n"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract createChildView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected createMoreButton(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
    .locals 1

    const-string v0, "flowLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v0, 0x7f0b004d

    .line 33
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09049c

    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/layouts/NVFlowLayout;

    const-string v0, "flowLayout"

    .line 35
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->updateFlowLayout(Lcom/narvii/util/layouts/NVFlowLayout;)V

    const-string v0, "more_view"

    .line 37
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const v6, 0x7f09049d

    if-ge v5, v3, :cond_2

    .line 44
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 45
    invoke-virtual {v7, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "child"

    .line 46
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 50
    :cond_2
    iget-object v3, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 51
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    .line 53
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 55
    iget-object v6, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_3

    .line 56
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    :cond_4
    iget-object v3, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v3, v5, :cond_5

    .line 62
    iget-object v3, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    .line 63
    invoke-virtual {p0, p3}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->createChildView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 69
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    .line 88
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    if-ltz v4, :cond_6

    .line 70
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0, v3, v4}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->updateChildView(Ljava/lang/Object;Landroid/view/View;)V

    move v4, v5

    goto :goto_3

    .line 88
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1

    .line 73
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->hasMoreButton()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v1, :cond_8

    goto :goto_4

    .line 74
    :cond_8
    invoke-virtual {p0, p3}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->createMoreButton(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_9

    .line 76
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p3, v1}, Lcom/narvii/util/layouts/NVFlowLayout;->addMoreView(Landroid/view/View;)V

    .line 80
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->hasMoreButton()Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/narvii/util/layouts/NVFlowLayout;->setShowMore(Z)V

    const p1, 0x7f09000d

    const/4 p3, 0x1

    .line 82
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 83
    invoke-static {p2, p0}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    const-string p1, "cell"

    .line 84
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method protected hasMoreButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public abstract updateChildView(Ljava/lang/Object;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation
.end method

.method protected updateFlowLayout(Lcom/narvii/util/layouts/NVFlowLayout;)V
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
