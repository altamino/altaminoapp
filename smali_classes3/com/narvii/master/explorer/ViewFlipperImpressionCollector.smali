.class public abstract Lcom/narvii/master/explorer/ViewFlipperImpressionCollector;
.super Lcom/narvii/logging/Impression/ImpressionCollector;
.source "ViewFlipperImpressionCollector.java"


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


# direct methods
.method public constructor <init>(Lcom/narvii/list/NVPagedAdapter;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected checkCellAdapterWhenAdd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected findImpressionObject(Landroid/view/View;Ljava/util/List;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getShownInAdapter(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    if-ne v0, v1, :cond_0

    const v0, 0x7f09000c

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/narvii/master/explorer/ViewFlipperImpressionCollector;->getFlipperId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/Flipper;

    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/narvii/logging/Impression/ImpressionUtils;->isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/narvii/widget/Flipper;->getCurrentView()Landroid/view/View;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    :cond_0
    return-void
.end method

.method protected abstract getFlipperId()I
.end method
