.class public Lcom/narvii/list/select/SelectableAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SourceFile"


# instance fields
.field private inSelect:Z

.field private layoutId:I

.field private listener:Lcom/narvii/list/select/SelectableListener;

.field private overrideLongClick:Z

.field private final selections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final selections_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;IZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections_:Ljava/util/List;

    .line 17
    .line 18
    iput p2, p0, Lcom/narvii/list/select/SelectableAdapter;->layoutId:I

    .line 19
    .line 20
    iput-boolean p3, p0, Lcom/narvii/list/select/SelectableAdapter;->overrideLongClick:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected canSelect(ILjava/lang/Object;Z)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/list/select/SelectableSource;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/list/select/SelectableSource;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/list/select/SelectableSource;->canSelect(ILjava/lang/Object;Z)Z

    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    :goto_0
    return p1
.end method

.method public finishSelect()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/list/select/SelectableAdapter;->listener:Lcom/narvii/list/select/SelectableListener;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Lcom/narvii/list/select/SelectableListener;->onSelectModeChanged(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 23
    :cond_1
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p2, Lcom/narvii/list/select/SelectableFrame;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Lcom/narvii/list/select/SelectableFrame;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/narvii/list/select/SelectableAdapter;->layoutId:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/list/select/SelectableFrame;

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/list/select/SelectableFrame;->getView()Landroid/view/View;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p3, p2}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Lcom/narvii/list/select/SelectableFrame;->setView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelectable(ILjava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelected(Ljava/lang/Object;)Z

    .line 42
    move-result p3

    .line 43
    .line 44
    if-eqz p3, :cond_1

    .line 45
    move p3, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move p3, v0

    .line 48
    .line 49
    :goto_1
    iget-boolean v2, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    move v0, v1

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p2, v0, p3}, Lcom/narvii/list/select/SelectableFrame;->set(ZZ)V

    .line 58
    return-object p2
.end method

.method public inSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    return v0
.end method

.method protected isSelectable(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/list/select/SelectableSource;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/list/select/SelectableSource;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcom/narvii/list/select/SelectableSource;->isSelectable(ILjava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    :goto_0
    return p1
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    .line 14
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/NVObject;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelectable(ILjava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelected(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    const/4 p4, 0x1

    .line 16
    xor-int/2addr p1, p4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2, p3, p1}, Lcom/narvii/list/select/SelectableAdapter;->canSelect(ILjava/lang/Object;Z)Z

    .line 20
    move-result p2

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/select/SelectableAdapter;->onSelectionChanged(Ljava/lang/Object;Z)V

    .line 26
    :cond_0
    return p4

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->overrideLongClick:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return v1

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 19
    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelectable(ILjava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2, p3, v1}, Lcom/narvii/list/select/SelectableAdapter;->canSelect(ILjava/lang/Object;Z)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->listener:Lcom/narvii/list/select/SelectableListener;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v1}, Lcom/narvii/list/select/SelectableListener;->onSelectModeChanged(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelected(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p3, v1}, Lcom/narvii/list/select/SelectableAdapter;->onSelectionChanged(Ljava/lang/Object;Z)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 59
    return v1

    .line 60
    .line 61
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :cond_4
    const/4 p1, 0x0

    .line 70
    return p1
.end method

.method public onSelectionChanged(Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    instance-of v0, p1, Lcom/narvii/model/NVObject;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    .line 15
    move-object v1, p1

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/model/NVObject;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 25
    .line 26
    :cond_0
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->listener:Lcom/narvii/list/select/SelectableListener;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1, p2}, Lcom/narvii/list/select/SelectableListener;->onSelectionChanged(Ljava/lang/Object;Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public selections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->selections_:Ljava/util/List;

    return-object v0
.end method

.method public setListener(Lcom/narvii/list/select/SelectableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->listener:Lcom/narvii/list/select/SelectableListener;

    return-void
.end method

.method public startSelect(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->listener:Lcom/narvii/list/select/SelectableListener;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/narvii/list/select/SelectableListener;->onSelectModeChanged(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 26
    return-void
.end method
