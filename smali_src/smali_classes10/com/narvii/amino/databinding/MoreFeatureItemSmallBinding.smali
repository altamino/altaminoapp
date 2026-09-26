.class public final Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final divider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedItemBase:Lcom/narvii/feed/PopularFeedListItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedToolbar:Lcom/narvii/amino/databinding/FeedPopularToolbarTopSmallBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image:Lcom/narvii/widget/SecretImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final text:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Lcom/narvii/feed/PopularFeedListItem;Lcom/narvii/amino/databinding/FeedPopularToolbarTopSmallBinding;Lcom/narvii/widget/SecretImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/feed/PopularFeedListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/FeedPopularToolbarTopSmallBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/SecretImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;->divider:Landroid/view/View;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;->feedItemBase:Lcom/narvii/feed/PopularFeedListItem;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;->feedToolbar:Lcom/narvii/amino/databinding/FeedPopularToolbarTopSmallBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;->image:Lcom/narvii/widget/SecretImageView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;->text:Landroid/widget/TextView;

    .line 16
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;
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
    const v0, 0x7f0a044f

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v3

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a057b

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    move-object v4, v1

    .line 18
    .line 19
    check-cast v4, Lcom/narvii/feed/PopularFeedListItem;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0588

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/amino/databinding/FeedPopularToolbarTopSmallBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedPopularToolbarTopSmallBinding;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a06eb

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 41
    move-result-object v1

    .line 42
    move-object v6, v1

    .line 43
    .line 44
    check-cast v6, Lcom/narvii/widget/SecretImageView;

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0a0e51

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 53
    move-result-object v1

    .line 54
    move-object v7, v1

    .line 55
    .line 56
    check-cast v7, Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;

    .line 61
    move-object v2, p0

    .line 62
    .line 63
    check-cast v2, Landroid/widget/LinearLayout;

    .line 64
    move-object v1, v0

    .line 65
    .line 66
    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Lcom/narvii/feed/PopularFeedListItem;Lcom/narvii/amino/databinding/FeedPopularToolbarTopSmallBinding;Lcom/narvii/widget/SecretImageView;Landroid/widget/TextView;)V

    .line 68
    return-object v0

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    .line 79
    .line 80
    const-string v1, "Missing required view with ID: "

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;
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

    const v0, 0x7f0d05bf

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/MoreFeatureItemSmallBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
