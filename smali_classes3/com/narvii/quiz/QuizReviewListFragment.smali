.class public Lcom/narvii/quiz/QuizReviewListFragment;
.super Lcom/narvii/app/NVFragment;
.source "QuizReviewListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;,
        Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;

.field private allItemCount:I

.field private curPosition:I

.field linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

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

.field recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/quiz/QuizReviewListFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->updateActionBarView()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/quiz/QuizReviewListFragment;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/quiz/QuizReviewListFragment;Lcom/narvii/model/QuizQuestion;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/narvii/quiz/QuizReviewListFragment;->configQuizQuestionView(Lcom/narvii/model/QuizQuestion;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V

    return-void
.end method

.method private configQuizQuestionView(Lcom/narvii/model/QuizQuestion;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V
    .locals 6

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 255
    :cond_0
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 256
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xebebec    # -1.9683E38f

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/narvii/image/BackgroundSource;

    aput-object p1, v3, v2

    iget-object v4, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quiz:Lcom/narvii/model/Blog;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 259
    :cond_1
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->questionView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 260
    iget-object v3, p1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f090085

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 264
    iget-object v3, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f090087

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 265
    iget-object v4, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0908cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v3, :cond_4

    .line 271
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v4, :cond_5

    .line 274
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_5
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaView:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_7

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f0c4c

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0f0c4d

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v3, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaErrorView:Landroid/view/View;

    const v4, 0x7f090b5b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaErrorView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaView:Lcom/narvii/widget/NVImageView;

    new-instance v3, Lcom/narvii/quiz/QuizReviewListFragment$2;

    invoke-direct {v3, p0, p2}, Lcom/narvii/quiz/QuizReviewListFragment$2;-><init>(Lcom/narvii/quiz/QuizReviewListFragment;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 295
    iget-object v0, p1, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 296
    :goto_0
    iget-object v3, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v3, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 299
    :cond_7
    iget-object v0, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    if-eqz v0, :cond_9

    .line 300
    iget-object v0, p1, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .line 301
    :goto_1
    invoke-direct {p0, p1, v1, p2}, Lcom/narvii/quiz/QuizReviewListFragment;->showAnswers(Lcom/narvii/model/QuizQuestion;ZLcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private goNext()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initRecycleView()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 160
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 161
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->adapter:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/narvii/quiz/QuizReviewListFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/quiz/QuizReviewListFragment$1;-><init>(Lcom/narvii/quiz/QuizReviewListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private isViewRightAnswer(Landroid/view/View;Lcom/narvii/model/QuizQuestion;)Z
    .locals 1

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 351
    instance-of v0, p1, Lcom/narvii/model/QuizOption;

    if-eqz v0, :cond_0

    .line 352
    check-cast p1, Lcom/narvii/model/QuizOption;

    .line 353
    invoke-virtual {p2}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/model/QuizOption;->isCorrect(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setCurTitle()V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showAnswers(Lcom/narvii/model/QuizQuestion;ZLcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V
    .locals 8

    .line 307
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    .line 311
    iget-object v1, p3, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 315
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    if-eqz p2, :cond_2

    const v5, 0x7f0b05c6

    goto :goto_1

    :cond_2
    const v5, 0x7f0b05c5

    :goto_1
    iget-object v6, p3, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    .line 316
    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 318
    iget-object v5, p3, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p2, 0x0

    .line 322
    :goto_3
    iget-object v1, p3, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_6

    .line 323
    iget-object v1, p3, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ge p2, v0, :cond_5

    .line 325
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/QuizOption;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    const v4, 0x7f090b9a

    .line 327
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0908e8

    .line 328
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/PushButton;

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    .line 330
    iget-object v5, v2, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 332
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 333
    invoke-direct {p0, v4, p1}, Lcom/narvii/quiz/QuizReviewListFragment;->isViewRightAnswer(Landroid/view/View;Lcom/narvii/model/QuizQuestion;)Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_4

    .line 334
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f060190

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060191

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v2, v6}, Lcom/narvii/widget/PushButton;->setColor(II)V

    .line 335
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 337
    :cond_4
    invoke-virtual {v1, v5}, Lcom/narvii/widget/PushButton;->setColor(I)V

    const v1, -0xd8d8d9

    .line 338
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private showExplanation()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    if-ge v0, v1, :cond_1

    .line 136
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 137
    iget-object v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    iget v2, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/QuizQuestion;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x104000a

    const/4 v3, 0x4

    .line 139
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 140
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_1
    return-void
.end method

.method private updateActionBarView()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget v1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    .line 181
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->setCurTitle()V

    .line 182
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f100012

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "quiz"

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    iput-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quiz:Lcom/narvii/model/Blog;

    const-string v0, "curPos"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    const-string v0, "allCount"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Blog;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quiz:Lcom/narvii/model/Blog;

    .line 64
    :goto_0
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quiz:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 65
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 103
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0c0002

    .line 104
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b05cc

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09075c

    if-ne v0, v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->goNext()V

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09040a

    if-ne v0, v1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->showExplanation()V

    .line 125
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 111
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    iget v3, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v3, 0x7f09040a

    .line 114
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09075c

    .line 115
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    iget v3, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "quiz"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->curPosition:I

    const-string v1, "curPos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    iget v0, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    const-string v1, "allCount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    new-instance p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;

    invoke-direct {p2, p0}, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;-><init>(Lcom/narvii/quiz/QuizReviewListFragment;)V

    iput-object p2, p0, Lcom/narvii/quiz/QuizReviewListFragment;->adapter:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;

    .line 87
    iget-object p2, p0, Lcom/narvii/quiz/QuizReviewListFragment;->quizQuestions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/narvii/quiz/QuizReviewListFragment;->allItemCount:I

    const/4 p2, 0x1

    .line 88
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f09093b

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 91
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->initRecycleView()V

    .line 92
    invoke-direct {p0}, Lcom/narvii/quiz/QuizReviewListFragment;->setCurTitle()V

    .line 93
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method
