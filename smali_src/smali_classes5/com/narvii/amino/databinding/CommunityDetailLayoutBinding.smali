.class public final Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final blur:Lcom/github/mmin18/widget/RealtimeBlurView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final communityDetailFrame:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final communityPromotionImage:Lcom/narvii/widget/PromotionalImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fakeActionBarLayout:Lcom/narvii/list/overlay/OverlayListPlaceholder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hoverJoinContainer:Lcom/narvii/amino/databinding/ItemCommunityDetailJoinLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/github/mmin18/widget/RealtimeBlurView;Landroid/widget/RelativeLayout;Lcom/narvii/widget/PromotionalImageView;Lcom/narvii/list/overlay/OverlayListPlaceholder;Lcom/narvii/amino/databinding/ItemCommunityDetailJoinLayoutBinding;Lcom/narvii/livelayer/LiveLayerOnlineBar;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/mmin18/widget/RealtimeBlurView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/PromotionalImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/list/overlay/OverlayListPlaceholder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/amino/databinding/ItemCommunityDetailJoinLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/livelayer/LiveLayerOnlineBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->blur:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->communityDetailFrame:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->communityPromotionImage:Lcom/narvii/widget/PromotionalImageView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->fakeActionBarLayout:Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->hoverJoinContainer:Lcom/narvii/amino/databinding/ItemCommunityDetailJoinLayoutBinding;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 18
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a01da

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
    check-cast v4, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0368

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
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0380

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
    check-cast v6, Lcom/narvii/widget/PromotionalImageView;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0551

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
    check-cast v7, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0683

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/ItemCommunityDetailJoinLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemCommunityDetailJoinLayoutBinding;

    .line 61
    move-result-object v8

    .line 62
    .line 63
    .line 64
    const v0, 0x7f0a0a53

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
    check-cast v9, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 72
    .line 73
    if-eqz v9, :cond_0

    .line 74
    .line 75
    new-instance v0, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;

    .line 76
    move-object v3, p0

    .line 77
    .line 78
    check-cast v3, Landroid/widget/FrameLayout;

    .line 79
    move-object v2, v0

    .line 80
    .line 81
    .line 82
    invoke-direct/range {v2 .. v9}, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;-><init>(Landroid/widget/FrameLayout;Lcom/github/mmin18/widget/RealtimeBlurView;Landroid/widget/RelativeLayout;Lcom/narvii/widget/PromotionalImageView;Lcom/narvii/list/overlay/OverlayListPlaceholder;Lcom/narvii/amino/databinding/ItemCommunityDetailJoinLayoutBinding;Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 83
    return-object v0

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    .line 94
    .line 95
    const-string v1, "Missing required view with ID: "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 103
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;
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

    const v0, 0x7f0d010f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/CommunityDetailLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
