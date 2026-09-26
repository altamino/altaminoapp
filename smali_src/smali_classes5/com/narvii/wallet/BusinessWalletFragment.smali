.class public final Lcom/narvii/wallet/BusinessWalletFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# instance fields
.field private final apiService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinRequest$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final earningCoins$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emptyText$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emptyView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final histogramView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paidCoins$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progress$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final swipeRefresh$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final totalBalance$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a01ac

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lw7/m;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->totalBalance$delegate:Lw7/m;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0671

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->histogramView$delegate:Lw7/m;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0e12

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lw7/m;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->swipeRefresh$delegate:Lw7/m;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a07de

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lw7/m;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->earningCoins$delegate:Lw7/m;

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a0ef0

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lw7/m;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->paidCoins$delegate:Lw7/m;

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a04ec

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lw7/m;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->emptyView$delegate:Lw7/m;

    .line 58
    .line 59
    new-instance v0, Lcom/narvii/wallet/BusinessWalletFragment$progress$2;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/narvii/wallet/BusinessWalletFragment$progress$2;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->progress$delegate:Lw7/m;

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0a04eb

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lw7/m;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->emptyText$delegate:Lw7/m;

    .line 78
    .line 79
    new-instance v0, Lcom/narvii/wallet/BusinessWalletFragment$apiService$2;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/narvii/wallet/BusinessWalletFragment$apiService$2;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->apiService$delegate:Lw7/m;

    .line 89
    .line 90
    sget-object v0, Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;->INSTANCE:Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->coinRequest$delegate:Lw7/m;

    .line 97
    return-void
.end method

.method public static final synthetic access$getEarningCoins(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getEarningCoins()Landroid/widget/TextView;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getEmptyView(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getEmptyView()Landroid/widget/LinearLayout;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getHistogramView(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/widget/histogram/HistogramView;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getHistogramView()Lcom/narvii/widget/histogram/HistogramView;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getPaidCoins(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getPaidCoins()Landroid/widget/TextView;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getProgress(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getSectionColor(Lcom/narvii/wallet/BusinessWalletFragment;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/wallet/BusinessWalletFragment;->getSectionColor(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getSwipeRefresh(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getSwipeRefresh()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getTotalBalance(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getTotalBalance()Landroid/widget/TextView;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/wallet/BusinessWalletFragment;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/wallet/BusinessWalletFragment$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/wallet/BusinessWalletFragment$bind$1;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final generateCategoryLabelView(Ljava/lang/String;I)Landroid/view/View;
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0d0085

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a079b

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a079c

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Landroid/widget/ImageView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 48
    return-object v0
.end method

.method private final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->apiService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    return-object v0
.end method

.method private final getCoinRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->coinRequest$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiRequest;

    .line 9
    return-object v0
.end method

.method private final getEarningCoins()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->earningCoins$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getEmptyText()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->emptyText$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getEmptyView()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->emptyView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    return-object v0
.end method

.method private final getHistogramView()Lcom/narvii/widget/histogram/HistogramView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->histogramView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/histogram/HistogramView;

    .line 9
    return-object v0
.end method

.method private final getPaidCoins()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->paidCoins$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getProgress()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->progress$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    return-object v0
.end method

.method private final getSectionColor(I)I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xd

    .line 3
    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x11

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    const v0, 0x7f060072

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    const v0, 0x7f060073

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    const v0, 0x7f060074

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method private final getSwipeRefresh()Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->swipeRefresh$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 9
    return-object v0
.end method

.method private final getTotalBalance()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->totalBalance$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method public static synthetic n(Lcom/narvii/wallet/BusinessWalletFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/wallet/BusinessWalletFragment;->onActivityCreated$lambda$2(Lcom/narvii/wallet/BusinessWalletFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/wallet/BusinessWalletFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->onActivityCreated$lambda$1(Lcom/narvii/wallet/BusinessWalletFragment;)V

    return-void
.end method

.method private static final onActivityCreated$lambda$1(Lcom/narvii/wallet/BusinessWalletFragment;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->sendBusinessCoinStatsRequest()V

    .line 10
    return-void
.end method

.method private static final onActivityCreated$lambda$2(Lcom/narvii/wallet/BusinessWalletFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getApiService()Lcom/narvii/util/http/ApiService;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getCoinRequest()Lcom/narvii/util/http/ApiRequest;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 18
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final sendBusinessCoinStatsRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getApiService()Lcom/narvii/util/http/ApiService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getCoinRequest()Lcom/narvii/util/http/ApiRequest;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    new-instance v2, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;

    .line 11
    .line 12
    const-class v3, Lcom/narvii/wallet/BusinessCoinStatsResponse;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 19
    return-void
.end method

.method private final setupCategoryLabels()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0259

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    const v2, 0x7f12128d

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "getString(...)"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const v3, 0x7f0808e8

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v1, v3}, Lcom/narvii/wallet/BusinessWalletFragment;->generateCategoryLabelView(Ljava/lang/String;I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    const v4, 0x7f12128b

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const v4, 0x7f0808e9

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v3, v4}, Lcom/narvii/wallet/BusinessWalletFragment;->generateCategoryLabelView(Ljava/lang/String;I)Landroid/view/View;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    .line 73
    const v5, 0x7f121289

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const v2, 0x7f0808ea

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v4, v2}, Lcom/narvii/wallet/BusinessWalletFragment;->generateCategoryLabelView(Ljava/lang/String;I)Landroid/view/View;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    :cond_1
    return-void
.end method


# virtual methods
.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f080143

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "totalBusinessBalance"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getTotalBalance()Landroid/widget/TextView;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->setupCategoryLabels()V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getSwipeRefresh()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/wallet/b;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/narvii/wallet/b;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/wallet/c;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/narvii/wallet/c;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->sendBusinessCoinStatsRequest()V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    const-string p1, "statistics"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string v0, "getService(...)"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 21
    .line 22
    const-string v0, "Business Wallet Page Opened"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v0, "Business Wallet Page Opened Total"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 32
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    const v0, 0x7f121288

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    const p2, 0x7f080a3a

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const/4 p2, 0x2

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 37
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d02b4

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getApiService()Lcom/narvii/util/http/ApiService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getCoinRequest()Lcom/narvii/util/http/ApiRequest;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 15
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    const v1, 0x7f121288

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const-class v0, Lcom/narvii/wallet/CoinHistoryFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "businessWallet"

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    const p2, 0x7f120d11

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getEmptyText()Landroid/widget/TextView;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    .line 30
    new-array p2, p2, [Ljava/lang/Object;

    .line 31
    .line 32
    const/16 v0, 0xa

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    aput-object v0, p2, v1

    .line 40
    .line 41
    .line 42
    const v0, 0x7f120d61

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
