.class public Lcom/narvii/list/select/SelectableAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SelectableAdapter.java"


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

    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    .line 24
    iget-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections_:Ljava/util/List;

    .line 29
    iput p2, p0, Lcom/narvii/list/select/SelectableAdapter;->layoutId:I

    .line 30
    iput-boolean p3, p0, Lcom/narvii/list/select/SelectableAdapter;->overrideLongClick:Z

    return-void
.end method


# virtual methods
.method protected canSelect(ILjava/lang/Object;Z)Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/select/SelectableSource;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/list/select/SelectableSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/list/select/SelectableSource;->canSelect(ILjava/lang/Object;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public finishSelect()V
    .locals 2

    .line 155
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 157
    iget-object v1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v1, p0, Lcom/narvii/list/select/SelectableAdapter;->listener:Lcom/narvii/list/select/SelectableListener;

    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v1, v0}, Lcom/narvii/list/select/SelectableListener;->onSelectModeChanged(Z)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 75
    instance-of v0, p2, Lcom/narvii/list/select/SelectableFrame;

    if-eqz v0, :cond_0

    .line 76
    check-cast p2, Lcom/narvii/list/select/SelectableFrame;

    goto :goto_0

    .line 78
    :cond_0
    iget v0, p0, Lcom/narvii/list/select/SelectableAdapter;->layoutId:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/list/select/SelectableFrame;

    .line 81
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/list/select/SelectableFrame;->getView()Landroid/view/View;

    move-result-object p3

    invoke-super {p0, p1, p3, p2}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 82
    invoke-virtual {p2, p3}, Lcom/narvii/list/select/SelectableFrame;->setView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    .line 85
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelectable(ILjava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelected(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 87
    :goto_1
    iget-boolean v2, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0, p3}, Lcom/narvii/list/select/SelectableFrame;->set(ZZ)V

    return-object p2
.end method

.method public inSelect()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    return v0
.end method

.method protected isSelectable(ILjava/lang/Object;)Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/select/SelectableSource;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/list/select/SelectableSource;

    invoke-interface {v0, p1, p2}, Lcom/narvii/list/select/SelectableSource;->isSelectable(ILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 49
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/NVObject;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    check-cast p1, Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelectable(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelected(Ljava/lang/Object;)Z

    move-result p1

    const/4 p4, 0x1

    xor-int/2addr p1, p4

    .line 104
    invoke-virtual {p0, p2, p3, p1}, Lcom/narvii/list/select/SelectableAdapter;->canSelect(ILjava/lang/Object;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/select/SelectableAdapter;->onSelectionChanged(Ljava/lang/Object;Z)V

    :cond_0
    return p4

    .line 109
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    if-nez v0, :cond_2

    .line 110
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->overrideLongClick:Z

    if-nez v0, :cond_0

    .line 119
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelectable(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2, p3, v1}, Lcom/narvii/list/select/SelectableAdapter;->canSelect(ILjava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    iput-boolean v1, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 125
    iget-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->listener:Lcom/narvii/list/select/SelectableListener;

    if-eqz p1, :cond_1

    .line 127
    invoke-interface {p1, v1}, Lcom/narvii/list/select/SelectableListener;->onSelectModeChanged(Z)V

    .line 129
    :cond_1
    invoke-virtual {p0, p3}, Lcom/narvii/list/select/SelectableAdapter;->isSelected(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 130
    invoke-virtual {p0, p3, v1}, Lcom/narvii/list/select/SelectableAdapter;->onSelectionChanged(Ljava/lang/Object;Z)V

    .line 132
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return v1

    .line 135
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    if-nez v0, :cond_4

    .line 136
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectionChanged(Ljava/lang/Object;Z)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/narvii/model/NVObject;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Lcom/narvii/model/NVObject;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 64
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->listener:Lcom/narvii/list/select/SelectableListener;

    if-eqz v0, :cond_2

    .line 67
    invoke-interface {v0, p1, p2}, Lcom/narvii/list/select/SelectableListener;->onSelectionChanged(Ljava/lang/Object;Z)V

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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

    .line 42
    iget-object v0, p0, Lcom/narvii/list/select/SelectableAdapter;->selections_:Ljava/util/List;

    return-object v0
.end method

.method public setListener(Lcom/narvii/list/select/SelectableListener;)V
    .locals 0

    .line 34
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

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/narvii/list/select/SelectableAdapter;->inSelect:Z

    .line 144
    iget-object v1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/narvii/list/select/SelectableAdapter;->selections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/select/SelectableAdapter;->listener:Lcom/narvii/list/select/SelectableListener;

    if-eqz p1, :cond_1

    .line 149
    invoke-interface {p1, v0}, Lcom/narvii/list/select/SelectableListener;->onSelectModeChanged(Z)V

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
