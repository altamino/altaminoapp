.class public final Lcom/narvii/master/search/history/SearchHistoryDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;,
        Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;
    }
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onSearchHistory:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Ljava/lang/String;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prefsHelper:Lcom/narvii/master/search/SearchPrefsHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private showSearchHistory:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "prefKey"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/master/search/SearchPrefsHelper;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v1, "getContext(...)"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1, p2}, Lcom/narvii/master/search/SearchPrefsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->prefsHelper:Lcom/narvii/master/search/SearchPrefsHelper;

    .line 32
    return-void
.end method

.method public static synthetic a(Lcom/narvii/master/search/history/SearchHistoryDelegate;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->showDeleteSearchHistoryDialog$lambda$0(Lcom/narvii/master/search/history/SearchHistoryDelegate;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getPrefsHelper$p(Lcom/narvii/master/search/history/SearchHistoryDelegate;)Lcom/narvii/master/search/SearchPrefsHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->prefsHelper:Lcom/narvii/master/search/SearchPrefsHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$showDeleteSearchHistoryDialog(Lcom/narvii/master/search/history/SearchHistoryDelegate;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->showDeleteSearchHistoryDialog()V

    .line 4
    return-void
.end method

.method private final showDeleteSearchHistoryDialog()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f1203b5

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f1201e2

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/master/search/history/a;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/narvii/master/search/history/a;-><init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;)V

    .line 30
    .line 31
    const/high16 v2, -0x10000

    .line 32
    .line 33
    .line 34
    const v3, 0x7f1203a0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 41
    return-void
.end method

.method private static final showDeleteSearchHistoryDialog$lambda$0(Lcom/narvii/master/search/history/SearchHistoryDelegate;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->prefsHelper:Lcom/narvii/master/search/SearchPrefsHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/master/search/SearchPrefsHelper;->clearSearchHistoryList()V

    .line 11
    .line 12
    iget-object p0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->refreshList()V

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public final addSearchHistory(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "keyword"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->prefsHelper:Lcom/narvii/master/search/SearchPrefsHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/master/search/SearchPrefsHelper;->addSearchKeyword(Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->refreshList()V

    .line 18
    :cond_0
    return-void
.end method

.method public final addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V
    .locals 3
    .param p1    # Lcom/narvii/list/MergeAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/master/search/history/SearchHistoryDelegate$addSearchHistoryAdapters$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate$addSearchHistoryAdapters$1;-><init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->setOnClearSearch(Le8/a;)V

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;-><init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->setHost(Lcom/narvii/list/NVAdapter;)V

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    :cond_1
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getOnSearchHistory()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Ljava/lang/String;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->onSearchHistory:Le8/l;

    return-object v0
.end method

.method public final getSearchHistoryCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->searchHistoryAdapter:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->getCount()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final getShowSearchHistory()Le8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->showSearchHistory:Le8/a;

    return-object v0
.end method

.method public final setOnSearchHistory(Le8/l;)V
    .locals 0
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/String;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->onSearchHistory:Le8/l;

    return-void
.end method

.method public final setShowSearchHistory(Le8/a;)V
    .locals 0
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate;->showSearchHistory:Le8/a;

    return-void
.end method
