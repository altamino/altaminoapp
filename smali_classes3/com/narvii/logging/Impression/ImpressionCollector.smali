.class public abstract Lcom/narvii/logging/Impression/ImpressionCollector;
.super Ljava/lang/Object;
.source "ImpressionCollector.java"


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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->lastImpressionObjectPosMap:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    .line 46
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->lastImpressionObjectPosMap:Ljava/util/HashMap;

    .line 41
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

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 89
    iput v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    .line 90
    iget-object v2, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->isListViewVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 94
    invoke-virtual {p0, v3, v0}, Lcom/narvii/logging/Impression/ImpressionCollector;->findImpressionObject(Landroid/view/View;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iput v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

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

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->checkCellAdapterWhenAdd()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getShownInAdapter(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 120
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getAttachedObject(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    iget-object v3, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->clazz:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    check-cast v1, Lcom/narvii/model/NVObject;

    .line 123
    iget v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    .line 124
    new-instance v0, Lcom/narvii/logging/ObjectInfo;

    iget v3, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    invoke-direct {v0, v1, v3}, Lcom/narvii/logging/ObjectInfo;-><init>(Lcom/narvii/model/NVObject;I)V

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/narvii/logging/Impression/ImpressionCollector;->setExtraMap(Landroid/view/View;Lcom/narvii/logging/ObjectInfo;)V

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/narvii/logging/Impression/ImpressionCollector;->setLocalMap(Landroid/view/View;Lcom/narvii/logging/ObjectInfo;)V

    .line 127
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method protected checkCellAdapterWhenAdd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearImpressionList()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->lastImpressionObjectPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0
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

    .line 33
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    return-object v0
.end method

.method public getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->getCurrentImpressionList()Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/logging/ObjectInfo;

    .line 59
    iget-object v3, v2, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    if-ne v3, p1, :cond_1

    return-object v2

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

    .line 67
    invoke-direct {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->getCurrentImpressionList()Ljava/util/List;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 71
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/logging/ObjectInfo;

    .line 73
    iget-object v4, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->lastImpressionObjectPosMap:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Lcom/narvii/logging/Impression/ImpressionCollector;->getObjectKey(Lcom/narvii/logging/ObjectInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v3, Lcom/narvii/logging/ObjectInfo;->screenPos:I

    if-ne v4, v5, :cond_0

    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 77
    :cond_0
    invoke-virtual {p0, v3}, Lcom/narvii/logging/Impression/ImpressionCollector;->getObjectKey(Lcom/narvii/logging/ObjectInfo;)Ljava/lang/String;

    move-result-object v4

    iget v3, v3, Lcom/narvii/logging/ObjectInfo;->screenPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_1
    iput-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->lastImpressionObjectPosMap:Ljava/util/HashMap;

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

    .line 84
    iget-object p1, p1, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isListViewVisible()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdapter(Lcom/narvii/logging/Area;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    return-void
.end method

.method protected setExtraMap(Landroid/view/View;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1

    .line 135
    sget v0, Lcom/narvii/lib/R$id;->_extra_map:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 136
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Lcom/narvii/logging/ObjectInfo;->setExtraInfo(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public setListView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    return-void
.end method

.method protected setLocalMap(Landroid/view/View;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1

    .line 142
    sget v0, Lcom/narvii/lib/R$id;->_local_map:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 143
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 144
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Lcom/narvii/logging/ObjectInfo;->setLocalHashMap(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
