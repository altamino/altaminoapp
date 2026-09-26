.class public final Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final communityInfo:Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedToolbar:Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headlineFeedItem:Lcom/narvii/feed/FeedListItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pollOptionList:Lcom/narvii/amino/databinding/ItemHeadlinePollOptionListBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;Lcom/narvii/feed/FeedListItem;Lcom/narvii/amino/databinding/ItemHeadlinePollOptionListBinding;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/feed/FeedListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/amino/databinding/ItemHeadlinePollOptionListBinding;
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
    iput-object p1, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;->communityInfo:Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;->feedToolbar:Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;->headlineFeedItem:Lcom/narvii/feed/FeedListItem;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;->pollOptionList:Lcom/narvii/amino/databinding/ItemHeadlinePollOptionListBinding;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;->title:Landroid/widget/TextView;

    .line 16
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;
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
    const v0, 0x7f0a0370

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a0588

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0652

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    move-object v6, v1

    .line 35
    .line 36
    check-cast v6, Lcom/narvii/feed/FeedListItem;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a0b17

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/narvii/amino/databinding/ItemHeadlinePollOptionListBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemHeadlinePollOptionListBinding;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a0e9e

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    move-object v8, v1

    .line 60
    .line 61
    check-cast v8, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v8, :cond_0

    .line 64
    .line 65
    new-instance v0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;

    .line 66
    move-object v3, p0

    .line 67
    .line 68
    check-cast v3, Landroid/widget/LinearLayout;

    .line 69
    move-object v2, v0

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v2 .. v8}, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;Lcom/narvii/feed/FeedListItem;Lcom/narvii/amino/databinding/ItemHeadlinePollOptionListBinding;Landroid/widget/TextView;)V

    .line 73
    return-object v0

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 77
    move-result-object p0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    .line 84
    .line 85
    const-string v1, "Missing required view with ID: "

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;
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

    const v0, 0x7f0d03fe

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePollBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
