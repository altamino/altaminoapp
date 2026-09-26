.class public final Lcom/narvii/lib/databinding/VideoOverlayBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final debugVideoStatus:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoOverlayBg:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoOverlayControls:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoOverlayFrame:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoOverlayLoading:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoOverlayRightCornerVolume:Lcom/narvii/widget/EasyButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoOverlayShare:Lcom/narvii/widget/EasyButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoOverlayVolume:Lcom/narvii/widget/EasyButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/EasyButton;Lcom/narvii/widget/EasyButton;Lcom/narvii/widget/EasyButton;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/EasyButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/EasyButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/EasyButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/lib/databinding/VideoOverlayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/lib/databinding/VideoOverlayBinding;->debugVideoStatus:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/lib/databinding/VideoOverlayBinding;->videoOverlayBg:Landroid/view/View;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/lib/databinding/VideoOverlayBinding;->videoOverlayControls:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/lib/databinding/VideoOverlayBinding;->videoOverlayFrame:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/lib/databinding/VideoOverlayBinding;->videoOverlayLoading:Lcom/narvii/widget/SpinningView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/lib/databinding/VideoOverlayBinding;->videoOverlayRightCornerVolume:Lcom/narvii/widget/EasyButton;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/lib/databinding/VideoOverlayBinding;->videoOverlayShare:Lcom/narvii/widget/EasyButton;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/lib/databinding/VideoOverlayBinding;->videoOverlayVolume:Lcom/narvii/widget/EasyButton;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/lib/databinding/VideoOverlayBinding;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->debug_video_status:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    move-object v4, v1

    .line 8
    .line 9
    check-cast v4, Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$id;->video_overlay_bg:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 17
    move-result-object v5

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    sget v0, Lcom/narvii/lib/R$id;->video_overlay_controls:I

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    move-object v6, v1

    .line 27
    .line 28
    check-cast v6, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    sget v0, Lcom/narvii/lib/R$id;->video_overlay_frame:I

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    move-object v7, v1

    .line 38
    .line 39
    check-cast v7, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    sget v0, Lcom/narvii/lib/R$id;->video_overlay_loading:I

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
    check-cast v8, Lcom/narvii/widget/SpinningView;

    .line 51
    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    sget v0, Lcom/narvii/lib/R$id;->video_overlay_right_corner_volume:I

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    move-object v9, v1

    .line 60
    .line 61
    check-cast v9, Lcom/narvii/widget/EasyButton;

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    sget v0, Lcom/narvii/lib/R$id;->video_overlay_share:I

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 69
    move-result-object v1

    .line 70
    move-object v10, v1

    .line 71
    .line 72
    check-cast v10, Lcom/narvii/widget/EasyButton;

    .line 73
    .line 74
    if-eqz v10, :cond_0

    .line 75
    .line 76
    sget v0, Lcom/narvii/lib/R$id;->video_overlay_volume:I

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 80
    move-result-object v1

    .line 81
    move-object v11, v1

    .line 82
    .line 83
    check-cast v11, Lcom/narvii/widget/EasyButton;

    .line 84
    .line 85
    if-eqz v11, :cond_0

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/lib/databinding/VideoOverlayBinding;

    .line 88
    move-object v3, p0

    .line 89
    .line 90
    check-cast v3, Landroid/widget/FrameLayout;

    .line 91
    move-object v2, v0

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v2 .. v11}, Lcom/narvii/lib/databinding/VideoOverlayBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/EasyButton;Lcom/narvii/widget/EasyButton;Lcom/narvii/widget/EasyButton;)V

    .line 95
    return-object v0

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    .line 106
    .line 107
    const-string v1, "Missing required view with ID: "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 115
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/lib/databinding/VideoOverlayBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/lib/databinding/VideoOverlayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/VideoOverlayBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/VideoOverlayBinding;
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

    sget v0, Lcom/narvii/lib/R$layout;->video_overlay:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/lib/databinding/VideoOverlayBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/VideoOverlayBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/lib/databinding/VideoOverlayBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/lib/databinding/VideoOverlayBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
