.class public final Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final balance:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final categoryLabel:Lcom/narvii/util/layouts/NVFlowLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dividerLine:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final histogramView:Lcom/narvii/widget/histogram/HistogramView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lifetimeEarning:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lifetimeEarningCoins:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final swipeRefresh:Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final totalPaid:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final totalPaidCoins:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/TextView;Lcom/narvii/util/layouts/NVFlowLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/histogram/HistogramView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/narvii/list/refresh/SwipeRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/layouts/NVFlowLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/histogram/HistogramView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/list/refresh/SwipeRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->rootView:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->balance:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->categoryLabel:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->dividerLine:Landroid/view/View;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->emptyText:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->emptyView:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->histogramView:Lcom/narvii/widget/histogram/HistogramView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->lifetimeEarning:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->lifetimeEarningCoins:Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->swipeRefresh:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->totalPaid:Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->totalPaidCoins:Landroid/widget/TextView;

    .line 28
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;
    .locals 15
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a01ac

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    move-object v4, v1

    .line 9
    .line 10
    check-cast v4, Landroid/widget/TextView;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0259

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    move-object v5, v1

    .line 21
    .line 22
    check-cast v5, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0451

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a04eb

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    move-object v7, v1

    .line 42
    .line 43
    check-cast v7, Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v7, :cond_0

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a04ec

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    move-object v8, v1

    .line 54
    .line 55
    check-cast v8, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    if-eqz v8, :cond_0

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a0671

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    move-object v9, v1

    .line 66
    .line 67
    check-cast v9, Lcom/narvii/widget/histogram/HistogramView;

    .line 68
    .line 69
    if-eqz v9, :cond_0

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a07dd

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 76
    move-result-object v1

    .line 77
    move-object v10, v1

    .line 78
    .line 79
    check-cast v10, Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz v10, :cond_0

    .line 82
    .line 83
    .line 84
    const v0, 0x7f0a07de

    .line 85
    .line 86
    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 88
    move-result-object v1

    .line 89
    move-object v11, v1

    .line 90
    .line 91
    check-cast v11, Landroid/widget/TextView;

    .line 92
    .line 93
    if-eqz v11, :cond_0

    .line 94
    move-object v12, p0

    .line 95
    .line 96
    check-cast v12, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 97
    .line 98
    .line 99
    const v0, 0x7f0a0eef

    .line 100
    .line 101
    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 103
    move-result-object v1

    .line 104
    move-object v13, v1

    .line 105
    .line 106
    check-cast v13, Landroid/widget/TextView;

    .line 107
    .line 108
    if-eqz v13, :cond_0

    .line 109
    .line 110
    .line 111
    const v0, 0x7f0a0ef0

    .line 112
    .line 113
    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 115
    move-result-object v1

    .line 116
    move-object v14, v1

    .line 117
    .line 118
    check-cast v14, Landroid/widget/TextView;

    .line 119
    .line 120
    if-eqz v14, :cond_0

    .line 121
    .line 122
    new-instance p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;

    .line 123
    move-object v2, p0

    .line 124
    move-object v3, v12

    .line 125
    .line 126
    .line 127
    invoke-direct/range {v2 .. v14}, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/TextView;Lcom/narvii/util/layouts/NVFlowLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/histogram/HistogramView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 128
    return-object p0

    .line 129
    .line 130
    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 132
    move-result-object p0

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    .line 139
    .line 140
    const-string v1, "Missing required view with ID: "

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object p0

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 148
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;
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

    const v0, 0x7f0d02b4

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->getRoot()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentBusinessWalletBinding;->rootView:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object v0
.end method
