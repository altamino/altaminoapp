.class public final Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final communityInfo:Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contentContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedCaption1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedImage1:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedToolbar:Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headerContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headlineFeedItem:Lcom/narvii/feed/FeedListItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image:Lcom/narvii/widget/FlexSizeImageView;
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

.field public final userHead:Lcom/narvii/amino/databinding/FeedUserHeaderHeadlineBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;Landroid/widget/FrameLayout;Lcom/narvii/feed/FeedListItem;Lcom/narvii/widget/FlexSizeImageView;Landroid/widget/TextView;Lcom/narvii/amino/databinding/FeedUserHeaderHeadlineBinding;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/feed/FeedListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/FlexSizeImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/amino/databinding/FeedUserHeaderHeadlineBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->communityInfo:Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->contentContainer:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->feedCaption1:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->feedImage1:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->feedToolbar:Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->headerContainer:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->headlineFeedItem:Lcom/narvii/feed/FeedListItem;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->image:Lcom/narvii/widget/FlexSizeImageView;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->title:Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->userHead:Lcom/narvii/amino/databinding/FeedUserHeaderHeadlineBinding;

    .line 26
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;
    .locals 14
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
    const v0, 0x7f0a039f

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    move-object v5, v1

    .line 22
    .line 23
    check-cast v5, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a056c

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
    check-cast v6, Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0a0576

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 45
    move-object v7, v1

    .line 46
    .line 47
    check-cast v7, Landroid/widget/FrameLayout;

    .line 48
    .line 49
    if-eqz v7, :cond_0

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0a0588

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;

    .line 62
    move-result-object v8

    .line 63
    .line 64
    .line 65
    const v0, 0x7f0a0646

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 69
    move-result-object v1

    .line 70
    move-object v9, v1

    .line 71
    .line 72
    check-cast v9, Landroid/widget/FrameLayout;

    .line 73
    .line 74
    if-eqz v9, :cond_0

    .line 75
    .line 76
    .line 77
    const v0, 0x7f0a0652

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 81
    move-result-object v1

    .line 82
    move-object v10, v1

    .line 83
    .line 84
    check-cast v10, Lcom/narvii/feed/FeedListItem;

    .line 85
    .line 86
    if-eqz v10, :cond_0

    .line 87
    .line 88
    .line 89
    const v0, 0x7f0a06eb

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 93
    move-result-object v1

    .line 94
    move-object v11, v1

    .line 95
    .line 96
    check-cast v11, Lcom/narvii/widget/FlexSizeImageView;

    .line 97
    .line 98
    if-eqz v11, :cond_0

    .line 99
    .line 100
    .line 101
    const v0, 0x7f0a0e9e

    .line 102
    .line 103
    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 105
    move-result-object v1

    .line 106
    move-object v12, v1

    .line 107
    .line 108
    check-cast v12, Landroid/widget/TextView;

    .line 109
    .line 110
    if-eqz v12, :cond_0

    .line 111
    .line 112
    .line 113
    const v0, 0x7f0a0f47

    .line 114
    .line 115
    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    if-eqz v1, :cond_0

    .line 120
    .line 121
    .line 122
    invoke-static {v1}, Lcom/narvii/amino/databinding/FeedUserHeaderHeadlineBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedUserHeaderHeadlineBinding;

    .line 123
    move-result-object v13

    .line 124
    .line 125
    new-instance v0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;

    .line 126
    move-object v3, p0

    .line 127
    .line 128
    check-cast v3, Landroid/widget/LinearLayout;

    .line 129
    move-object v2, v0

    .line 130
    .line 131
    .line 132
    invoke-direct/range {v2 .. v13}, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;Landroid/widget/FrameLayout;Lcom/narvii/feed/FeedListItem;Lcom/narvii/widget/FlexSizeImageView;Landroid/widget/TextView;Lcom/narvii/amino/databinding/FeedUserHeaderHeadlineBinding;)V

    .line 133
    return-object v0

    .line 134
    .line 135
    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 137
    move-result-object p0

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 142
    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    .line 144
    .line 145
    const-string v1, "Missing required view with ID: "

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 153
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;
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

    const v0, 0x7f0d0400

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlinePromotedVideoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
