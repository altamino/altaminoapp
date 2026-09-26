.class public final Lcom/narvii/amino/databinding/FeedItemBaseBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cornerIcon:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedItemBase:Lcom/narvii/feed/PopularFeedListItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedToolbar:Lcom/narvii/amino/databinding/FeedPopularToolbarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image:Lcom/narvii/widget/SecretImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/feed/PopularFeedListItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final text:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/feed/PopularFeedListItem;Landroid/widget/TextView;Lcom/narvii/feed/PopularFeedListItem;Lcom/narvii/amino/databinding/FeedPopularToolbarBinding;Lcom/narvii/widget/SecretImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/narvii/feed/PopularFeedListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/feed/PopularFeedListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/FeedPopularToolbarBinding;
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
    iput-object p1, p0, Lcom/narvii/amino/databinding/FeedItemBaseBinding;->rootView:Lcom/narvii/feed/PopularFeedListItem;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FeedItemBaseBinding;->cornerIcon:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FeedItemBaseBinding;->feedItemBase:Lcom/narvii/feed/PopularFeedListItem;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FeedItemBaseBinding;->feedToolbar:Lcom/narvii/amino/databinding/FeedPopularToolbarBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FeedItemBaseBinding;->image:Lcom/narvii/widget/SecretImageView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FeedItemBaseBinding;->text:Landroid/widget/TextView;

    .line 16
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedItemBaseBinding;
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
    const v0, 0x7f0a03bb

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
    move-object v5, p0

    .line 14
    .line 15
    check-cast v5, Lcom/narvii/feed/PopularFeedListItem;

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0588

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/amino/databinding/FeedPopularToolbarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedPopularToolbarBinding;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0a06eb

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
    check-cast v7, Lcom/narvii/widget/SecretImageView;

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    .line 43
    const v0, 0x7f0a0e51

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
    check-cast v8, Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    new-instance p0, Lcom/narvii/amino/databinding/FeedItemBaseBinding;

    .line 55
    move-object v2, p0

    .line 56
    move-object v3, v5

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v2 .. v8}, Lcom/narvii/amino/databinding/FeedItemBaseBinding;-><init>(Lcom/narvii/feed/PopularFeedListItem;Landroid/widget/TextView;Lcom/narvii/feed/PopularFeedListItem;Lcom/narvii/amino/databinding/FeedPopularToolbarBinding;Lcom/narvii/widget/SecretImageView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FeedItemBaseBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FeedItemBaseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FeedItemBaseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FeedItemBaseBinding;
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

    const v0, 0x7f0d0254

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FeedItemBaseBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedItemBaseBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FeedItemBaseBinding;->getRoot()Lcom/narvii/feed/PopularFeedListItem;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/feed/PopularFeedListItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FeedItemBaseBinding;->rootView:Lcom/narvii/feed/PopularFeedListItem;

    return-object v0
.end method
