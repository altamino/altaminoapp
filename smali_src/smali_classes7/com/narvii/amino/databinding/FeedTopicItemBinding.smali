.class public final Lcom/narvii/amino/databinding/FeedTopicItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final content:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedImages:Lcom/narvii/amino/databinding/FeedImage3SecretBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedToolbar:Lcom/narvii/amino/databinding/FeedToolbarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final icon:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/feed/FeedListItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userHead:Lcom/narvii/amino/databinding/FeedUserHeaderBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/feed/FeedListItem;Landroid/widget/TextView;Lcom/narvii/amino/databinding/FeedImage3SecretBinding;Lcom/narvii/amino/databinding/FeedToolbarBinding;Lcom/narvii/widget/TintButton;Landroid/widget/TextView;Lcom/narvii/amino/databinding/FeedUserHeaderBinding;)V
    .locals 0
    .param p1    # Lcom/narvii/feed/FeedListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/FeedImage3SecretBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/FeedToolbarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/amino/databinding/FeedUserHeaderBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->rootView:Lcom/narvii/feed/FeedListItem;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->content:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->feedImages:Lcom/narvii/amino/databinding/FeedImage3SecretBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->feedToolbar:Lcom/narvii/amino/databinding/FeedToolbarBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->icon:Lcom/narvii/widget/TintButton;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->title:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->userHead:Lcom/narvii/amino/databinding/FeedUserHeaderBinding;

    .line 18
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedTopicItemBinding;
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
    const v0, 0x7f0a039d

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
    const v0, 0x7f0a0579

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/FeedImage3SecretBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedImage3SecretBinding;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0588

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/amino/databinding/FeedToolbarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedToolbarBinding;

    .line 38
    move-result-object v6

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a06d5

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    move-object v7, v1

    .line 47
    .line 48
    check-cast v7, Lcom/narvii/widget/TintButton;

    .line 49
    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0a0e9e

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 57
    move-result-object v1

    .line 58
    move-object v8, v1

    .line 59
    .line 60
    check-cast v8, Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v8, :cond_0

    .line 63
    .line 64
    .line 65
    const v0, 0x7f0a0f47

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/narvii/amino/databinding/FeedUserHeaderBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedUserHeaderBinding;

    .line 75
    move-result-object v9

    .line 76
    .line 77
    new-instance v0, Lcom/narvii/amino/databinding/FeedTopicItemBinding;

    .line 78
    move-object v3, p0

    .line 79
    .line 80
    check-cast v3, Lcom/narvii/feed/FeedListItem;

    .line 81
    move-object v2, v0

    .line 82
    .line 83
    .line 84
    invoke-direct/range {v2 .. v9}, Lcom/narvii/amino/databinding/FeedTopicItemBinding;-><init>(Lcom/narvii/feed/FeedListItem;Landroid/widget/TextView;Lcom/narvii/amino/databinding/FeedImage3SecretBinding;Lcom/narvii/amino/databinding/FeedToolbarBinding;Lcom/narvii/widget/TintButton;Landroid/widget/TextView;Lcom/narvii/amino/databinding/FeedUserHeaderBinding;)V

    .line 85
    return-object v0

    .line 86
    .line 87
    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object p0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    .line 96
    .line 97
    const-string v1, "Missing required view with ID: "

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FeedTopicItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FeedTopicItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FeedTopicItemBinding;
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

    const v0, 0x7f0d027d

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedTopicItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->getRoot()Lcom/narvii/feed/FeedListItem;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/feed/FeedListItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FeedTopicItemBinding;->rootView:Lcom/narvii/feed/FeedListItem;

    return-object v0
.end method
