.class public Lcom/narvii/master/search/SearchKeywordHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# instance fields
.field host:Lcom/narvii/list/NVAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    .line 7
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0465

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public setAttachHost(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method
