.class Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalPostSearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d06be

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a059c

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 22
    .line 23
    const-string p3, "hide_match_id_adapter"

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 28
    move-result p2

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    .line 33
    const p2, 0x7f0a0b7a

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    check-cast p2, Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    .line 44
    const p3, 0x7f12124a

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 48
    :cond_0
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a059c

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const-string p1, "Filter"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/master/search/FilterGlobalPostDialog;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iget-object p3, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 29
    const/4 p4, 0x0

    .line 30
    const/4 p5, 0x1

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p2, p5, p3, p4}, Lcom/narvii/master/search/FilterGlobalPostDialog;-><init>(Landroid/content/Context;ZLcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 37
    return p5

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 41
    move-result p1

    .line 42
    return p1
.end method
