.class public final Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final TitleLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final content:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feedToolbar:Lcom/narvii/amino/databinding/SnippetFeedToolbarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final icon:Lcom/narvii/widget/TintButton;
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

.field private final rootView:Lcom/narvii/feed/FeedListItem;
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
.method private constructor <init>(Lcom/narvii/feed/FeedListItem;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/amino/databinding/SnippetFeedToolbarBinding;Lcom/narvii/widget/TintButton;Lcom/narvii/feed/quizzes/QuizCoverView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/FontAwesomeView;Lcom/narvii/widget/SpinningView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/narvii/feed/FeedListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/SnippetFeedToolbarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/feed/quizzes/QuizCoverView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/FontAwesomeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->rootView:Lcom/narvii/feed/FeedListItem;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->TitleLayout:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->content:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->feedToolbar:Lcom/narvii/amino/databinding/SnippetFeedToolbarBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->icon:Lcom/narvii/widget/TintButton;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->quizCover:Lcom/narvii/feed/quizzes/QuizCoverView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->quizPlayedTag:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->quizPlayedTimes:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->startQuiz:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->startQuizIcon:Lcom/narvii/widget/FontAwesomeView;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->startQuizLoading:Lcom/narvii/widget/SpinningView;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->startQuizText:Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object p13, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->stub1:Lcom/github/mmin18/widget/FlexLayout;

    .line 30
    .line 31
    iput-object p14, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->title:Landroid/widget/TextView;

    .line 32
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;
    .locals 18
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
    const v1, 0x7f0a002b

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    move-object v5, v2

    .line 11
    .line 12
    check-cast v5, Landroid/widget/LinearLayout;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a039d

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    move-object v6, v2

    .line 23
    .line 24
    check-cast v6, Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0588

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Lcom/narvii/amino/databinding/SnippetFeedToolbarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SnippetFeedToolbarBinding;

    .line 39
    move-result-object v7

    .line 40
    .line 41
    .line 42
    const v1, 0x7f0a06d5

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    move-result-object v2

    .line 47
    move-object v8, v2

    .line 48
    .line 49
    check-cast v8, Lcom/narvii/widget/TintButton;

    .line 50
    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    .line 54
    const v1, 0x7f0a0bac

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v2

    .line 59
    move-object v9, v2

    .line 60
    .line 61
    check-cast v9, Lcom/narvii/feed/quizzes/QuizCoverView;

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    .line 66
    const v1, 0x7f0a0bb5

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 70
    move-result-object v2

    .line 71
    move-object v10, v2

    .line 72
    .line 73
    check-cast v10, Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v10, :cond_0

    .line 76
    .line 77
    .line 78
    const v1, 0x7f0a0bb6

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 82
    move-result-object v2

    .line 83
    move-object v11, v2

    .line 84
    .line 85
    check-cast v11, Landroid/widget/TextView;

    .line 86
    .line 87
    if-eqz v11, :cond_0

    .line 88
    .line 89
    .line 90
    const v1, 0x7f0a0d88

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 94
    move-result-object v2

    .line 95
    move-object v12, v2

    .line 96
    .line 97
    check-cast v12, Landroid/widget/LinearLayout;

    .line 98
    .line 99
    if-eqz v12, :cond_0

    .line 100
    .line 101
    .line 102
    const v1, 0x7f0a0d89

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 106
    move-result-object v2

    .line 107
    move-object v13, v2

    .line 108
    .line 109
    check-cast v13, Lcom/narvii/widget/FontAwesomeView;

    .line 110
    .line 111
    if-eqz v13, :cond_0

    .line 112
    .line 113
    .line 114
    const v1, 0x7f0a0d8b

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 118
    move-result-object v2

    .line 119
    move-object v14, v2

    .line 120
    .line 121
    check-cast v14, Lcom/narvii/widget/SpinningView;

    .line 122
    .line 123
    if-eqz v14, :cond_0

    .line 124
    .line 125
    .line 126
    const v1, 0x7f0a0d8c

    .line 127
    .line 128
    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 130
    move-result-object v2

    .line 131
    move-object v15, v2

    .line 132
    .line 133
    check-cast v15, Landroid/widget/TextView;

    .line 134
    .line 135
    if-eqz v15, :cond_0

    .line 136
    .line 137
    .line 138
    const v1, 0x7f0a0de5

    .line 139
    .line 140
    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    move-object/from16 v16, v2

    .line 145
    .line 146
    check-cast v16, Lcom/github/mmin18/widget/FlexLayout;

    .line 147
    .line 148
    if-eqz v16, :cond_0

    .line 149
    .line 150
    .line 151
    const v1, 0x7f0a0e9e

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    move-object/from16 v17, v2

    .line 158
    .line 159
    check-cast v17, Landroid/widget/TextView;

    .line 160
    .line 161
    if-eqz v17, :cond_0

    .line 162
    .line 163
    new-instance v1, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;

    .line 164
    move-object v4, v0

    .line 165
    .line 166
    check-cast v4, Lcom/narvii/feed/FeedListItem;

    .line 167
    move-object v3, v1

    .line 168
    .line 169
    .line 170
    invoke-direct/range {v3 .. v17}, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;-><init>(Lcom/narvii/feed/FeedListItem;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/amino/databinding/SnippetFeedToolbarBinding;Lcom/narvii/widget/TintButton;Lcom/narvii/feed/quizzes/QuizCoverView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/FontAwesomeView;Lcom/narvii/widget/SpinningView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/TextView;)V

    .line 171
    return-object v1

    .line 172
    .line 173
    .line 174
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    new-instance v1, Ljava/lang/NullPointerException;

    .line 182
    .line 183
    const-string v2, "Missing required view with ID: "

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    .line 190
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 191
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;
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

    const v0, 0x7f0d06eb

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->getRoot()Lcom/narvii/feed/FeedListItem;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/feed/FeedListItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/SnippetFeedQuizItemBinding;->rootView:Lcom/narvii/feed/FeedListItem;

    return-object v0
.end method
