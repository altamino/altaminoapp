.class public Lcom/narvii/list/SectionDivideColumnAdapter;
.super Lcom/narvii/list/DivideColumnAdapter;
.source "SectionDivideColumnAdapter.java"


# instance fields
.field positionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/SectionDivideColumnAdapter;->positionMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/SectionDivideColumnAdapter;->positionMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;IIII)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/SectionDivideColumnAdapter;->positionMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected fullWidth(Ljava/lang/Object;)Z
    .locals 0

    .line 58
    instance-of p1, p1, Lcom/narvii/date/DateSection;

    return p1
.end method

.method public getCount()I
    .locals 7

    .line 31
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 35
    iget-object v5, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v5, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    invoke-virtual {p0, v5}, Lcom/narvii/list/SectionDivideColumnAdapter;->fullWidth(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    iget-object v4, p0, Lcom/narvii/list/SectionDivideColumnAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 41
    :cond_1
    iget v5, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x0

    :cond_2
    if-nez v4, :cond_3

    .line 45
    iget-object v5, p0, Lcom/narvii/list/SectionDivideColumnAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/SectionDivideColumnAdapter;->startPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/list/SectionDivideColumnAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/date/DateSection;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/list/SectionDivideColumnAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/date/DateSection;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/narvii/list/SectionDivideColumnAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/DivideColumnAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected startPosition(I)I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/list/SectionDivideColumnAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
