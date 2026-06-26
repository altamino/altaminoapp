.class public Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
.super Lcom/narvii/logging/Impression/ImpressionCollector;
.source "StandaloneRecyclerImpressionCollector.java"


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
.field rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 14
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
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/narvii/logging/Impression/ImpressionUtils;->isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    :cond_0
    return-void
.end method

.method protected isListViewVisible()Z
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/narvii/logging/Impression/ImpressionUtils;->isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;->rootView:Landroid/view/View;

    return-void
.end method
