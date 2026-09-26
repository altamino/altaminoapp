.class public final Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;
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

.field public final quizCover:Lcom/narvii/feed/quizzes/QuizCoverView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final quizPlayedTag:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final quizPlayedTimes:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final startQuiz:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final startQuizIcon:Lcom/narvii/widget/FontAwesomeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final startQuizLoading:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final startQuizText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stub1:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;Lcom/narvii/feed/FeedListItem;Lcom/narvii/feed/quizzes/QuizCoverView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/FontAwesomeView;Lcom/narvii/widget/SpinningView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/TextView;)V
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
    .param p5    # Lcom/narvii/feed/quizzes/QuizCoverView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/FontAwesomeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->communityInfo:Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->feedToolbar:Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->headlineFeedItem:Lcom/narvii/feed/FeedListItem;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->quizCover:Lcom/narvii/feed/quizzes/QuizCoverView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->quizPlayedTag:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->quizPlayedTimes:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->startQuiz:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->startQuizIcon:Lcom/narvii/widget/FontAwesomeView;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->startQuizLoading:Lcom/narvii/widget/SpinningView;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->startQuizText:Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->stub1:Lcom/github/mmin18/widget/FlexLayout;

    .line 28
    .line 29
    iput-object p13, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->title:Landroid/widget/TextView;

    .line 30
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;
    .locals 17
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0370

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;

    .line 15
    move-result-object v5

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a0588

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0a0652

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 35
    move-result-object v2

    .line 36
    move-object v7, v2

    .line 37
    .line 38
    check-cast v7, Lcom/narvii/feed/FeedListItem;

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    .line 43
    const v1, 0x7f0a0bac

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 47
    move-result-object v2

    .line 48
    move-object v8, v2

    .line 49
    .line 50
    check-cast v8, Lcom/narvii/feed/quizzes/QuizCoverView;

    .line 51
    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    .line 55
    const v1, 0x7f0a0bb5

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 59
    move-result-object v2

    .line 60
    move-object v9, v2

    .line 61
    .line 62
    check-cast v9, Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v9, :cond_0

    .line 65
    .line 66
    .line 67
    const v1, 0x7f0a0bb6

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 71
    move-result-object v2

    .line 72
    move-object v10, v2

    .line 73
    .line 74
    check-cast v10, Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz v10, :cond_0

    .line 77
    .line 78
    .line 79
    const v1, 0x7f0a0d88

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 83
    move-result-object v2

    .line 84
    move-object v11, v2

    .line 85
    .line 86
    check-cast v11, Landroid/widget/LinearLayout;

    .line 87
    .line 88
    if-eqz v11, :cond_0

    .line 89
    .line 90
    .line 91
    const v1, 0x7f0a0d89

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 95
    move-result-object v2

    .line 96
    move-object v12, v2

    .line 97
    .line 98
    check-cast v12, Lcom/narvii/widget/FontAwesomeView;

    .line 99
    .line 100
    if-eqz v12, :cond_0

    .line 101
    .line 102
    .line 103
    const v1, 0x7f0a0d8b

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 107
    move-result-object v2

    .line 108
    move-object v13, v2

    .line 109
    .line 110
    check-cast v13, Lcom/narvii/widget/SpinningView;

    .line 111
    .line 112
    if-eqz v13, :cond_0

    .line 113
    .line 114
    .line 115
    const v1, 0x7f0a0d8c

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 119
    move-result-object v2

    .line 120
    move-object v14, v2

    .line 121
    .line 122
    check-cast v14, Landroid/widget/TextView;

    .line 123
    .line 124
    if-eqz v14, :cond_0

    .line 125
    .line 126
    .line 127
    const v1, 0x7f0a0de5

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 131
    move-result-object v2

    .line 132
    move-object v15, v2

    .line 133
    .line 134
    check-cast v15, Lcom/github/mmin18/widget/FlexLayout;

    .line 135
    .line 136
    if-eqz v15, :cond_0

    .line 137
    .line 138
    .line 139
    const v1, 0x7f0a0e9e

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    move-object/from16 v16, v2

    .line 146
    .line 147
    check-cast v16, Landroid/widget/TextView;

    .line 148
    .line 149
    if-eqz v16, :cond_0

    .line 150
    .line 151
    new-instance v1, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;

    .line 152
    move-object v4, v0

    .line 153
    .line 154
    check-cast v4, Landroid/widget/LinearLayout;

    .line 155
    move-object v3, v1

    .line 156
    .line 157
    .line 158
    invoke-direct/range {v3 .. v16}, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/CommunityInfoLayoutBinding;Lcom/narvii/amino/databinding/FeedToolbarHeadlineBinding;Lcom/narvii/feed/FeedListItem;Lcom/narvii/feed/quizzes/QuizCoverView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/FontAwesomeView;Lcom/narvii/widget/SpinningView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/TextView;)V

    .line 159
    return-object v1

    .line 160
    .line 161
    .line 162
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    new-instance v1, Ljava/lang/NullPointerException;

    .line 170
    .line 171
    const-string v2, "Missing required view with ID: "

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    .line 178
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 179
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;
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

    const v0, 0x7f0d0401

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ItemFeedHeadlineQuizBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
