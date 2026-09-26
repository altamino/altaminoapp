.class public final Lcom/narvii/amino/databinding/FeedDetailFrameBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final FrameLayoutRoot:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final actionBarOverlay:Lcom/narvii/list/overlay/OverlayListPlaceholder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final background:Lcom/narvii/widget/FullscreenBackgroundView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final disabledBar:Lcom/narvii/amino/databinding/DetailDisabledBarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fakeActionBar:Lcom/narvii/list/overlay/OverlayListPlaceholder;
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

.field public final overlayBlurBg:Lcom/github/mmin18/widget/RealtimeBlurView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoOverlay:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/narvii/list/overlay/OverlayListPlaceholder;Lcom/narvii/widget/FullscreenBackgroundView;Landroid/widget/FrameLayout;Lcom/narvii/amino/databinding/DetailDisabledBarBinding;Lcom/narvii/list/overlay/OverlayListPlaceholder;Lcom/narvii/influencer/FansOnlyPostMask;Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;Lcom/github/mmin18/widget/RealtimeBlurView;Lcom/narvii/widget/SpinningView;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/list/overlay/OverlayListPlaceholder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/FullscreenBackgroundView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/amino/databinding/DetailDisabledBarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/list/overlay/OverlayListPlaceholder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/influencer/FansOnlyPostMask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/github/mmin18/widget/RealtimeBlurView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->FrameLayoutRoot:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->actionBarOverlay:Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->background:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->bottomContainer:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->disabledBar:Lcom/narvii/amino/databinding/DetailDisabledBarBinding;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->fakeActionBar:Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->listFrame:Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->overlayBlurBg:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->videoOverlay:Landroid/widget/FrameLayout;

    .line 28
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedDetailFrameBinding;
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
    const v0, 0x7f0a0023

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
    check-cast v4, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0061

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
    check-cast v5, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0192

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    move-object v6, v1

    .line 33
    .line 34
    check-cast v6, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a01eb

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    move-object v7, v1

    .line 45
    .line 46
    check-cast v7, Landroid/widget/FrameLayout;

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0443

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lcom/narvii/amino/databinding/DetailDisabledBarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DetailDisabledBarBinding;

    .line 61
    move-result-object v8

    .line 62
    .line 63
    .line 64
    const v0, 0x7f0a0550

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 68
    move-result-object v1

    .line 69
    move-object v9, v1

    .line 70
    .line 71
    check-cast v9, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 72
    .line 73
    if-eqz v9, :cond_0

    .line 74
    .line 75
    .line 76
    const v0, 0x7f0a0561

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 80
    move-result-object v1

    .line 81
    move-object v10, v1

    .line 82
    .line 83
    check-cast v10, Lcom/narvii/influencer/FansOnlyPostMask;

    .line 84
    .line 85
    if-eqz v10, :cond_0

    .line 86
    .line 87
    .line 88
    const v0, 0x7f0a07fe

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 92
    move-result-object v1

    .line 93
    move-object v11, v1

    .line 94
    .line 95
    check-cast v11, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    .line 96
    .line 97
    if-eqz v11, :cond_0

    .line 98
    .line 99
    .line 100
    const v0, 0x7f0a0ab2

    .line 101
    .line 102
    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 104
    move-result-object v1

    .line 105
    move-object v12, v1

    .line 106
    .line 107
    check-cast v12, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 108
    .line 109
    if-eqz v12, :cond_0

    .line 110
    .line 111
    .line 112
    const v0, 0x102000d

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 116
    move-result-object v1

    .line 117
    move-object v13, v1

    .line 118
    .line 119
    check-cast v13, Lcom/narvii/widget/SpinningView;

    .line 120
    .line 121
    if-eqz v13, :cond_0

    .line 122
    .line 123
    .line 124
    const v0, 0x7f0a0f89

    .line 125
    .line 126
    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 128
    move-result-object v1

    .line 129
    move-object v14, v1

    .line 130
    .line 131
    check-cast v14, Landroid/widget/FrameLayout;

    .line 132
    .line 133
    if-eqz v14, :cond_0

    .line 134
    .line 135
    new-instance v0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;

    .line 136
    move-object v3, p0

    .line 137
    .line 138
    check-cast v3, Landroid/widget/LinearLayout;

    .line 139
    move-object v2, v0

    .line 140
    .line 141
    .line 142
    invoke-direct/range {v2 .. v14}, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/narvii/list/overlay/OverlayListPlaceholder;Lcom/narvii/widget/FullscreenBackgroundView;Landroid/widget/FrameLayout;Lcom/narvii/amino/databinding/DetailDisabledBarBinding;Lcom/narvii/list/overlay/OverlayListPlaceholder;Lcom/narvii/influencer/FansOnlyPostMask;Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;Lcom/github/mmin18/widget/RealtimeBlurView;Lcom/narvii/widget/SpinningView;Landroid/widget/FrameLayout;)V

    .line 143
    return-object v0

    .line 144
    .line 145
    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 147
    move-result-object p0

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    .line 154
    .line 155
    const-string v1, "Missing required view with ID: "

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object p0

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 163
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FeedDetailFrameBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FeedDetailFrameBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FeedDetailFrameBinding;
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

    const v0, 0x7f0d0249

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedDetailFrameBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FeedDetailFrameBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
