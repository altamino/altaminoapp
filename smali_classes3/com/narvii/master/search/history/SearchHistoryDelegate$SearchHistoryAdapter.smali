.class final Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;
.super Lcom/narvii/master/search/trending/FlowLayoutAdapter;
.source "SearchHistoryDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/history/SearchHistoryDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SearchHistoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/master/search/trending/FlowLayoutAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchHistoryDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchHistoryDelegate.kt\ncom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter\n*L\n1#1,116:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;Lcom/narvii/app/NVContext;)V
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

    .line 80
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-direct {p0, p2}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 83
    invoke-virtual {p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->refreshList()V

    return-void
.end method


# virtual methods
.method public createChildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026item_view, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getShowSearchHistory()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final refreshList()V
    .locals 2

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-static {v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->access$getPrefsHelper$p(Lcom/narvii/master/search/history/SearchHistoryDelegate;)Lcom/narvii/master/search/SearchPrefsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/master/search/SearchPrefsHelper;->getHistoryList()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->setList(Ljava/util/List;)V

    .line 88
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic updateChildView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 80
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->updateChildView(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public updateChildView(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f090518

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tv"

    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;-><init>(Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateFlowLayout(Lcom/narvii/util/layouts/NVFlowLayout;)V
    .locals 2

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 108
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method
