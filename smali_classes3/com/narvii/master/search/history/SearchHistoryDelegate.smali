.class public final Lcom/narvii/master/search/history/SearchHistoryDelegate;
.super Ljava/lang/Object;
.source "SearchHistoryDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;,
        Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;
    }
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private onSearchHistory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private prefsHelper:Lcom/narvii/master/search/SearchPrefsHelper;

.field private searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

.field private showSearchHistory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    .line 26
    new-instance p1, Lcom/narvii/master/search/SearchPrefsHelper;

    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p2}, Lcom/narvii/master/search/SearchPrefsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->prefsHelper:Lcom/narvii/master/search/SearchPrefsHelper;

    return-void
.end method

.method public static final synthetic access$getPrefsHelper$p(Lcom/narvii/master/search/history/SearchHistoryDelegate;)Lcom/narvii/master/search/SearchPrefsHelper;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->prefsHelper:Lcom/narvii/master/search/SearchPrefsHelper;

    return-object p0
.end method

.method public static final synthetic access$getSearchHistoryAdapter$p(Lcom/narvii/master/search/history/SearchHistoryDelegate;)Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    return-object p0
.end method

.method public static final synthetic access$setPrefsHelper$p(Lcom/narvii/master/search/history/SearchHistoryDelegate;Lcom/narvii/master/search/SearchPrefsHelper;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->prefsHelper:Lcom/narvii/master/search/SearchPrefsHelper;

    return-void
.end method

.method public static final synthetic access$setSearchHistoryAdapter$p(Lcom/narvii/master/search/history/SearchHistoryDelegate;Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    return-void
.end method

.method public static final synthetic access$showDeleteSearchHistoryDialog(Lcom/narvii/master/search/history/SearchHistoryDelegate;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->showDeleteSearchHistoryDialog()V

    return-void
.end method

.method private final showDeleteSearchHistoryDialog()V
    .locals 4

    .line 51
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f035d

    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 54
    new-instance v1, Lcom/narvii/master/search/history/SearchHistoryDelegate$showDeleteSearchHistoryDialog$1;

    invoke-direct {v1, p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate$showDeleteSearchHistoryDialog$1;-><init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;)V

    const v2, 0x7f0f0348

    const/high16 v3, -0x10000

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 58
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method


# virtual methods
.method public final addSearchHistory(Ljava/lang/String;)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->prefsHelper:Lcom/narvii/master/search/SearchPrefsHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/SearchPrefsHelper;->addSearchKeyword(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->refreshList()V

    :cond_0
    return-void
.end method

.method public final addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V
    .locals 3

    .line 33
    new-instance v0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;

    iget-object v1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 34
    new-instance v1, Lcom/narvii/master/search/history/SearchHistoryDelegate$addSearchHistoryAdapters$1;

    invoke-direct {v1, p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate$addSearchHistoryAdapters$1;-><init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;)V

    invoke-virtual {v0, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->setOnClearSearch(Lkotlin/jvm/functions/Function0;)V

    .line 35
    new-instance v1, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    iget-object v2, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v1, p0, v2}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;-><init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    .line 36
    iget-object v1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->setHost(Lcom/narvii/list/NVAdapter;)V

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getOnSearchHistory()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->onSearchHistory:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSearchHistoryCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getShowSearchHistory()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->showSearchHistory:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final setOnSearchHistory(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->onSearchHistory:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setShowSearchHistory(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->showSearchHistory:Lkotlin/jvm/functions/Function0;

    return-void
.end method
