.class public abstract Lcom/narvii/util/FlowLayoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p2}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    if-ne p3, v1, :cond_1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result p3

    .line 20
    .line 21
    sub-int v1, p3, v0

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    if-ge p3, v0, :cond_2

    .line 29
    const/4 p3, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move p3, v2

    .line 32
    :goto_1
    move v3, v2

    .line 33
    .line 34
    :goto_2
    if-ge v3, v1, :cond_4

    .line 35
    .line 36
    if-eqz p3, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/util/FlowLayoutHelper;->createChildView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    goto :goto_3

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 48
    .line 49
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_2

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    move-result p3

    .line 55
    .line 56
    if-eq p3, v0, :cond_5

    .line 57
    .line 58
    const-string p1, "assert"

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 62
    return-void

    .line 63
    .line 64
    :cond_5
    :goto_4
    if-ge v2, v0, :cond_6

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    .line 71
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p3, v1}, Lcom/narvii/util/FlowLayoutHelper;->updateChildView(Landroid/view/View;Ljava/lang/Object;)V

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto :goto_4

    .line 79
    :cond_6
    return-void
.end method
