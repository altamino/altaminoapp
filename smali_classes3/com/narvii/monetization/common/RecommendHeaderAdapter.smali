.class public Lcom/narvii/monetization/common/RecommendHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "RecommendHeaderAdapter.java"


# instance fields
.field attachedAdapter:Lcom/narvii/list/NVAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/monetization/common/RecommendHeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/common/RecommendHeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b042c

    .line 29
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setAttachAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/monetization/common/RecommendHeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method
