.class public final Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final action:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final adContainer:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final authorCoverLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final authorCoverNickname:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final authorLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final authorNickname:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cofetti:Lcom/narvii/widget/cofetti/CofettiView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cover:Lcom/narvii/quiz/QuizMilestoneCoverImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coverTitle:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final milestoneRecycler:Lcom/narvii/widget/HorizontalRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final questionNumber:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final quizExplanation:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final quizMilestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final replay:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/AutoSizingTextView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/cofetti/CofettiView;Lcom/narvii/quiz/QuizMilestoneCoverImageView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;Lcom/narvii/quiz/QuizMilestoneAvatarView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/cofetti/CofettiView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/quiz/QuizMilestoneCoverImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/HorizontalRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/quiz/QuizMilestoneAvatarView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move-object v1, p1

    .line 6
    .line 7
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->action:Lcom/narvii/widget/AutoSizingTextView;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->adContainer:Landroid/view/View;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->authorCoverLayout:Landroid/widget/LinearLayout;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->authorCoverNickname:Landroid/widget/TextView;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->authorLayout:Landroid/widget/LinearLayout;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->authorNickname:Landroid/widget/TextView;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->cofetti:Lcom/narvii/widget/cofetti/CofettiView;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->cover:Lcom/narvii/quiz/QuizMilestoneCoverImageView;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->coverTitle:Lcom/narvii/widget/AutoSizingTextView;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->milestoneRecycler:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->questionNumber:Lcom/narvii/widget/AutoSizingTextView;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->quizExplanation:Landroid/widget/TextView;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->quizMilestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->replay:Lcom/narvii/widget/AutoSizingTextView;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->title:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;
    .locals 20
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
    const v1, 0x7f0a0059

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
    check-cast v5, Lcom/narvii/widget/AutoSizingTextView;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0091

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 21
    move-result-object v6

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0a0167

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    move-object v7, v2

    .line 32
    .line 33
    check-cast v7, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a0168

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 43
    move-object v8, v2

    .line 44
    .line 45
    check-cast v8, Landroid/widget/TextView;

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a0169

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 54
    move-result-object v2

    .line 55
    move-object v9, v2

    .line 56
    .line 57
    check-cast v9, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    if-eqz v9, :cond_0

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a016a

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 66
    move-result-object v2

    .line 67
    move-object v10, v2

    .line 68
    .line 69
    check-cast v10, Landroid/widget/TextView;

    .line 70
    .line 71
    if-eqz v10, :cond_0

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a032e

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 78
    move-result-object v2

    .line 79
    move-object v11, v2

    .line 80
    .line 81
    check-cast v11, Lcom/narvii/widget/cofetti/CofettiView;

    .line 82
    .line 83
    if-eqz v11, :cond_0

    .line 84
    .line 85
    .line 86
    const v1, 0x7f0a03cf

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 90
    move-result-object v2

    .line 91
    move-object v12, v2

    .line 92
    .line 93
    check-cast v12, Lcom/narvii/quiz/QuizMilestoneCoverImageView;

    .line 94
    .line 95
    if-eqz v12, :cond_0

    .line 96
    .line 97
    .line 98
    const v1, 0x7f0a03d6

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 102
    move-result-object v2

    .line 103
    move-object v13, v2

    .line 104
    .line 105
    check-cast v13, Lcom/narvii/widget/AutoSizingTextView;

    .line 106
    .line 107
    if-eqz v13, :cond_0

    .line 108
    .line 109
    .line 110
    const v1, 0x7f0a0974

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 114
    move-result-object v2

    .line 115
    move-object v14, v2

    .line 116
    .line 117
    check-cast v14, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 118
    .line 119
    if-eqz v14, :cond_0

    .line 120
    .line 121
    .line 122
    const v1, 0x7f0a0baa

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 126
    move-result-object v2

    .line 127
    move-object v15, v2

    .line 128
    .line 129
    check-cast v15, Lcom/narvii/widget/AutoSizingTextView;

    .line 130
    .line 131
    if-eqz v15, :cond_0

    .line 132
    .line 133
    .line 134
    const v1, 0x7f0a0baf

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 138
    move-result-object v2

    .line 139
    .line 140
    move-object/from16 v16, v2

    .line 141
    .line 142
    check-cast v16, Landroid/widget/TextView;

    .line 143
    .line 144
    if-eqz v16, :cond_0

    .line 145
    .line 146
    .line 147
    const v1, 0x7f0a0bb2

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    move-object/from16 v17, v2

    .line 154
    .line 155
    check-cast v17, Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 156
    .line 157
    if-eqz v17, :cond_0

    .line 158
    .line 159
    .line 160
    const v1, 0x7f0a0c15

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    move-object/from16 v18, v2

    .line 167
    .line 168
    check-cast v18, Lcom/narvii/widget/AutoSizingTextView;

    .line 169
    .line 170
    if-eqz v18, :cond_0

    .line 171
    .line 172
    .line 173
    const v1, 0x7f0a0e9e

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 177
    move-result-object v2

    .line 178
    .line 179
    move-object/from16 v19, v2

    .line 180
    .line 181
    check-cast v19, Landroid/widget/TextView;

    .line 182
    .line 183
    if-eqz v19, :cond_0

    .line 184
    .line 185
    new-instance v1, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;

    .line 186
    move-object v3, v1

    .line 187
    move-object v4, v0

    .line 188
    .line 189
    check-cast v4, Lcom/github/mmin18/widget/FlexLayout;

    .line 190
    .line 191
    .line 192
    invoke-direct/range {v3 .. v19}, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;-><init>(Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/AutoSizingTextView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/cofetti/CofettiView;Lcom/narvii/quiz/QuizMilestoneCoverImageView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;Lcom/narvii/quiz/QuizMilestoneAvatarView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;)V

    .line 193
    return-object v1

    .line 194
    .line 195
    .line 196
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    new-instance v1, Ljava/lang/NullPointerException;

    .line 204
    .line 205
    const-string v2, "Missing required view with ID: "

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    .line 212
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 213
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;
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

    const v0, 0x7f0d02fe

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/github/mmin18/widget/FlexLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentQuizMilestoneBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    return-object v0
.end method
