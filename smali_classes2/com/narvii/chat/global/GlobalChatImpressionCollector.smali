.class public Lcom/narvii/chat/global/GlobalChatImpressionCollector;
.super Lcom/narvii/logging/Impression/ImpressionCollector;
.source "GlobalChatImpressionCollector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/logging/Impression/ImpressionCollector<",
        "Lcom/narvii/model/ChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field layoutIds:[I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/ChatThread;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 15
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatImpressionCollector;->layoutIds:[I

    return-void

    :array_0
    .array-data 4
        0x7f090b6b
        0x7f090b6c
        0x7f090b6d
        0x7f090b6e
    .end array-data
.end method


# virtual methods
.method protected checkCellAdapterWhenAdd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected findImpressionObject(Landroid/view/View;Ljava/util/List;)V
    .locals 5

    .line 23
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getShownInAdapter(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    if-ne v0, v1, :cond_2

    instance-of v0, p1, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatImpressionCollector;->layoutIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 25
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 26
    iget-object v4, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/narvii/logging/Impression/ImpressionUtils;->isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {p0, v3, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    :cond_2
    return-void
.end method

.method protected getObjectKey(Lcom/narvii/logging/ObjectInfo;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/ObjectInfo<",
            "Lcom/narvii/model/ChatThread;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/narvii/logging/ObjectInfo;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/narvii/logging/ObjectInfo;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "collectionId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
