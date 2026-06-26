.class final Lcom/narvii/master/search/GlobalStorySearchListFragment$SearchResultHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "GlobalStorySearchListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalStorySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SearchResultHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getFeedAdapter$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b060a

    .line 191
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090464

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p2, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    const-string p3, "hide_match_id_adapter"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0908be

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "cell.findViewById<TextView>(R.id.pre_key)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "getContext()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0f1042

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string p2, "cell"

    .line 196
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 200
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090464

    if-ne v0, v1, :cond_0

    const-string p1, "Filter"

    .line 201
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 202
    new-instance p1, Lcom/narvii/master/search/FilterGlobalPostDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$SearchResultHeaderAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    const/16 p4, 0x9

    const/4 p5, 0x1

    invoke-direct {p1, p2, p5, p3, p4}, Lcom/narvii/master/search/FilterGlobalPostDialog;-><init>(Landroid/content/Context;ZLcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;I)V

    .line 203
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return p5

    .line 206
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
