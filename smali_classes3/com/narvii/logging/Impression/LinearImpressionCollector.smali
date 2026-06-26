.class public Lcom/narvii/logging/Impression/LinearImpressionCollector;
.super Lcom/narvii/logging/Impression/ImpressionCollector;
.source "LinearImpressionCollector.java"


# instance fields
.field cellLayoutId:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/narvii/logging/Impression/LinearImpressionCollector;->cellLayoutId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 20
    iput p2, p0, Lcom/narvii/logging/Impression/LinearImpressionCollector;->cellLayoutId:I

    return-void
.end method


# virtual methods
.method protected findImpressionObject(Landroid/view/View;Ljava/util/List;)V
    .locals 2

    .line 27
    iget v0, p0, Lcom/narvii/logging/Impression/LinearImpressionCollector;->cellLayoutId:I

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/narvii/logging/Impression/ImpressionUtils;->isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    :cond_1
    :goto_0
    return-void
.end method
