.class public Lcom/narvii/blog/post/QuizPostActivity;
.super Lcom/narvii/blog/post/TopicPostActivity;
.source "QuizPostActivity.java"


# static fields
.field static final REQUEST_ADD:I = 0x20

.field static final REQUEST_QUESTION:I = 0x1f


# instance fields
.field header:Landroid/view/View;

.field root:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/blog/post/TopicPostActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/QuizPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/QuizPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/QuizPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method


# virtual methods
.method protected checkEligible()V
    .locals 2

    const-string v0, "blog"

    const-string v1, "quiz"

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method closeAllSwipeToDelete(Z)V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 361
    iget-object v3, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 362
    instance-of v4, v3, Lcom/narvii/widget/SwipeToDeleteLayout;

    if-eqz v4, :cond_0

    .line 363
    check-cast v3, Lcom/narvii/widget/SwipeToDeleteLayout;

    invoke-virtual {v3, v1, p1}, Lcom/narvii/widget/SwipeToDeleteLayout;->setSwipeRight(ZZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 350
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 351
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, v1, v0}, Lcom/narvii/blog/post/QuizPostActivity;->trimEmptyQuestion(Ljava/util/List;Z)I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    iput-object v1, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 356
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "quiz"

    return-object v0
.end method

.method getQuestionCell(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0908b7

    if-ne v1, v2, :cond_0

    return-object p1

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method getQuestionIndex()I
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 244
    iget-object v3, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/blog/post/QuizPostActivity;->header:Landroid/view/View;

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method hasDuplicateQuestion(Ljava/util/List;Lcom/narvii/model/QuizQuestion;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizQuestion;",
            ">;",
            "Lcom/narvii/model/QuizQuestion;",
            ")Z"
        }
    .end annotation

    .line 281
    iget-object v0, p2, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 285
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/QuizQuestion;

    if-ne v2, p2, :cond_3

    goto :goto_1

    .line 288
    :cond_3
    iget-object v2, v2, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v2, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 289
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_5
    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/blog/post/TopicPostActivity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0x7f0f0e67

    const-string v1, "question"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x1f

    if-ne p1, v4, :cond_2

    if-ne p2, v2, :cond_2

    const-string v4, "index"

    .line 139
    invoke-virtual {p3, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 140
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/narvii/model/QuizQuestion;

    invoke-static {v5, v6}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/QuizQuestion;

    .line 141
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v6

    .line 142
    iget-object v7, v6, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 143
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 145
    :cond_0
    :goto_0
    iget-object v7, v6, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v8, v4, 0x1

    if-ge v7, v8, :cond_1

    .line 146
    iget-object v7, v6, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    new-instance v8, Lcom/narvii/model/QuizQuestion;

    invoke-direct {v8}, Lcom/narvii/model/QuizQuestion;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_1
    iget-object v7, v6, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-interface {v7, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p0, v6}, Lcom/narvii/blog/post/QuizPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 150
    iget-object v4, v6, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-virtual {p0, v4, v5}, Lcom/narvii/blog/post/QuizPostActivity;->hasDuplicateQuestion(Ljava/util/List;Lcom/narvii/model/QuizQuestion;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    invoke-static {p0, v0, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/NVToast;->show()V

    :cond_2
    const/16 v4, 0x20

    if-ne p1, v4, :cond_4

    if-ne p2, v2, :cond_4

    .line 155
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/QuizQuestion;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 156
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p2

    .line 158
    iget-object p3, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    if-nez p3, :cond_3

    .line 159
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 161
    :cond_3
    iget-object p3, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1}, Lcom/narvii/blog/post/QuizPostActivity;->trimEmptyQuestion(Ljava/util/List;Z)I

    .line 162
    iget-object p3, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0, p2}, Lcom/narvii/blog/post/QuizPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 164
    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-virtual {p0, p2, p1}, Lcom/narvii/blog/post/QuizPostActivity;->hasDuplicateQuestion(Ljava/util/List;Lcom/narvii/model/QuizQuestion;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 165
    invoke-static {p0, v0, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 110
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onClick(Landroid/view/View;)V

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "dir"

    const-string v2, "quiz"

    const v3, 0x7f0908b8

    if-ne v0, v3, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->getQuestionCell(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/QuizQuestion;

    .line 114
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v4

    .line 115
    const-class v5, Lcom/narvii/blog/post/QuizQuestionEditor;

    invoke-static {v5}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v5

    .line 116
    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "question"

    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f09058d

    .line 119
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "index"

    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x1f

    .line 120
    invoke-virtual {p0, v5, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f09033c

    if-ne v0, v3, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->getQuestionCell(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 124
    move-object v3, v0

    check-cast v3, Lcom/narvii/widget/SwipeToDeleteLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/narvii/widget/SwipeToDeleteLayout;->setSwipeRight(ZZ)V

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0908a9

    if-ne p1, v0, :cond_2

    .line 128
    const-class p1, Lcom/narvii/blog/post/QuizQuestionEditor;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0909be

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVScrollView;

    new-instance v0, Lcom/narvii/blog/post/QuizPostActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/QuizPostActivity$1;-><init>(Lcom/narvii/blog/post/QuizPostActivity;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVScrollView;->setOnScrollListener(Lcom/narvii/widget/NVScrollView$OnScrollListener;)V

    const p1, 0x7f0908b6

    .line 64
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity;->header:Landroid/view/View;

    .line 65
    iget-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity;->header:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0908b5

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity;->header:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    const v2, 0x7f0b0597

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0908a9

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->getQuestionIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 71
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 72
    new-instance v0, Lcom/narvii/blog/post/QuizPostActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/QuizPostActivity$2;-><init>(Lcom/narvii/blog/post/QuizPostActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 49
    iget-object p1, p0, Lcom/narvii/post/BackgroundPostActivity;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    if-eqz p1, :cond_0

    const v0, 0x7f0f0e64

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/widget/BackgroundPickerView;->setBackgroundText(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/narvii/post/BackgroundPostActivity;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/BackgroundPickerView;->setChooseBackgroundText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 370
    invoke-super {p0, p1, p2}, Lcom/narvii/blog/post/TopicPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    .line 96
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f03cd

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0dea

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 2

    .line 298
    invoke-super {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    const/4 v1, 0x6

    .line 299
    iput v1, v0, Lcom/narvii/blog/post/BlogPost;->type:I

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    return-object v0
.end method

.method trimEmptyQuestion(Ljava/util/List;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizQuestion;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 266
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 267
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/QuizQuestion;

    .line 269
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    :cond_2
    return v0
.end method

.method updateQuiz(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizQuestion;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->getQuestionIndex()I

    move-result v2

    .line 189
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 190
    iget-object v4, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_1

    .line 191
    iget-object v5, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 192
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0908b7

    if-ne v6, v7, :cond_1

    .line 193
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    const v5, 0x7f0908b8

    const/4 v6, 0x7

    if-lt v4, v6, :cond_14

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v4, v1, :cond_2

    goto/16 :goto_e

    :cond_2
    :goto_3
    if-le v1, v6, :cond_3

    .line 206
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 207
    iget-object v2, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_4
    if-lt v2, v1, :cond_5

    if-ge v2, v6, :cond_4

    goto :goto_5

    :cond_4
    return-void

    .line 211
    :cond_5
    :goto_5
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v7, 0x0

    if-ge v2, v1, :cond_6

    .line 212
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/QuizQuestion;

    goto :goto_6

    :cond_6
    move-object v8, v7

    .line 213
    :goto_6
    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v9, 0x7f09058d

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    .line 217
    invoke-virtual {v8}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 218
    invoke-virtual {v8}, Lcom/narvii/model/QuizQuestion;->isComplete()Z

    move-result v10

    xor-int/2addr v10, v9

    .line 219
    invoke-virtual {v8}, Lcom/narvii/model/QuizQuestion;->hasDuplicateOption()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {p0, p1, v8}, Lcom/narvii/blog/post/QuizPostActivity;->hasDuplicateQuestion(Ljava/util/List;Lcom/narvii/model/QuizQuestion;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_7
    const/4 v11, 0x1

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    :cond_9
    const/4 v11, 0x0

    :goto_7
    if-nez v10, :cond_b

    if-eqz v11, :cond_a

    goto :goto_8

    :cond_a
    const/4 v9, 0x0

    .line 222
    :cond_b
    :goto_8
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v9, :cond_c

    const v13, 0x7f08067f

    goto :goto_9

    :cond_c
    const v13, 0x7f08067c

    :goto_9
    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    const v12, 0x7f0908b9

    .line 223
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v9, :cond_d

    const v13, -0x16f2c5

    goto :goto_a

    :cond_d
    const v13, -0x404041

    .line 224
    :goto_a
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v2, v2, 0x1

    .line 225
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f090b9a

    .line 226
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-nez v8, :cond_e

    move-object v13, v7

    goto :goto_b

    :cond_e
    iget-object v13, v8, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    :goto_b
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f0903fb

    .line 227
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v9, :cond_10

    .line 229
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v10, :cond_f

    const v9, 0x7f0f0e6c

    .line 231
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    :cond_f
    if-eqz v11, :cond_11

    const v9, 0x7f0f0e65

    .line 233
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    :cond_10
    const/4 v9, 0x4

    .line 236
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    :goto_c
    const v9, 0x7f090571

    .line 238
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/NVImageView;

    if-eqz v8, :cond_13

    iget-object v9, v8, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz v9, :cond_13

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_12

    goto :goto_d

    :cond_12
    iget-object v7, v8, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/Media;

    :cond_13
    :goto_d
    invoke-virtual {v4, v7}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto/16 :goto_4

    .line 200
    :cond_14
    :goto_e
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0b0599

    iget-object v7, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f09033c

    .line 202
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v5, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move v2, v6

    goto/16 :goto_2
.end method

.method protected updateView(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 173
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 175
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f090b9a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0deb

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 177
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f0902d0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0de3

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 180
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f09086e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->updateQuiz(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 7

    .line 305
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 311
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 315
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/blog/post/QuizPostActivity;->trimEmptyQuestion(Ljava/util/List;Z)I

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget-boolean v2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    :goto_0
    const/4 v3, 0x1

    if-ge p1, v2, :cond_3

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 319
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/QuizQuestion;

    .line 320
    invoke-virtual {v5}, Lcom/narvii/model/QuizQuestion;->isComplete()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v2, 0x1

    .line 323
    :cond_5
    invoke-virtual {v5}, Lcom/narvii/model/QuizQuestion;->hasDuplicateOption()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x1

    .line 326
    :cond_6
    invoke-virtual {p0, v0, v5}, Lcom/narvii/blog/post/QuizPostActivity;->hasDuplicateQuestion(Ljava/util/List;Lcom/narvii/model/QuizQuestion;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v2, :cond_9

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    return v3

    .line 333
    :cond_9
    :goto_3
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p1, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_a

    const v0, 0x7f0f0e79

    .line 335
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f0f0e78

    .line 336
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    goto :goto_4

    :cond_a
    const v0, 0x7f0f0e67

    .line 338
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    :goto_4
    const v0, 0x104000a

    const/4 v2, 0x0

    .line 340
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 341
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return v1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 34
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
