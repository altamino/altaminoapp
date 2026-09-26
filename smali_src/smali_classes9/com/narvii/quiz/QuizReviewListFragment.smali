.class public Lcom/narvii/quiz/QuizReviewListFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;,
        Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;

.field private allItemCount:I

.field private curPosition:I

.field linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected quiz:Lcom/narvii/model/Blog;

.field private quizQuestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizQuestion;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private configQuizQuestionView(Lcom/narvii/model/QuizQuestion;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 15
    .line 16
    .line 17
    const v4, -0xebebec    # -1.9683E38f

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 26
    const/4 v3, 0x2

    .line 27
    .line 28
    new-array v3, v3, [Lcom/narvii/image/BackgroundSource;

    .line 29
    .line 30
    aput-object p1, v3, v2

    .line 31
    .line 32
    iget-object v4, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quiz:Lcom/narvii/model/Blog;

    .line 33
    .line 34
    aput-object v4, v3, v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 38
    .line 39
    :cond_1
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->questionView:Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v3, p1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    :cond_2
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    const v3, 0x7f0a00ec

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 58
    .line 59
    .line 60
    const v4, 0x7f0a00ee

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    iget-object v4, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 67
    .line 68
    .line 69
    const v5, 0x7f0a0b8d

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v4

    .line 74
    const/4 v5, 0x4

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    :cond_3
    if-eqz v3, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    :cond_4
    if-eqz v4, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    :cond_5
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaView:Lcom/narvii/widget/NVImageView;

    .line 92
    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const v3, 0x7f120d79

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v3, "\n"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const v3, 0x7f120d7a

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    iget-object v3, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaErrorView:Landroid/view/View;

    .line 130
    .line 131
    .line 132
    const v4, 0x7f0a0e51

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v3

    .line 137
    .line 138
    check-cast v3, Landroid/widget/TextView;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaErrorView:Landroid/view/View;

    .line 144
    .line 145
    const/16 v3, 0x8

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaView:Lcom/narvii/widget/NVImageView;

    .line 156
    .line 157
    new-instance v3, Lcom/narvii/quiz/QuizReviewListFragment$2;

    .line 158
    .line 159
    .line 160
    invoke-direct {v3, p0, p2}, Lcom/narvii/quiz/QuizReviewListFragment$2;-><init>(Lcom/narvii/quiz/QuizReviewListFragment;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 164
    .line 165
    iget-object v0, p1, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    check-cast v0, Lcom/narvii/model/Media;

    .line 174
    goto :goto_0

    .line 175
    :cond_6
    const/4 v0, 0x0

    .line 176
    .line 177
    :goto_0
    iget-object v3, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaView:Lcom/narvii/widget/NVImageView;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 181
    .line 182
    :cond_7
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    .line 183
    .line 184
    if-eqz v0, :cond_9

    .line 185
    .line 186
    iget-object v0, p1, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 187
    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    .line 191
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    if-eqz v0, :cond_8

    .line 195
    goto :goto_1

    .line 196
    :cond_8
    move v1, v2

    .line 197
    .line 198
    .line 199
    :goto_1
    invoke-direct {p0, p1, v1, p2}, Lcom/narvii/quiz/QuizReviewListFragment;->showAnswers(Lcom/narvii/model/QuizQuestion;ZLcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V

    .line 200
    :cond_9
    :goto_2
    return-void
.end method

.method private goNext()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iget v3, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    .line 11
    .line 12
    if-lt v2, v3, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method private initRecycleView()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->adapter:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    new-instance v1, Lcom/narvii/quiz/QuizReviewListFragment$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/narvii/quiz/QuizReviewListFragment$1;-><init>(Lcom/narvii/quiz/QuizReviewListFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 41
    return-void
.end method

.method private isViewRightAnswer(Landroid/view/View;Lcom/narvii/model/QuizQuestion;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/QuizOption;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/QuizOption;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/model/QuizOption;->isCorrect(Ljava/lang/String;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method static bridge synthetic n(Lcom/narvii/quiz/QuizReviewListFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/quiz/QuizReviewListFragment;Lcom/narvii/model/QuizQuestion;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/quiz/QuizReviewListFragment;->configQuizQuestionView(Lcom/narvii/model/QuizQuestion;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/quiz/QuizReviewListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->updateActionBarView()V

    return-void
.end method

.method private setCurTitle()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, " / "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method

.method private showAnswers(Lcom/narvii/model/QuizQuestion;ZLcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-object v1, p3, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    .line 18
    const/4 v2, 0x4

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v1

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    move v1, v3

    .line 30
    .line 31
    :goto_0
    if-ge v1, v2, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    .line 44
    const v5, 0x7f0d067d

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_2
    const v5, 0x7f0d067c

    .line 49
    .line 50
    :goto_1
    iget-object v6, p3, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    iget-object v5, p3, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    :goto_2
    move p2, v3

    .line 64
    .line 65
    :goto_3
    iget-object v1, p3, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 69
    move-result v1

    .line 70
    .line 71
    if-ge p2, v1, :cond_6

    .line 72
    .line 73
    iget-object v1, p3, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    if-ge p2, v0, :cond_5

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    check-cast v2, Lcom/narvii/model/QuizOption;

    .line 90
    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    .line 96
    const v4, 0x7f0a0e9e

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v4

    .line 101
    .line 102
    check-cast v4, Landroid/widget/TextView;

    .line 103
    .line 104
    .line 105
    const v5, 0x7f0a0ba7

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    check-cast v1, Lcom/narvii/widget/PushButton;

    .line 112
    .line 113
    if-eqz v4, :cond_5

    .line 114
    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    iget-object v5, v2, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, v4, p1}, Lcom/narvii/quiz/QuizReviewListFragment;->isViewRightAnswer(Landroid/view/View;Lcom/narvii/model/QuizQuestion;)Z

    .line 130
    move-result v2

    .line 131
    const/4 v5, -0x1

    .line 132
    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    .line 140
    const v6, 0x7f0603fd

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 144
    move-result v2

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 148
    move-result-object v6

    .line 149
    .line 150
    .line 151
    const v7, 0x7f0603fe

    .line 152
    .line 153
    .line 154
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 155
    move-result v6

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2, v6}, Lcom/narvii/widget/PushButton;->setColor(II)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    goto :goto_4

    .line 163
    .line 164
    .line 165
    :cond_4
    invoke-virtual {v1, v5}, Lcom/narvii/widget/PushButton;->setColor(I)V

    .line 166
    .line 167
    .line 168
    const v1, -0xd8d8d9

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    :cond_5
    :goto_4
    add-int/lit8 p2, p2, 0x1

    .line 174
    goto :goto_3

    .line 175
    :cond_6
    return-void
.end method

.method private showExplanation()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    .line 22
    .line 23
    iget v2, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/model/QuizQuestion;

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    move-object v1, v2

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    const v1, 0x104000a

    .line 45
    const/4 v3, 0x4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 52
    :cond_1
    return-void
.end method

.method private updateActionBarView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->setCurTitle()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f130013

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/model/Blog;

    .line 6
    .line 7
    const-string v1, "quiz"

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/Blog;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quiz:Lcom/narvii/model/Blog;

    .line 22
    .line 23
    const-string v0, "curPos"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    .line 29
    iput v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 30
    .line 31
    const-string v0, "allCount"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 35
    move-result p1

    .line 36
    .line 37
    iput p1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/model/Blog;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quiz:Lcom/narvii/model/Blog;

    .line 51
    .line 52
    :goto_0
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quiz:Lcom/narvii/model/Blog;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 75
    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0e0004

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 10
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0683

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a09f2

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->goNext()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a0542

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->showExplanation()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v3, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    .line 20
    .line 21
    iget v3, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/QuizQuestion;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    move v0, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v2

    .line 41
    .line 42
    .line 43
    :goto_0
    const v3, 0x7f0a0542

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0a09f2

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iget v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 60
    .line 61
    iget v3, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    .line 62
    sub-int/2addr v3, v1

    .line 63
    .line 64
    if-ge v0, v3, :cond_1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v1, v2

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 70
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quiz:Lcom/narvii/model/Blog;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "quiz"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v0, "curPos"

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    const-string v0, "allCount"

    .line 24
    .line 25
    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;-><init>(Lcom/narvii/quiz/QuizReviewListFragment;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/quiz/QuizReviewListFragment;->adapter:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 16
    move-result p2

    .line 17
    .line 18
    iput p2, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    .line 19
    const/4 p2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0a0bf9

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->initRecycleView()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->setCurTitle()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 43
    return-void
.end method
