.class Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "GlobalPostSearchListFragment.java"


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

    .line 207
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 208
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b060a

    .line 213
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090464

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object p2, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    const-string p3, "hide_match_id_adapter"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0908be

    .line 216
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const p3, 0x7f0f113f

    .line 218
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 226
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090464

    if-ne v0, v1, :cond_0

    const-string p1, "Filter"

    .line 227
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 228
    new-instance p1, Lcom/narvii/master/search/FilterGlobalPostDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    const/4 p4, 0x0

    const/4 p5, 0x1

    invoke-direct {p1, p2, p5, p3, p4}, Lcom/narvii/master/search/FilterGlobalPostDialog;-><init>(Landroid/content/Context;ZLcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;I)V

    .line 229
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return p5

    .line 232
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
