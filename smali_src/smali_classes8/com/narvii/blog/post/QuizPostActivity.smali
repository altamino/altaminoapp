.class public Lcom/narvii/blog/post/QuizPostActivity;
.super Lcom/narvii/blog/post/TopicPostActivity;
.source "SourceFile"


# static fields
.field static final REQUEST_ADD:I = 0x20

.field static final REQUEST_QUESTION:I = 0x1f


# instance fields
.field header:Landroid/view/View;

.field root:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/blog/post/TopicPostActivity;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/QuizPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/QuizPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/QuizPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected checkEligible()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "blog"

    .line 3
    .line 4
    const-string v1, "quiz"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method closeAllSwipeToDelete(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    instance-of v4, v3, Lcom/narvii/widget/SwipeToDeleteLayout;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    check-cast v3, Lcom/narvii/widget/SwipeToDeleteLayout;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1, p1}, Lcom/narvii/widget/SwipeToDeleteLayout;->setSwipeRight(ZZ)V

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 2
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/narvii/blog/post/QuizPostActivity;->trimEmptyQuestion(Ljava/util/List;Z)I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
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

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x4

    .line 3
    .line 4
    if-ge v0, v1, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    const v2, 0x7f0a0b74

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    return-object p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Landroid/view/View;

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method getQuestionIndex()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    iget-object v4, p0, Lcom/narvii/blog/post/QuizPostActivity;->header:Landroid/view/View;

    .line 19
    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    return v2

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
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

    .line 1
    .line 2
    iget-object v0, p2, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    return v3

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_5

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Lcom/narvii/model/QuizQuestion;

    .line 36
    .line 37
    if-ne v2, p2, :cond_3

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_3
    iget-object v2, v2, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_4

    .line 43
    move-object v2, v1

    .line 44
    goto :goto_2

    .line 45
    .line 46
    .line 47
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_5
    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/blog/post/TopicPostActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    const/16 v0, 0x1f

    .line 6
    .line 7
    .line 8
    const v1, 0x7f120f88

    .line 9
    .line 10
    const-class v2, Lcom/narvii/model/QuizQuestion;

    .line 11
    .line 12
    const-string v3, "question"

    .line 13
    const/4 v4, -0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    if-ne p2, v4, :cond_2

    .line 19
    .line 20
    const-string v0, "index"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    .line 31
    invoke-static {v6, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 33
    .line 34
    check-cast v6, Lcom/narvii/model/QuizQuestion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 38
    move-result-object v7

    .line 39
    .line 40
    iget-object v8, v7, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 41
    .line 42
    if-nez v8, :cond_0

    .line 43
    .line 44
    new-instance v8, Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    iput-object v8, v7, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 50
    .line 51
    :cond_0
    :goto_0
    iget-object v8, v7, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 52
    .line 53
    .line 54
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 55
    move-result v8

    .line 56
    .line 57
    add-int/lit8 v9, v0, 0x1

    .line 58
    .line 59
    if-ge v8, v9, :cond_1

    .line 60
    .line 61
    iget-object v8, v7, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 62
    .line 63
    new-instance v9, Lcom/narvii/model/QuizQuestion;

    .line 64
    .line 65
    .line 66
    invoke-direct {v9}, Lcom/narvii/model/QuizQuestion;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_1
    iget-object v8, v7, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 73
    .line 74
    .line 75
    invoke-interface {v8, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v7}, Lcom/narvii/blog/post/QuizPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 79
    .line 80
    iget-object v0, v7, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0, v6}, Lcom/narvii/blog/post/QuizPostActivity;->hasDuplicateQuestion(Ljava/util/List;Lcom/narvii/model/QuizQuestion;)Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-static {p0, v1, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 94
    .line 95
    :cond_2
    const/16 v0, 0x20

    .line 96
    .line 97
    if-ne p1, v0, :cond_4

    .line 98
    .line 99
    if-ne p2, v4, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 113
    move-result p2

    .line 114
    .line 115
    if-nez p2, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    iget-object p3, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 122
    .line 123
    if-nez p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    iput-object p3, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 131
    .line 132
    :cond_3
    iget-object p3, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 133
    const/4 v0, 0x1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p3, v0}, Lcom/narvii/blog/post/QuizPostActivity;->trimEmptyQuestion(Ljava/util/List;Z)I

    .line 137
    .line 138
    iget-object p3, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 139
    .line 140
    .line 141
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p2}, Lcom/narvii/blog/post/QuizPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 145
    .line 146
    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p2, p1}, Lcom/narvii/blog/post/QuizPostActivity;->hasDuplicateQuestion(Ljava/util/List;Lcom/narvii/model/QuizQuestion;)Z

    .line 150
    move-result p1

    .line 151
    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    .line 155
    invoke-static {p0, v1, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 160
    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onClick(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0a0b75

    .line 11
    .line 12
    const-string v2, "dir"

    .line 13
    .line 14
    const-string v3, "quiz"

    .line 15
    .line 16
    const-class v4, Lcom/narvii/blog/post/QuizQuestionEditor;

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->getQuestionCell(Landroid/view/View;)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/model/QuizQuestion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    move-result-object v6

    .line 37
    .line 38
    .line 39
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    const-string v5, "question"

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 55
    .line 56
    iget-object v5, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v5}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0a0714

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 80
    move-result v0

    .line 81
    .line 82
    const-string v1, "index"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    .line 87
    const/16 v0, 0x1f

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v6, v0}, Lcom/narvii/blog/post/QuizPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 94
    move-result v0

    .line 95
    .line 96
    .line 97
    const v1, 0x7f0a0417

    .line 98
    .line 99
    if-ne v0, v1, :cond_1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->getQuestionCell(Landroid/view/View;)Landroid/view/View;

    .line 103
    move-result-object v0

    .line 104
    move-object v1, v0

    .line 105
    .line 106
    check-cast v1, Lcom/narvii/widget/SwipeToDeleteLayout;

    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v6, 0x1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v5, v6}, Lcom/narvii/widget/SwipeToDeleteLayout;->setSwipeRight(ZZ)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    check-cast v1, Landroid/view/ViewGroup;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 124
    move-result p1

    .line 125
    .line 126
    .line 127
    const v0, 0x7f0a0b66

    .line 128
    .line 129
    if-ne p1, v0, :cond_2

    .line 130
    .line 131
    .line 132
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 136
    .line 137
    .line 138
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    const/16 v0, 0x20

    .line 160
    .line 161
    .line 162
    invoke-static {p0, p1, v0}, Lcom/narvii/blog/post/QuizPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 163
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a0c87

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/widget/NVScrollView;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/blog/post/QuizPostActivity$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/blog/post/QuizPostActivity$1;-><init>(Lcom/narvii/blog/post/QuizPostActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVScrollView;->setOnScrollListener(Lcom/narvii/widget/NVScrollView$OnScrollListener;)V

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a0b73

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity;->header:Landroid/view/View;

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f0a0b72

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity;->header:Landroid/view/View;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Landroid/view/ViewGroup;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    const v1, 0x7f0d063f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    const v0, 0x7f0a0b66

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->getQuestionIndex()I

    .line 86
    move-result v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 90
    .line 91
    new-instance p1, Landroid/animation/LayoutTransition;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 95
    .line 96
    new-instance v0, Lcom/narvii/blog/post/QuizPostActivity$2;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/narvii/blog/post/QuizPostActivity$2;-><init>(Lcom/narvii/blog/post/QuizPostActivity;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 108
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/post/BackgroundPostActivity;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    const v0, 0x7f120f85

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/narvii/widget/BackgroundPickerView;->setBackgroundText(Ljava/lang/String;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/post/BackgroundPostActivity;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/widget/BackgroundPickerView;->setChooseBackgroundText(Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/blog/post/TopicPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120438

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f120f15

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    const/4 v1, 0x6

    .line 3
    iput v1, v0, Lcom/narvii/blog/post/BlogPost;->type:I

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/QuizQuestion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    if-eqz p2, :cond_0

    .line 38
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizPostActivity;->getQuestionIndex()I

    .line 13
    move-result v2

    .line 14
    .line 15
    new-instance v3, Ljava/util/LinkedList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 19
    .line 20
    iget-object v4, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v4

    .line 25
    .line 26
    :goto_1
    if-ge v2, v4, :cond_1

    .line 27
    .line 28
    iget-object v5, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 36
    move-result v6

    .line 37
    .line 38
    .line 39
    const v7, 0x7f0a0b74

    .line 40
    .line 41
    if-ne v6, v7, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 51
    move-result v4

    .line 52
    .line 53
    .line 54
    const v5, 0x7f0a0b75

    .line 55
    const/4 v6, 0x7

    .line 56
    .line 57
    if-lt v4, v6, :cond_14

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 61
    move-result v4

    .line 62
    .line 63
    if-ge v4, v1, :cond_2

    .line 64
    .line 65
    goto/16 :goto_f

    .line 66
    .line 67
    :cond_2
    :goto_3
    if-le v1, v6, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 71
    move-result v2

    .line 72
    .line 73
    if-le v2, v1, :cond_3

    .line 74
    .line 75
    iget-object v2, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    check-cast v4, Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    move v2, v0

    .line 87
    .line 88
    :goto_4
    if-lt v2, v1, :cond_5

    .line 89
    .line 90
    if-ge v2, v6, :cond_4

    .line 91
    goto :goto_5

    .line 92
    :cond_4
    return-void

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_5
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    check-cast v4, Landroid/view/View;

    .line 99
    const/4 v7, 0x0

    .line 100
    .line 101
    if-ge v2, v1, :cond_6

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v8

    .line 106
    .line 107
    check-cast v8, Lcom/narvii/model/QuizQuestion;

    .line 108
    goto :goto_6

    .line 109
    :cond_6
    move-object v8, v7

    .line 110
    .line 111
    .line 112
    :goto_6
    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    const v9, 0x7f0a0714

    .line 116
    .line 117
    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v10

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 123
    const/4 v9, 0x1

    .line 124
    .line 125
    if-eqz v8, :cond_9

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 129
    move-result v10

    .line 130
    .line 131
    if-nez v10, :cond_9

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Lcom/narvii/model/QuizQuestion;->isComplete()Z

    .line 135
    move-result v10

    .line 136
    xor-int/2addr v10, v9

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Lcom/narvii/model/QuizQuestion;->hasDuplicateOption()Z

    .line 140
    move-result v11

    .line 141
    .line 142
    if-nez v11, :cond_8

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1, v8}, Lcom/narvii/blog/post/QuizPostActivity;->hasDuplicateQuestion(Ljava/util/List;Lcom/narvii/model/QuizQuestion;)Z

    .line 146
    move-result v11

    .line 147
    .line 148
    if-eqz v11, :cond_7

    .line 149
    goto :goto_7

    .line 150
    :cond_7
    move v11, v0

    .line 151
    goto :goto_8

    .line 152
    :cond_8
    :goto_7
    move v11, v9

    .line 153
    goto :goto_8

    .line 154
    :cond_9
    move v10, v0

    .line 155
    move v11, v10

    .line 156
    .line 157
    :goto_8
    if-nez v10, :cond_b

    .line 158
    .line 159
    if-eqz v11, :cond_a

    .line 160
    goto :goto_9

    .line 161
    :cond_a
    move v9, v0

    .line 162
    .line 163
    .line 164
    :cond_b
    :goto_9
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object v12

    .line 166
    .line 167
    if-eqz v9, :cond_c

    .line 168
    .line 169
    .line 170
    const v13, 0x7f080879

    .line 171
    goto :goto_a

    .line 172
    .line 173
    .line 174
    :cond_c
    const v13, 0x7f080876

    .line 175
    .line 176
    .line 177
    :goto_a
    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    .line 179
    .line 180
    const v12, 0x7f0a0b76

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object v12

    .line 185
    .line 186
    check-cast v12, Landroid/widget/TextView;

    .line 187
    .line 188
    if-eqz v9, :cond_d

    .line 189
    .line 190
    .line 191
    const v13, -0x16f2c5

    .line 192
    goto :goto_b

    .line 193
    .line 194
    .line 195
    :cond_d
    const v13, -0x404041

    .line 196
    .line 197
    .line 198
    :goto_b
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 201
    .line 202
    .line 203
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 204
    move-result-object v13

    .line 205
    .line 206
    .line 207
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    const v12, 0x7f0a0e9e

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    move-result-object v12

    .line 215
    .line 216
    check-cast v12, Landroid/widget/TextView;

    .line 217
    .line 218
    if-nez v8, :cond_e

    .line 219
    move-object v13, v7

    .line 220
    goto :goto_c

    .line 221
    .line 222
    :cond_e
    iget-object v13, v8, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    :goto_c
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    const v12, 0x7f0a04fd

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 232
    move-result-object v12

    .line 233
    .line 234
    check-cast v12, Landroid/widget/TextView;

    .line 235
    .line 236
    if-eqz v9, :cond_10

    .line 237
    .line 238
    .line 239
    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    if-eqz v10, :cond_f

    .line 242
    .line 243
    .line 244
    const v9, 0x7f120f8d

    .line 245
    .line 246
    .line 247
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(I)V

    .line 248
    goto :goto_d

    .line 249
    .line 250
    :cond_f
    if-eqz v11, :cond_11

    .line 251
    .line 252
    .line 253
    const v9, 0x7f120f86

    .line 254
    .line 255
    .line 256
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(I)V

    .line 257
    goto :goto_d

    .line 258
    :cond_10
    const/4 v9, 0x4

    .line 259
    .line 260
    .line 261
    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :cond_11
    :goto_d
    const v9, 0x7f0a06eb

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    move-result-object v4

    .line 269
    .line 270
    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 271
    .line 272
    if-eqz v8, :cond_13

    .line 273
    .line 274
    iget-object v9, v8, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 275
    .line 276
    if-eqz v9, :cond_13

    .line 277
    .line 278
    .line 279
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 280
    move-result v9

    .line 281
    .line 282
    if-nez v9, :cond_12

    .line 283
    goto :goto_e

    .line 284
    .line 285
    :cond_12
    iget-object v7, v8, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 286
    .line 287
    .line 288
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    move-result-object v7

    .line 290
    .line 291
    check-cast v7, Lcom/narvii/model/Media;

    .line 292
    .line 293
    .line 294
    :cond_13
    :goto_e
    invoke-virtual {v4, v7}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 295
    .line 296
    goto/16 :goto_4

    .line 297
    .line 298
    .line 299
    :cond_14
    :goto_f
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 300
    move-result-object v4

    .line 301
    .line 302
    .line 303
    const v6, 0x7f0d0641

    .line 304
    .line 305
    iget-object v7, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4, v6, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 309
    move-result-object v4

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 313
    move-result-object v5

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    const v5, 0x7f0a0417

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 323
    move-result-object v5

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    iget-object v5, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    .line 332
    .line 333
    add-int/lit8 v6, v2, 0x1

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 337
    move v2, v6

    .line 338
    .line 339
    goto/16 :goto_2
.end method

.method protected updateView(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f0a0e9e

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120f16

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f0a039d

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120f0e

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/narvii/blog/post/QuizPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f0a0b2a

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->updateQuiz(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 7

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/blog/post/QuizPostActivity;->trimEmptyQuestion(Ljava/util/List;Z)I

    .line 7
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

    move v4, v1

    move v2, v3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    move v4, v2

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/QuizQuestion;

    .line 9
    invoke-virtual {v5}, Lcom/narvii/model/QuizQuestion;->isComplete()Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v3

    .line 10
    :cond_5
    invoke-virtual {v5}, Lcom/narvii/model/QuizQuestion;->hasDuplicateOption()Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v3

    .line 11
    :cond_6
    invoke-virtual {p0, v0, v5}, Lcom/narvii/blog/post/QuizPostActivity;->hasDuplicateQuestion(Ljava/util/List;Lcom/narvii/model/QuizQuestion;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v3

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v2, :cond_9

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    return v3

    .line 12
    :cond_9
    :goto_3
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p1, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_a

    const v0, 0x7f120f9a

    .line 13
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f120f99

    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    goto :goto_4

    :cond_a
    const v0, 0x7f120f88

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    :goto_4
    const v0, 0x104000a

    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 17
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return v1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/QuizPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
