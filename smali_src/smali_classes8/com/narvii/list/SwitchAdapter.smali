.class public Lcom/narvii/list/SwitchAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance p1, Ljava/util/HashSet;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    .line 18
    return-void
.end method

.method private piecesHash()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    :goto_0
    iget-object v2, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v2

    .line 22
    .line 23
    if-ge v1, v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Landroid/widget/ListAdapter;

    .line 32
    .line 33
    const/16 v3, 0x3b

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method


# virtual methods
.method public addAdapter(Landroid/widget/ListAdapter;Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    iget-boolean p2, p0, Lcom/narvii/list/SwitchAdapter;->isAttached:Z

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    instance-of p2, p1, Lcom/narvii/list/NVAdapter;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/list/NVAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x1

    .line 33
    .line 34
    if-ne p1, p2, :cond_1

    .line 35
    const/4 p1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 39
    :cond_1
    return-void
.end method

.method public getAdapterIndex()I
    .locals 1

    iget v0, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 13
    const/4 v4, -0x1

    .line 14
    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    check-cast v3, Landroid/widget/ListAdapter;

    .line 22
    .line 23
    iget v5, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    .line 24
    .line 25
    add-int/lit8 v6, v1, 0x1

    .line 26
    .line 27
    if-ne v5, v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {v3, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 31
    move-result p1

    .line 32
    .line 33
    if-gez p1, :cond_0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    add-int v4, p1, v2

    .line 37
    :goto_1
    return v4

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-interface {v3}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 41
    move-result v1

    .line 42
    add-int/2addr v2, v1

    .line 43
    move v1, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v4
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Landroid/widget/ListAdapter;

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    if-nez v1, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1
    return v1
.end method

.method public onAttach()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/list/SwitchAdapter;->isAttached:Z

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/ListAdapter;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Landroid/widget/ListAdapter;

    .line 47
    .line 48
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    check-cast v1, Lcom/narvii/list/NVAdapter;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroid/widget/ListAdapter;

    .line 19
    .line 20
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/list/NVAdapter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/narvii/list/SwitchAdapter;->isAttached:Z

    .line 32
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/SwitchAdapter;->piecesHash()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "piecesHash"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v3, "switch adapter cannot restore instance state: pieces doesn\'t match ("

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, " != "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, ")"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    .line 52
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v1

    .line 57
    .line 58
    if-ge v0, v1, :cond_2

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Landroid/widget/ListAdapter;

    .line 67
    .line 68
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v3, "adapter"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    check-cast v1, Lcom/narvii/list/NVAdapter;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 99
    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_2
    const-string v0, "index"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 107
    move-result p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 111
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    const-string v1, "piecesHash"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/list/SwitchAdapter;->piecesHash()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v1, "index"

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    :goto_0
    iget-object v2, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v2

    .line 29
    .line 30
    if-ge v1, v2, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Landroid/widget/ListAdapter;

    .line 39
    .line 40
    instance-of v3, v2, Lcom/narvii/list/NVAdapter;

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    check-cast v2, Lcom/narvii/list/NVAdapter;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    const-string v4, "adapter"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-object v0
.end method

.method public setAdapter(I)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->pieces:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iput v0, p0, Lcom/narvii/list/SwitchAdapter;->index:I

    iget-boolean v0, p0, Lcom/narvii/list/SwitchAdapter;->isAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/list/SwitchAdapter;->attaches:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
