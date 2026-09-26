.class public abstract Lcom/narvii/list/HideTopAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SourceFile"


# static fields
.field public static final TOP_ITEM:Ljava/lang/Object;


# instance fields
.field private hided:Z

.field private inited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "TOP"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/list/HideTopAdapter;->TOP_ITEM:Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/list/HideTopAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getCount()I

    .line 8
    move-result v0

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    return v0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getCount()I

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    sget-object p1, Lcom/narvii/list/HideTopAdapter;->TOP_ITEM:Ljava/lang/Object;

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemId(I)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    sget-object p1, Lcom/narvii/list/HideTopAdapter;->TOP_ITEM:Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 17
    move-result p1

    .line 18
    int-to-long v0, p1

    .line 19
    return-wide v0

    .line 20
    .line 21
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemId(I)J

    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemViewType(I)I

    .line 9
    move-result p1

    .line 10
    .line 11
    if-gez p1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 15
    :goto_0
    return v1

    .line 16
    .line 17
    :cond_1
    if-nez p1, :cond_2

    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    .line 21
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemViewType(I)I

    .line 25
    move-result p1

    .line 26
    .line 27
    if-gez p1, :cond_3

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 31
    :goto_1
    return v1
.end method

.method public abstract getTopView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->inited:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/ProxyAdapter;->isListShown()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/HideTopAdapter;->getCount()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-le v0, v1, :cond_1

    .line 22
    .line 23
    instance-of v0, p3, Landroid/widget/ListView;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    move-object v0, p3

    .line 27
    .line 28
    check-cast v0, Landroid/widget/ListView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    if-ne v2, p0, :cond_0

    .line 35
    .line 36
    new-instance v2, Lcom/narvii/list/HideTopAdapter$1;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, p0, v0}, Lcom/narvii/list/HideTopAdapter$1;-><init>(Lcom/narvii/list/HideTopAdapter;Landroid/widget/ListView;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/narvii/list/HideTopAdapter;->inited:Z

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    const-string v0, "HideTopAdapter must be the root adapter"

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    .line 57
    :cond_2
    if-nez p1, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p3, p2}, Lcom/narvii/list/HideTopAdapter;->getTopView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_3
    sub-int/2addr p1, v1

    .line 64
    .line 65
    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getViewTypeCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->isEnabled(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    .line 15
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->isEnabled(I)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    if-lez p2, :cond_1

    .line 12
    .line 13
    add-int/lit8 v2, p2, -0x1

    .line 14
    move-object v0, p0

    .line 15
    move-object v1, p1

    .line 16
    move-object v3, p3

    .line 17
    move-object v4, p4

    .line 18
    move-object v5, p5

    .line 19
    .line 20
    .line 21
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    if-lez p2, :cond_1

    .line 12
    .line 13
    add-int/lit8 v2, p2, -0x1

    .line 14
    move-object v0, p0

    .line 15
    move-object v1, p1

    .line 16
    move-object v3, p3

    .line 17
    move-object v4, p4

    .line 18
    move-object v5, p5

    .line 19
    .line 20
    .line 21
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "_hided"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    .line 15
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "_hided"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/narvii/list/HideTopAdapter;->hided:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    return-object v0
.end method
