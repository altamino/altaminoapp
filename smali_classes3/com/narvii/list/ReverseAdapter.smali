.class public Lcom/narvii/list/ReverseAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "ReverseAdapter.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private getPos(I)I
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/ProxyAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/ProxyAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    move-result p1

    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    move-result p1

    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    move-result p1

    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    move-result p1

    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    move-result p1

    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 52
    invoke-direct {p0, p2}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 59
    invoke-direct {p0, p2}, Lcom/narvii/list/ReverseAdapter;->getPos(I)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
