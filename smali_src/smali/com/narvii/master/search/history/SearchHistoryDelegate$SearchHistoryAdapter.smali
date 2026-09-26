.class final Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;
.super Lcom/narvii/master/search/trending/FlowLayoutAdapter;
.source "SourceFile"


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
    value = "SMAP\nSearchHistoryDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchHistoryDelegate.kt\ncom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/master/search/history/SearchHistoryDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->refreshList()V

    .line 14
    return-void
.end method

.method public static synthetic f(Lcom/narvii/master/search/history/SearchHistoryDelegate;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->updateChildView$lambda$1(Lcom/narvii/master/search/history/SearchHistoryDelegate;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private static final updateChildView$lambda$1(Lcom/narvii/master/search/history/SearchHistoryDelegate;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$data"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getCtx()Lcom/narvii/app/NVContext;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    instance-of p2, p2, Lcom/narvii/app/NVFragment;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getCtx()Lcom/narvii/app/NVContext;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Lcom/narvii/app/NVFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    instance-of p2, p2, Lcom/narvii/search/ISearchBarHost;

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getCtx()Lcom/narvii/app/NVContext;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    check-cast p2, Lcom/narvii/app/NVFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    const-string v0, "null cannot be cast to non-null type com.narvii.search.ISearchBarHost"

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    check-cast p2, Lcom/narvii/search/ISearchBarHost;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getCtx()Lcom/narvii/app/NVContext;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v0, p1}, Lcom/narvii/search/ISearchBarHost;->onSearchFromHistory(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getOnSearchHistory()Le8/l;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public createChildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0d0050

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string v0, "inflate(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getShowSearchHistory()Le8/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-super {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->getCount()I

    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final refreshList()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->access$getPrefsHelper$p(Lcom/narvii/master/search/history/SearchHistoryDelegate;)Lcom/narvii/master/search/SearchPrefsHelper;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/master/search/SearchPrefsHelper;->getHistoryList()Ljava/util/LinkedHashSet;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/collections/t;->X(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->setList(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    return-void
.end method

.method public bridge synthetic updateChildView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->updateChildView(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public updateChildView(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0673

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 4
    new-instance v1, Lcom/narvii/master/search/history/b;

    invoke-direct {v1, v0, p1}, Lcom/narvii/master/search/history/b;-><init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateFlowLayout(Lcom/narvii/util/layouts/NVFlowLayout;)V
    .locals 2
    .param p1    # Lcom/narvii/util/layouts/NVFlowLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "cell"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const/high16 v1, 0x41200000    # 10.0f

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 15
    move-result v0

    .line 16
    .line 17
    mul-int/lit8 v1, v0, 0x2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 21
    return-void
.end method
