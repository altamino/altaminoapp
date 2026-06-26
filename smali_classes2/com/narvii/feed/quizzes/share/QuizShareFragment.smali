.class public Lcom/narvii/feed/quizzes/share/QuizShareFragment;
.super Lcom/narvii/share/ShareDarkRoomFragment;
.source "QuizShareFragment.java"


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

    .line 45
    invoke-direct {p0}, Lcom/narvii/share/ShareDarkRoomFragment;-><init>()V

    .line 140
    new-instance v0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;-><init>(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V

    iput-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->editListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Lcom/narvii/model/Blog;)Lcom/narvii/model/Blog;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/narvii/share/ShareDarkRoomFragment;->scrollToTop()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->editListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateActionBarLeftView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->setActionBarRightDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->contentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateOverlayView()V

    return-void
.end method

.method private configBackgroundView(Lcom/narvii/widget/NVImageView;Landroid/view/View;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    .line 293
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 294
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result p1

    if-eqz p1, :cond_5

    .line 295
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    const v1, -0xb4b4b5

    if-eqz v0, :cond_4

    .line 298
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 300
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result p1

    if-eqz p1, :cond_5

    .line 301
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 306
    :cond_3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 310
    :cond_4
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_1
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

    .line 316
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 317
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/QuizOption;

    .line 319
    iget-object v3, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v3}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/model/QuizOption;->isCorrect(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 320
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private setActionBarRightDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f090051

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

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

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 127
    new-instance p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$2;

    invoke-direct {p0, p2}, Lcom/narvii/feed/quizzes/share/QuizShareFragment$2;-><init>(Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p1, p0}, Lcom/narvii/feed/FeedHelper;->loadQuizQuestionList(Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateActionBarLeftView(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 175
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f090048

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 180
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method private updateOverlayView()V
    .locals 5

    .line 341
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 342
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->smallTopOverlay:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 350
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->bigTopOverlay:Landroid/view/View;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    .line 353
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public configContentView(Landroid/view/View;)V
    .locals 6

    .line 192
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->contentView:Landroid/view/View;

    if-eqz p1, :cond_b

    .line 193
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f090a35

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f090a37

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 203
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f090a36

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const v3, 0x7f0f0e75

    new-array v4, v1, [Ljava/lang/Object;

    .line 208
    iget-object v5, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v5}, Lcom/narvii/model/Blog;->getQuizPlayedTimes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v0, 0x7f090a20

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const v3, 0x7f090a21

    .line 213
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 215
    invoke-direct {p0, v0, v3}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->configBackgroundView(Lcom/narvii/widget/NVImageView;Landroid/view/View;)V

    :cond_4
    const-string v0, "account"

    .line 219
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 220
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    const v4, 0x7f0900e4

    .line 221
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/NVImageView;

    if-eqz v4, :cond_6

    .line 223
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    invoke-virtual {v3}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 225
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    .line 227
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_0
    const v0, 0x7f090764

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    .line 233
    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_7
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->getWrongAnswers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_9

    const v3, 0x7f0900af

    .line 238
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 240
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/QuizOption;

    iget-object v4, v4, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const v3, 0x7f0900b0

    .line 242
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/QuizOption;

    iget-object v0, v0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const v0, 0x7f090a2a

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    .line 249
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quizResult:Lcom/narvii/model/CurrentQuizzesResult;

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/narvii/model/CurrentQuizzesResult;->beatRate:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    .line 250
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    .line 251
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    const v3, 0x7f0f0e84

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quizResult:Lcom/narvii/model/CurrentQuizzesResult;

    invoke-virtual {v4}, Lcom/narvii/model/CurrentQuizzesResult;->getCurBeatRate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    const v0, 0x7f090bc2

    .line 256
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->smallTopOverlay:Landroid/view/View;

    const v0, 0x7f090bb6

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->bigTopOverlay:Landroid/view/View;

    .line 259
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateOverlayView()V

    .line 261
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->editListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public contentLayoutId()I
    .locals 1

    const v0, 0x7f0b05cd

    return v0
.end method

.method public getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;
    .locals 8

    const v0, 0x7f090924

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->captureScreen(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "quiz"

    .line 268
    invoke-virtual {p0, v0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->storageBitmapScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 270
    new-instance v1, Lcom/narvii/share/SharePayload;

    invoke-direct {v1}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 271
    iget-object v2, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    iput-object v2, v1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 273
    iget-object v2, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    iget-object v3, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    iput-object v2, v1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    goto :goto_1

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0fc7

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    if-eqz v7, :cond_1

    .line 278
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    aput-object v7, v5, v6

    .line 277
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 280
    :goto_1
    iput-boolean v4, v1, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 281
    iput-object v0, v1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 282
    iput-object p1, v1, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0802ae

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateActionBarLeftView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "current_quiz_result"

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "first_question"

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object p1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 73
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    const-class v2, Lcom/narvii/model/CurrentQuizzesResult;

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/CurrentQuizzesResult;

    iput-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quizResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 76
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    const-class v0, Lcom/narvii/model/Blog;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    .line 79
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 80
    const-class p1, Lcom/narvii/model/QuizQuestion;

    invoke-static {v1, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    goto :goto_1

    .line 85
    :cond_4
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_6

    .line 86
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->firstQuizQuestion:Lcom/narvii/model/QuizQuestion;

    if-eqz p1, :cond_5

    goto :goto_1

    .line 89
    :cond_5
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    new-instance v1, Lcom/narvii/feed/quizzes/share/QuizShareFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment$1;-><init>(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->loadQuizQuestionList(Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    goto :goto_1

    .line 99
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 100
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 104
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quiz:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quizResult:Lcom/narvii/model/CurrentQuizzesResult;

    if-nez v0, :cond_8

    .line 105
    iget-object p1, p1, Lcom/narvii/model/Blog;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->quizResult:Lcom/narvii/model/CurrentQuizzesResult;

    :cond_8
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/narvii/share/ShareDarkRoomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->editListener:Landroid/view/View$OnClickListener;

    const p2, 0x7f0f03cd

    invoke-virtual {p0, p2, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->setActionBarRightDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected preCheck()V
    .locals 2

    .line 329
    invoke-super {p0}, Lcom/narvii/share/ShareDarkRoomFragment;->preCheck()V

    .line 330
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0f24

    goto :goto_0

    :cond_0
    const v0, 0x7f0f03cd

    :goto_0
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->editListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/view/View$OnClickListener;)V

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateOverlayView()V

    .line 336
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->customTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802ae

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->updateActionBarLeftView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
