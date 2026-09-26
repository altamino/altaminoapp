.class public final Lcom/narvii/amino/databinding/FeedItemItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final content:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedItemCard:Lcom/narvii/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedItemCard2:Lcom/narvii/widget/Card2View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedToolbar:Lcom/narvii/amino/databinding/FeedToolbarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image:Lcom/narvii/widget/SecretImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mask:Lcom/narvii/widget/FontAwesomeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/feed/FeedListItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stub1:Lcom/narvii/widget/CardLayout;
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
.method private constructor <init>(Lcom/narvii/feed/FeedListItem;Landroid/widget/TextView;Lcom/narvii/widget/CardView;Lcom/narvii/widget/Card2View;Lcom/narvii/amino/databinding/FeedToolbarBinding;Lcom/narvii/widget/SecretImageView;Lcom/narvii/widget/FontAwesomeView;Lcom/narvii/widget/CardLayout;Landroid/widget/TextView;Lcom/narvii/amino/databinding/FeedUserHeaderBinding;)V
    .locals 0
    .param p1    # Lcom/narvii/feed/FeedListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/Card2View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/amino/databinding/FeedToolbarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/SecretImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/FontAwesomeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/CardLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/amino/databinding/FeedUserHeaderBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->rootView:Lcom/narvii/feed/FeedListItem;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->content:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->feedItemCard:Lcom/narvii/widget/CardView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->feedItemCard2:Lcom/narvii/widget/Card2View;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->feedToolbar:Lcom/narvii/amino/databinding/FeedToolbarBinding;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->image:Lcom/narvii/widget/SecretImageView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->mask:Lcom/narvii/widget/FontAwesomeView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->stub1:Lcom/narvii/widget/CardLayout;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->title:Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->userHead:Lcom/narvii/amino/databinding/FeedUserHeaderBinding;

    .line 24
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedItemItemBinding;
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
    const v0, 0x7f0a057c

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
    check-cast v5, Lcom/narvii/widget/CardView;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a057d

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
    check-cast v6, Lcom/narvii/widget/Card2View;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0588

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/narvii/amino/databinding/FeedToolbarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedToolbarBinding;

    .line 49
    move-result-object v7

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0a06eb

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 56
    move-result-object v1

    .line 57
    move-object v8, v1

    .line 58
    .line 59
    check-cast v8, Lcom/narvii/widget/SecretImageView;

    .line 60
    .line 61
    if-eqz v8, :cond_0

    .line 62
    .line 63
    .line 64
    const v0, 0x7f0a084a

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
    check-cast v9, Lcom/narvii/widget/FontAwesomeView;

    .line 72
    .line 73
    if-eqz v9, :cond_0

    .line 74
    .line 75
    .line 76
    const v0, 0x7f0a0de5

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
    check-cast v10, Lcom/narvii/widget/CardLayout;

    .line 84
    .line 85
    if-eqz v10, :cond_0

    .line 86
    .line 87
    .line 88
    const v0, 0x7f0a0e9e

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
    check-cast v11, Landroid/widget/TextView;

    .line 96
    .line 97
    if-eqz v11, :cond_0

    .line 98
    .line 99
    .line 100
    const v0, 0x7f0a0f47

    .line 101
    .line 102
    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    if-eqz v1, :cond_0

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Lcom/narvii/amino/databinding/FeedUserHeaderBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedUserHeaderBinding;

    .line 110
    move-result-object v12

    .line 111
    .line 112
    new-instance v0, Lcom/narvii/amino/databinding/FeedItemItemBinding;

    .line 113
    move-object v3, p0

    .line 114
    .line 115
    check-cast v3, Lcom/narvii/feed/FeedListItem;

    .line 116
    move-object v2, v0

    .line 117
    .line 118
    .line 119
    invoke-direct/range {v2 .. v12}, Lcom/narvii/amino/databinding/FeedItemItemBinding;-><init>(Lcom/narvii/feed/FeedListItem;Landroid/widget/TextView;Lcom/narvii/widget/CardView;Lcom/narvii/widget/Card2View;Lcom/narvii/amino/databinding/FeedToolbarBinding;Lcom/narvii/widget/SecretImageView;Lcom/narvii/widget/FontAwesomeView;Lcom/narvii/widget/CardLayout;Landroid/widget/TextView;Lcom/narvii/amino/databinding/FeedUserHeaderBinding;)V

    .line 120
    return-object v0

    .line 121
    .line 122
    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object p0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    .line 131
    .line 132
    const-string v1, "Missing required view with ID: "

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 140
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FeedItemItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FeedItemItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FeedItemItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FeedItemItemBinding;
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

    const v0, 0x7f0d0255

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FeedItemItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedItemItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FeedItemItemBinding;->getRoot()Lcom/narvii/feed/FeedListItem;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/feed/FeedListItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FeedItemItemBinding;->rootView:Lcom/narvii/feed/FeedListItem;

    return-object v0
.end method
