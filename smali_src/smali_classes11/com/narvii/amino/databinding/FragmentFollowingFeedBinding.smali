.class public final Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final loginLayout:Lcom/narvii/amino/databinding/LoginHintLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recycleFrame:Lcom/narvii/app/theme/view/NVThemeFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recycleLayout:Lcom/narvii/widget/recycleview/NVRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusView:Lcom/narvii/paging/state/PageStatusView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/narvii/amino/databinding/LoginHintLayoutBinding;Lcom/narvii/app/theme/view/NVThemeFrameLayout;Lcom/narvii/widget/recycleview/NVRecyclerView;Lcom/narvii/paging/state/PageStatusView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0
    .param p1    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/LoginHintLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/app/theme/view/NVThemeFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/recycleview/NVRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/paging/state/PageStatusView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;->rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;->loginLayout:Lcom/narvii/amino/databinding/LoginHintLayoutBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;->recycleFrame:Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;->recycleLayout:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 16
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;
    .locals 9
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0830

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/LoginHintLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LoginHintLayoutBinding;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a0bf8

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
    check-cast v5, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0bf9

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 32
    move-result-object v1

    .line 33
    move-object v6, v1

    .line 34
    .line 35
    check-cast v6, Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0a0da0

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 45
    move-object v7, v1

    .line 46
    .line 47
    check-cast v7, Lcom/narvii/paging/state/PageStatusView;

    .line 48
    .line 49
    if-eqz v7, :cond_0

    .line 50
    move-object v8, p0

    .line 51
    .line 52
    check-cast v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 53
    .line 54
    new-instance p0, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;

    .line 55
    move-object v2, p0

    .line 56
    move-object v3, v8

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v2 .. v8}, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/narvii/amino/databinding/LoginHintLayoutBinding;Lcom/narvii/app/theme/view/NVThemeFrameLayout;Lcom/narvii/widget/recycleview/NVRecyclerView;Lcom/narvii/paging/state/PageStatusView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 60
    return-object p0

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    .line 71
    .line 72
    const-string v1, "Missing required view with ID: "

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;
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

    const v0, 0x7f0d02d2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentFollowingFeedBinding;->rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method
