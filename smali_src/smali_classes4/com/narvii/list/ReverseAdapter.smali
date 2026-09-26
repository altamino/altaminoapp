.class public Lcom/narvii/list/ReverseAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method

.method private getPos(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/ProxyAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p1

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/ProxyAdapter;->getCount()I

    .line 15
    move-result v0

    .line 16
    sub-int/2addr v0, p1

    .line 17
    .line 18
    add-int/lit8 p1, v0, -0x1

    .line 19
    :goto_0
    return p1
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemId(I)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemViewType(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->isEnabled(I)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    .line 4
    move-result v2

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    .line 11
    .line 12
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    .line 4
    move-result v2

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    .line 11
    .line 12
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method
