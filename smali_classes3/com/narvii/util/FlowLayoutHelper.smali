.class public abstract Lcom/narvii/util/FlowLayoutHelper;
.super Ljava/lang/Object;
.source "FlowLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createChildView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract updateChildView(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public updateList(Lcom/narvii/util/layouts/NVFlowLayout;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/layouts/NVFlowLayout;",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {p2}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 18
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int v1, p3, v0

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x0

    if-ge p3, v0, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    if-eqz p3, :cond_3

    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/util/FlowLayoutHelper;->createChildView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 25
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 29
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-eq p3, v0, :cond_5

    const-string p1, "assert"

    .line 30
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_4
    if-ge v2, v0, :cond_6

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/narvii/util/FlowLayoutHelper;->updateChildView(Landroid/view/View;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method
