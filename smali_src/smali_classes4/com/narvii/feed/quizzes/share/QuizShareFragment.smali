.class public Lcom/narvii/feed/quizzes/share/QuizShareFragment;
.super Lcom/narvii/share/ShareDarkRoomFragment;
.source "SourceFile"


# static fields
.field public static final KEY_CURRENT_QUIZZES_RESULT:Ljava/lang/String; = "current_quiz_result"

.field public static final KEY_FIRST_QUIZ_QUESTION:Ljava/lang/String; = "first_question"


# instance fields
.field private bigTopOverlay:Landroid/view/View;

.field private contentView:Landroid/view/View;

.field private customTitle:Landroid/widget/EditText;

.field private editListener:Landroid/view/View$OnClickListener;

.field private firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

.field private quiz:Lcom/narvii/model/Blog;

.field private quizResult:Lcom/narvii/model/CurrentQuizzesResult;

.field private smallTopOverlay:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/share/ShareDarkRoomFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;-><init>(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->editListener:Landroid/view/View$OnClickListener;

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/share/ShareDarkRoomFragment;->scrollToTop()V

    .line 4
    return-void
.end method

.method private configBackgroundView(Lcom/narvii/widget/NVImageView;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/model/Media;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 31
    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 44
    move-result p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 51
    .line 52
    .line 53
    const v1, -0xb4b4b5

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 76
    move-result p1

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 84
    move-result p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 94
    move-result v0

    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 104
    move-result v0

    .line 105
    .line 106
    .line 107
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 125
    move-result p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    goto :goto_0

    .line 130
    .line 131
    :cond_3
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 132
    .line 133
    .line 134
    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_4
    :goto_0
    return-void
.end method

.method private getWrongAnswers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizOption;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lcom/narvii/model/QuizOption;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/narvii/model/QuizOption;->isCorrect(Ljava/lang/String;)Z

    .line 43
    move-result v3

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-object v0
.end method

.method static bridge synthetic o(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->contentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->editListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->setActionBarRightDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setActionBarRightDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a0082

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_0
    return-void
.end method

.method public static startQuizShareIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/Blog;",
            "Lcom/narvii/util/Callback<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    new-instance p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/narvii/feed/quizzes/share/QuizShareFragment$2;-><init>(Lcom/narvii/util/Callback;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p0}, Lcom/narvii/feed/FeedHelper;->loadQuizQuestionList(Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateActionBarLeftView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateOverlayView()V

    return-void
.end method

.method private updateActionBarLeftView(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0079

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 37
    :cond_1
    return-void
.end method

.method private updateOverlayView()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    move v0, v2

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->smallTopOverlay:Landroid/view/View;

    .line 30
    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    move v4, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v4, v3

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    :cond_2
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->bigTopOverlay:Landroid/view/View;

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    move v2, v3

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_4
    return-void
.end method


# virtual methods
.method public configContentView(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->contentView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz p1, :cond_b

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 7
    .line 8
    if-eqz v0, :cond_b

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    .line 17
    :cond_0
    const v0, 0x7f0a0cfc

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const v0, 0x7f0a0cfe

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    const v0, 0x7f0a0cfd

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    const/4 v1, 0x1

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    new-array v3, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getQuizPlayedTimes()I

    .line 73
    move-result v4

    .line 74
    .line 75
    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    aput-object v4, v3, v2

    .line 80
    .line 81
    .line 82
    const v4, 0x7f120f96

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    const v0, 0x7f0a0ce8

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 99
    .line 100
    .line 101
    const v3, 0x7f0a0ce9

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v0, v3}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->configBackgroundView(Lcom/narvii/widget/NVImageView;Landroid/view/View;)V

    .line 111
    .line 112
    :cond_4
    const-string v0, "account"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    .line 125
    const v4, 0x7f0a0171

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v4

    .line 130
    .line 131
    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 132
    .line 133
    if-eqz v4, :cond_6

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 137
    move-result v0

    .line 138
    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    goto :goto_0

    .line 151
    :cond_5
    const/4 v0, 0x4

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_0
    const v0, 0x7f0a09f9

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    check-cast v0, Landroid/widget/TextView;

    .line 164
    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    if-eqz v3, :cond_7

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->getWrongAnswers()Ljava/util/List;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    if-eqz v0, :cond_9

    .line 181
    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 184
    move-result v3

    .line 185
    .line 186
    if-le v3, v1, :cond_9

    .line 187
    .line 188
    .line 189
    const v3, 0x7f0a011a

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    move-result-object v3

    .line 194
    .line 195
    check-cast v3, Landroid/widget/TextView;

    .line 196
    .line 197
    if-eqz v3, :cond_8

    .line 198
    .line 199
    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v4

    .line 202
    .line 203
    check-cast v4, Lcom/narvii/model/QuizOption;

    .line 204
    .line 205
    iget-object v4, v4, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    :cond_8
    const v3, 0x7f0a011b

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    move-result-object v3

    .line 216
    .line 217
    check-cast v3, Landroid/widget/TextView;

    .line 218
    .line 219
    if-eqz v3, :cond_9

    .line 220
    .line 221
    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v0

    .line 224
    .line 225
    check-cast v0, Lcom/narvii/model/QuizOption;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    :cond_9
    const v0, 0x7f0a0cf2

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    move-result-object v0

    .line 238
    .line 239
    check-cast v0, Landroid/widget/EditText;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 242
    .line 243
    iget-object v3, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quizResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 244
    .line 245
    if-eqz v3, :cond_a

    .line 246
    .line 247
    iget v3, v3, Lcom/narvii/model/CurrentQuizzesResult;->beatRate:F

    .line 248
    .line 249
    const/high16 v4, 0x3f000000    # 0.5f

    .line 250
    .line 251
    cmpl-float v3, v3, v4

    .line 252
    .line 253
    if-lez v3, :cond_a

    .line 254
    .line 255
    if-eqz v0, :cond_a

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 259
    .line 260
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 261
    .line 262
    new-array v1, v1, [Ljava/lang/Object;

    .line 263
    .line 264
    iget-object v3, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quizResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Lcom/narvii/model/CurrentQuizzesResult;->getCurBeatRate()I

    .line 268
    move-result v3

    .line 269
    .line 270
    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    move-result-object v3

    .line 273
    .line 274
    aput-object v3, v1, v2

    .line 275
    .line 276
    .line 277
    const v2, 0x7f120fa5

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    move-result-object v1

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    :cond_a
    const v0, 0x7f0a0edf

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 291
    move-result-object v0

    .line 292
    .line 293
    iput-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->smallTopOverlay:Landroid/view/View;

    .line 294
    .line 295
    .line 296
    const v0, 0x7f0a0ed3

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 300
    move-result-object v0

    .line 301
    .line 302
    iput-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->bigTopOverlay:Landroid/view/View;

    .line 303
    .line 304
    .line 305
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateOverlayView()V

    .line 306
    .line 307
    .line 308
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 309
    .line 310
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->editListener:Landroid/view/View$OnClickListener;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    :cond_b
    :goto_1
    return-void
.end method

.method public contentLayoutId()I
    .locals 1

    const v0, 0x7f0d0684

    return v0
.end method

.method public getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;
    .locals 7

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0be1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->captureScreen(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "quiz"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->storageBitmapScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/share/SharePayload;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 25
    .line 26
    iput-object v2, v1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 39
    const/4 v4, 0x1

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    iput-object v2, v1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    new-array v3, v4, [Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v5, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 59
    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 v5, 0x0

    .line 67
    :goto_0
    const/4 v6, 0x0

    .line 68
    .line 69
    aput-object v5, v3, v6

    .line 70
    .line 71
    .line 72
    const v5, 0x7f1210d2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    iput-object v2, v1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 79
    .line 80
    :goto_1
    iput-boolean v4, v1, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 81
    .line 82
    iput-object v0, v1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 83
    .line 84
    iput-object p1, v1, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    .line 85
    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0803b5

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateActionBarLeftView(Landroid/graphics/drawable/Drawable;)V

    .line 18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "current_quiz_result"

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "first_question"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    sget-object v2, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    sget-object p1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const-class v2, Lcom/narvii/model/CurrentQuizzesResult;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/model/CurrentQuizzesResult;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quizResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-class v0, Lcom/narvii/model/Blog;

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Lcom/narvii/model/Blog;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result p1

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    const-class p1, Lcom/narvii/model/QuizQuestion;

    .line 76
    .line 77
    .line 78
    invoke-static {v1, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 84
    .line 85
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    iget-object v0, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    const/4 p1, 0x0

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_4
    if-eqz p1, :cond_6

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 106
    .line 107
    if-eqz p1, :cond_5

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_5
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 116
    .line 117
    new-instance v1, Lcom/narvii/feed/quizzes/share/QuizShareFragment$1;

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment$1;-><init>(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->loadQuizQuestionList(Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    .line 124
    goto :goto_1

    .line 125
    .line 126
    .line 127
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 128
    move-result p1

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 134
    .line 135
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 136
    .line 137
    if-eqz p1, :cond_8

    .line 138
    .line 139
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quizResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 140
    .line 141
    if-nez v0, :cond_8

    .line 142
    .line 143
    iget-object p1, p1, Lcom/narvii/model/Blog;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    .line 144
    .line 145
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quizResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 146
    :cond_8
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/share/ShareDarkRoomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120438

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->editListener:Landroid/view/View$OnClickListener;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/view/View$OnClickListener;)V

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->setActionBarRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    return-void
.end method

.method protected preCheck()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/share/ShareDarkRoomFragment;->preCheck()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    const v0, 0x7f121036

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    const v0, 0x7f120438

    .line 35
    .line 36
    :goto_0
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->editListener:Landroid/view/View$OnClickListener;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateOverlayView()V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    const/4 v0, 0x0

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    const v1, 0x7f0803b5

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateActionBarLeftView(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method
