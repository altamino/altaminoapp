.class public Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 4
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/logging/Impression/ImpressionUtils;->isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    .line 12
    :cond_0
    return-void
.end method

.method protected isListViewVisible()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;->rootView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Lcom/narvii/logging/Impression/ImpressionCollector;->listView:Landroid/view/ViewGroup;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/logging/Impression/ImpressionUtils;->isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;->rootView:Landroid/view/View;

    return-void
.end method
