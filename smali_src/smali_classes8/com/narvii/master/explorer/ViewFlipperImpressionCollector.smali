.class public abstract Lcom/narvii/master/explorer/ViewFlipperImpressionCollector;
.super Lcom/narvii/logging/Impression/ImpressionCollector;
.source "SourceFile"


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

    .line 1
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

    .line 2
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getShownInAdapter(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->adapter:Lcom/narvii/logging/Area;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0018

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/master/explorer/ViewFlipperImpressionCollector;->getFlipperId()I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/widget/Flipper;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/narvii/logging/Impression/ImpressionUtils;->isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/widget/Flipper;->getCurrentView()Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    .line 51
    const/4 p1, -0x1

    .line 52
    .line 53
    iput p1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->index:I

    .line 54
    :cond_0
    return-void
.end method

.method protected abstract getFlipperId()I
.end method
