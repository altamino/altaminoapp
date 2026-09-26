.class public Lcom/narvii/feed/quizzes/QuizCoverView;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"


# instance fields
.field darkTheme:Z

.field layoutId:I

.field quiz:Lcom/narvii/model/Blog;

.field quizCoverBackgroundView:Landroid/view/View;

.field public quizCoverImageView:Lcom/narvii/widget/NVImageView;

.field quizTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/amino/R$styleable;->QuizCoverView:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0d0674

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    move-result p2

    .line 18
    .line 19
    iput p2, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->layoutId:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizCoverView;->initView()V

    .line 26
    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->layoutId:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0bae

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverImageView:Lcom/narvii/widget/NVImageView;

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0bad

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverBackgroundView:Landroid/view/View;

    .line 30
    .line 31
    .line 32
    const v0, 0x7f0a0bbd

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizTitleTextView:Landroid/widget/TextView;

    .line 41
    return-void
.end method


# virtual methods
.method public setDarkTheme(Z)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->darkTheme:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverImageView:Lcom/narvii/widget/NVImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0603db

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    const p1, 0x7f0603d9

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    return-void
.end method

.method public setQuiz(Lcom/narvii/model/Blog;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/feed/quizzes/QuizCoverView;->setQuiz(Lcom/narvii/model/Blog;Z)V

    return-void
.end method

.method public setQuiz(Lcom/narvii/model/Blog;Z)V
    .locals 4

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quiz:Lcom/narvii/model/Blog;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->firstMediaIncludePromote()Lcom/narvii/model/Media;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverImageView:Lcom/narvii/widget/NVImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 3
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverImageView:Lcom/narvii/widget/NVImageView;

    .line 4
    instance-of v3, v0, Lcom/narvii/widget/SecretImageView;

    if-eqz v3, :cond_2

    .line 5
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    iget-boolean v3, p1, Lcom/narvii/model/Feed;->needHidden:Z

    invoke-virtual {v0, p2, v3}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :goto_2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverBackgroundView:Landroid/view/View;

    if-nez p2, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    .line 7
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizTitleTextView:Landroid/widget/TextView;

    if-nez p2, :cond_4

    move v1, v2

    .line 8
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizTitleTextView:Landroid/widget/TextView;

    .line 9
    iget-object p1, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
