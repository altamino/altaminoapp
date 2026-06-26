.class public Lcom/narvii/master/search/SearchKeywordHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SearchKeywordHeaderAdapter.java"


# instance fields
.field host:Lcom/narvii/list/NVAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 28
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b042f

    .line 33
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setAttachHost(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method
