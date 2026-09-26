.class public Lcom/narvii/master/search/GlobalSearchMergeAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


# instance fields
.field matchedSearchResultAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method public addAdapter(Landroid/widget/ListAdapter;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 4
    .line 5
    instance-of p2, p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->matchedSearchResultAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 12
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->matchedSearchResultAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->matchedSearchResultAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->matchedSearchResultAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isListShown()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    .line 27
    move-result v0

    .line 28
    return v0
.end method
