.class public abstract Lcom/narvii/list/HideTopAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "HideTopAdapter.java"


# static fields
.field public static final TOP_ITEM:Ljava/lang/Object;


# instance fields
.field private hided:Z

.field private inited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "TOP"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/HideTopAdapter;->TOP_ITEM:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/list/HideTopAdapter;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 54
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    if-nez v0, :cond_0

    .line 61
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 64
    sget-object p1, Lcom/narvii/list/HideTopAdapter;->TOP_ITEM:Ljava/lang/Object;

    return-object p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 66
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    if-nez v0, :cond_0

    .line 72
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez p1, :cond_1

    .line 75
    sget-object p1, Lcom/narvii/list/HideTopAdapter;->TOP_ITEM:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 77
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 99
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemViewType(I)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 105
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemViewType(I)I

    move-result p1

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, p1, 0x1

    :goto_1
    return v1
.end method

.method public abstract getTopView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 111
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 112
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->inited:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/ProxyAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/HideTopAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_1

    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 114
    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    .line 115
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 116
    new-instance v2, Lcom/narvii/list/HideTopAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/list/HideTopAdapter$1;-><init>(Lcom/narvii/list/HideTopAdapter;Landroid/widget/ListView;)V

    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 124
    iput-boolean v1, p0, Lcom/narvii/list/HideTopAdapter;->inited:Z

    goto :goto_0

    :cond_0
    const-string v0, "HideTopAdapter must be the root adapter"

    .line 126
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 129
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    .line 132
    invoke-virtual {p0, p3, p2}, Lcom/narvii/list/HideTopAdapter;->getTopView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    sub-int/2addr p1, v1

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    if-nez v0, :cond_0

    .line 83
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 88
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 140
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    if-nez v0, :cond_0

    .line 141
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    if-lez p2, :cond_1

    add-int/lit8 v2, p2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 145
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 154
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    if-nez v0, :cond_0

    .line 155
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    if-lez p2, :cond_1

    add-int/lit8 v2, p2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 159
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "_hided"

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 44
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    iget-boolean v1, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    const-string v2, "_hided"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
