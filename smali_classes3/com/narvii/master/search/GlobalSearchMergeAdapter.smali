.class public Lcom/narvii/master/search/GlobalSearchMergeAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "GlobalSearchMergeAdapter.java"


# instance fields
.field matchedSearchResultAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public addAdapter(Landroid/widget/ListAdapter;Z)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 20
    instance-of p2, p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz p2, :cond_0

    .line 21
    check-cast p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->matchedSearchResultAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->matchedSearchResultAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 38
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->matchedSearchResultAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_2

    .line 28
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->matchedSearchResultAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 30
    :cond_2
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    return v0
.end method
