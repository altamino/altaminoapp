.class public final Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final FrameLayoutRoot:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final activate:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final background:Lcom/narvii/widget/FullscreenBackgroundView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final disabledBar:Lcom/narvii/amino/databinding/DetailDisabledBarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final notActivated:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overlay:Lcom/narvii/list/overlay/OverlayLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final swipeRefresh:Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/narvii/widget/FullscreenBackgroundView;Lcom/narvii/amino/databinding/DetailDisabledBarBinding;Landroid/widget/LinearLayout;Lcom/narvii/list/overlay/OverlayLayout;Lcom/narvii/list/refresh/SwipeRefreshLayout;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/FullscreenBackgroundView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/amino/databinding/DetailDisabledBarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/list/overlay/OverlayLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/list/refresh/SwipeRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->FrameLayoutRoot:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->activate:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->background:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->disabledBar:Lcom/narvii/amino/databinding/DetailDisabledBarBinding;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->notActivated:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->overlay:Lcom/narvii/list/overlay/OverlayLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->swipeRefresh:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 20
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;
    .locals 9
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v2, p0

    .line 2
    .line 3
    check-cast v2, Landroid/widget/FrameLayout;

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0086

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    move-object v3, v1

    .line 12
    .line 13
    check-cast v3, Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0192

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    move-object v4, v1

    .line 24
    .line 25
    check-cast v4, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a0443

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/narvii/amino/databinding/DetailDisabledBarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DetailDisabledBarBinding;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    const v0, 0x7f0a0a17

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 47
    move-result-object v1

    .line 48
    move-object v6, v1

    .line 49
    .line 50
    check-cast v6, Landroid/widget/LinearLayout;

    .line 51
    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0a0ab1

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 59
    move-result-object v1

    .line 60
    move-object v7, v1

    .line 61
    .line 62
    check-cast v7, Lcom/narvii/list/overlay/OverlayLayout;

    .line 63
    .line 64
    if-eqz v7, :cond_0

    .line 65
    .line 66
    .line 67
    const v0, 0x7f0a0e12

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 71
    move-result-object v1

    .line 72
    move-object v8, v1

    .line 73
    .line 74
    check-cast v8, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 75
    .line 76
    if-eqz v8, :cond_0

    .line 77
    .line 78
    new-instance p0, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;

    .line 79
    move-object v0, p0

    .line 80
    move-object v1, v2

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v0 .. v8}, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/narvii/widget/FullscreenBackgroundView;Lcom/narvii/amino/databinding/DetailDisabledBarBinding;Landroid/widget/LinearLayout;Lcom/narvii/list/overlay/OverlayLayout;Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    .line 84
    return-object p0

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    .line 95
    .line 96
    const-string v1, "Missing required view with ID: "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 104
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;
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

    const v0, 0x7f0d04ed

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ListOverlayUserLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
