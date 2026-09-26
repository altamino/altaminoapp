.class public abstract Lcom/narvii/logging/Impression/ImpressionCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected adapter:Lcom/narvii/logging/Area;

.field protected clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected index:I

.field lastImpressionObjectPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected listView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/narvii/list/NVPagedAdapter;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->lastImpressionObjectPosMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->getDataClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->lastImpressionObjectPosMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->clazz:Ljava/lang/Class;

    return-void
.end method

.method private getCurrentImpressionList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/logging/ObjectInfo<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, -0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->isListViewVisible()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object v3, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v3

    .line 26
    .line 27
    if-ge v2, v3, :cond_0

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3, v0}, Lcom/narvii/logging/Impression/ImpressionCollector;->findImpressionObject(Landroid/view/View;Ljava/util/List;)V

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iput v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    .line 42
    return-object v0
.end method


# virtual methods
.method protected addImpressionCell(Landroid/view/View;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/narvii/logging/ObjectInfo<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->checkCellAdapterWhenAdd()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getShownInAdapter(Landroid/view/View;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    .line 27
    .line 28
    if-ne v1, v2, :cond_2

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getAttachedObject(Landroid/view/View;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->clazz:Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/model/NVObject;

    .line 43
    .line 44
    iget v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    .line 45
    const/4 v2, 0x1

    .line 46
    add-int/2addr v0, v2

    .line 47
    .line 48
    iput v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    .line 49
    .line 50
    new-instance v3, Lcom/narvii/logging/ObjectInfo;

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v1, v0}, Lcom/narvii/logging/ObjectInfo;-><init>(Lcom/narvii/model/NVObject;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v3}, Lcom/narvii/logging/Impression/ImpressionCollector;->setExtraMap(Landroid/view/View;Lcom/narvii/logging/ObjectInfo;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, v3}, Lcom/narvii/logging/Impression/ImpressionCollector;->setLocalMap(Landroid/view/View;Lcom/narvii/logging/ObjectInfo;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return v2

    .line 64
    :cond_2
    :goto_0
    return v0
.end method

.method protected checkCellAdapterWhenAdd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearImpressionList()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->lastImpressionObjectPosMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    return-void
.end method

.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract findImpressionObject(Landroid/view/View;Ljava/util/List;)V
.end method

.method public getAdapter()Lcom/narvii/logging/Area;
    .locals 1

    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    return-object v0
.end method

.method public getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->getCurrentImpressionList()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lcom/narvii/logging/ObjectInfo;

    .line 25
    .line 26
    iget-object v3, v2, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    .line 27
    .line 28
    if-ne v3, p1, :cond_1

    .line 29
    return-object v2

    .line 30
    :cond_2
    return-object v0
.end method

.method public getNewImpressionList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/logging/ObjectInfo<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->getCurrentImpressionList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Lcom/narvii/logging/ObjectInfo;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->lastImpressionObjectPosMap:Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/narvii/logging/Impression/ImpressionCollector;->getObjectKey(Lcom/narvii/logging/ObjectInfo;)Ljava/lang/String;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    check-cast v4, Ljava/lang/Integer;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v4

    .line 44
    .line 45
    iget v5, v3, Lcom/narvii/logging/ObjectInfo;->screenPos:I

    .line 46
    .line 47
    if-ne v4, v5, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0, v3}, Lcom/narvii/logging/Impression/ImpressionCollector;->getObjectKey(Lcom/narvii/logging/ObjectInfo;)Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    iget v3, v3, Lcom/narvii/logging/ObjectInfo;->screenPos:I

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    iput-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->lastImpressionObjectPosMap:Ljava/util/HashMap;

    .line 67
    return-object v0
.end method

.method protected getObjectKey(Lcom/narvii/logging/ObjectInfo;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/ObjectInfo<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected isListViewVisible()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public setAdapter(Lcom/narvii/logging/Area;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    return-void
.end method

.method protected setExtraMap(Landroid/view/View;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->_extra_map:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    instance-of v0, p1, Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/narvii/logging/ObjectInfo;->setExtraInfo(Ljava/util/HashMap;)V

    .line 16
    :cond_0
    return-void
.end method

.method public setListView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    return-void
.end method

.method protected setLocalMap(Landroid/view/View;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->_local_map:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    instance-of v0, p1, Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/narvii/logging/ObjectInfo;->setLocalHashMap(Ljava/util/HashMap;)V

    .line 16
    :cond_0
    return-void
.end method
