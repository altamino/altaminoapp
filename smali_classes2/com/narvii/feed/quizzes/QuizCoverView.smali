.class public Lcom/narvii/feed/quizzes/QuizCoverView;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "QuizCoverView.java"


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

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcom/narvii/amino/R$styleable;->QuizCoverView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f0b05bd

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->layoutId:I

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizCoverView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->layoutId:I

    invoke-static {v0, v1, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0908ef

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverImageView:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0908ee

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverBackgroundView:Landroid/view/View;

    const v0, 0x7f090900

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizTitleTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setDarkTheme(Z)V
    .locals 2

    .line 68
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->darkTheme:Z

    .line 69
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverImageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f060172

    goto :goto_0

    :cond_0
    const p1, 0x7f060170

    :goto_0
    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setQuiz(Lcom/narvii/model/Blog;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/narvii/feed/quizzes/QuizCoverView;->setQuiz(Lcom/narvii/model/Blog;Z)V

    return-void
.end method

.method public setQuiz(Lcom/narvii/model/Blog;Z)V
    .locals 4

    .line 54
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quiz:Lcom/narvii/model/Blog;

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->firstMediaIncludePromote()Lcom/narvii/model/Media;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p2

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverImageView:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverImageView:Lcom/narvii/widget/NVImageView;

    instance-of v3, v0, Lcom/narvii/widget/SecretImageView;

    if-eqz v3, :cond_2

    .line 58
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    iget-boolean v3, p1, Lcom/narvii/model/Feed;->needHidden:Z

    invoke-virtual {v0, p2, v3}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 62
    :goto_2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverBackgroundView:Landroid/view/View;

    if-nez p2, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizTitleTextView:Landroid/widget/TextView;

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizTitleTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
