.class public abstract Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;
.super Lcom/narvii/logging/Impression/ImpressionCollector;
.source "ContainerInListViewImpressionCollector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/logging/Impression/ImpressionCollector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field containerId:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 20
    iput p2, p0, Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;->containerId:I

    return-void
.end method


# virtual methods
.method protected checkCellAdapterWhenAdd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected findImpressionObject(Landroid/view/View;Ljava/util/List;)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getShownInAdapter(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;->getContainTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    .line 26
    iget v0, p0, Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;->containerId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 27
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/narvii/logging/Impression/ImpressionUtils;->isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 30
    invoke-static {p1, v1}, Lcom/narvii/logging/Impression/ImpressionUtils;->isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {p0, v1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    :cond_2
    return-void
.end method

.method protected abstract getContainTag()I
.end method

.method public getContainerId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;->containerId:I

    return v0
.end method
