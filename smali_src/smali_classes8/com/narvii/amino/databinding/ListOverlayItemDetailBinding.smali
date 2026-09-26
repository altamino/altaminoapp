.class public final Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final background:Lcom/narvii/widget/FullscreenBackgroundView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final disabledBar:Lcom/narvii/amino/databinding/DetailDisabledBarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final listFrame:Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overlay:Lcom/narvii/list/overlay/OverlayLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overlayBlurBg:Lcom/github/mmin18/widget/RealtimeBlurView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final swipeRefresh:Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoOverlay:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;Lcom/narvii/widget/FullscreenBackgroundView;Lcom/narvii/amino/databinding/DetailDisabledBarBinding;Lcom/narvii/influencer/FansOnlyPostMask;Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;Lcom/narvii/list/overlay/OverlayLayout;Lcom/github/mmin18/widget/RealtimeBlurView;Lcom/narvii/widget/SpinningView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/FullscreenBackgroundView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/DetailDisabledBarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/influencer/FansOnlyPostMask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/list/overlay/OverlayLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/github/mmin18/widget/RealtimeBlurView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/list/refresh/SwipeRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->rootView:Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->background:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->disabledBar:Lcom/narvii/amino/databinding/DetailDisabledBarBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->listFrame:Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->overlay:Lcom/narvii/list/overlay/OverlayLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->overlayBlurBg:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->swipeRefresh:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->videoOverlay:Landroid/widget/FrameLayout;

    .line 24
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0192

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
    check-cast v4, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0443

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/amino/databinding/DetailDisabledBarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DetailDisabledBarBinding;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0561

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
    check-cast v6, Lcom/narvii/influencer/FansOnlyPostMask;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    move-object v7, p0

    .line 39
    .line 40
    check-cast v7, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    .line 41
    .line 42
    .line 43
    const v0, 0x7f0a0ab1

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 47
    move-result-object v1

    .line 48
    move-object v8, v1

    .line 49
    .line 50
    check-cast v8, Lcom/narvii/list/overlay/OverlayLayout;

    .line 51
    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0a0ab2

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 59
    move-result-object v1

    .line 60
    move-object v9, v1

    .line 61
    .line 62
    check-cast v9, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 63
    .line 64
    if-eqz v9, :cond_0

    .line 65
    .line 66
    .line 67
    const v0, 0x102000d

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 71
    move-result-object v1

    .line 72
    move-object v10, v1

    .line 73
    .line 74
    check-cast v10, Lcom/narvii/widget/SpinningView;

    .line 75
    .line 76
    if-eqz v10, :cond_0

    .line 77
    .line 78
    .line 79
    const v0, 0x7f0a0e12

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 83
    move-result-object v1

    .line 84
    move-object v11, v1

    .line 85
    .line 86
    check-cast v11, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 87
    .line 88
    if-eqz v11, :cond_0

    .line 89
    .line 90
    .line 91
    const v0, 0x7f0a0f89

    .line 92
    .line 93
    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 95
    move-result-object v1

    .line 96
    move-object v12, v1

    .line 97
    .line 98
    check-cast v12, Landroid/widget/FrameLayout;

    .line 99
    .line 100
    if-eqz v12, :cond_0

    .line 101
    .line 102
    new-instance p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;

    .line 103
    move-object v2, p0

    .line 104
    move-object v3, v7

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v2 .. v12}, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;-><init>(Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;Lcom/narvii/widget/FullscreenBackgroundView;Lcom/narvii/amino/databinding/DetailDisabledBarBinding;Lcom/narvii/influencer/FansOnlyPostMask;Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;Lcom/narvii/list/overlay/OverlayLayout;Lcom/github/mmin18/widget/RealtimeBlurView;Lcom/narvii/widget/SpinningView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/FrameLayout;)V

    .line 108
    return-object p0

    .line 109
    .line 110
    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 112
    move-result-object p0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 117
    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    .line 119
    .line 120
    const-string v1, "Missing required view with ID: "

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 128
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;
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

    const v0, 0x7f0d04ec

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->getRoot()Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ListOverlayItemDetailBinding;->rootView:Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    return-object v0
.end method
