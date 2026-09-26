.class public final Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final empty:Lcom/narvii/amino/databinding/EmptyLeaderBoardBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final list:Lcom/narvii/widget/NVListView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final listFrame:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/narvii/amino/databinding/EmptyLeaderBoardBinding;Lcom/narvii/widget/NVListView;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/EmptyLeaderBoardBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/NVListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;->empty:Lcom/narvii/amino/databinding/EmptyLeaderBoardBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;->list:Lcom/narvii/widget/NVListView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;->listFrame:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 14
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x1020004

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/amino/databinding/EmptyLeaderBoardBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/EmptyLeaderBoardBinding;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    const v0, 0x102000a

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    move-object v5, v1

    .line 22
    .line 23
    check-cast v5, Lcom/narvii/widget/NVListView;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    move-object v6, p0

    .line 27
    .line 28
    check-cast v6, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    .line 31
    const v0, 0x102000d

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    move-object v7, v1

    .line 37
    .line 38
    check-cast v7, Lcom/narvii/widget/SpinningView;

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    new-instance p0, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;

    .line 43
    move-object v2, p0

    .line 44
    move-object v3, v6

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v2 .. v7}, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;-><init>(Landroid/widget/FrameLayout;Lcom/narvii/amino/databinding/EmptyLeaderBoardBinding;Lcom/narvii/widget/NVListView;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;)V

    .line 48
    return-object p0

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    .line 59
    .line 60
    const-string v1, "Missing required view with ID: "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d0692

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/RankingListFragmentLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
