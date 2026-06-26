.class public Lcom/narvii/list/SwitchAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SwitchAdapter.java"


# instance fields
.field private final attaches:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private isAttached:Z

.field private final pieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 18
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    return-void
.end method

.method private piecesHash()Ljava/lang/String;
    .locals 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    const/16 v3, 0x3b

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAdapter(Landroid/widget/ListAdapter;Z)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    iget-boolean p2, p0, Lcom/narvii/list/SwitchAdapter;->isAttached:Z

    if-eqz p2, :cond_0

    instance-of p2, p1, Lcom/narvii/list/NVAdapter;

    if-eqz p2, :cond_0

    .line 104
    check-cast p1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    :cond_1
    return-void
.end method

.method public getAdapterIndex()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 7

    .line 151
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListAdapter;

    .line 152
    iget v5, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    add-int/lit8 v6, v1, 0x1

    if-ne v5, v1, :cond_1

    .line 153
    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int v4, p1, v2

    :goto_1
    return v4

    .line 156
    :cond_1
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v2, v1

    move v1, v6

    goto :goto_0

    :cond_2
    return v4
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 143
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onAttach()V
    .locals 3

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/narvii/list/SwitchAdapter;->isAttached:Z

    .line 76
    iget v0, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    iget-object v1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    iget v1, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 78
    iget-object v1, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 81
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    if-eqz v2, :cond_1

    .line 82
    check-cast v1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->onAttach()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 90
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    if-eqz v2, :cond_0

    .line 91
    check-cast v1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->onDetach()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/narvii/list/SwitchAdapter;->isAttached:Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 26
    invoke-direct {p0}, Lcom/narvii/list/SwitchAdapter;->piecesHash()Ljava/lang/String;

    move-result-object v0

    const-string v1, "piecesHash"

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch adapter cannot restore instance state: pieces doesn\'t match ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 33
    iget-object v1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 34
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    if-eqz v2, :cond_1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 37
    check-cast v1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v1, v2}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "index"

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 5

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    invoke-direct {p0}, Lcom/narvii/list/SwitchAdapter;->piecesHash()Ljava/lang/String;

    move-result-object v1

    const-string v2, "piecesHash"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget v1, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 53
    instance-of v3, v2, Lcom/narvii/list/NVAdapter;

    if-eqz v3, :cond_0

    .line 54
    check-cast v2, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setAdapter(I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 119
    iput v0, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    .line 120
    iget-boolean v0, p0, Lcom/narvii/list/SwitchAdapter;->isAttached:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 124
    move-object v0, p1

    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 117
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
