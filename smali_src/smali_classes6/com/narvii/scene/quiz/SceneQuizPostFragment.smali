.class public Lcom/narvii/scene/quiz/SceneQuizPostFragment;
.super Lcom/narvii/scene/SceneBasePostFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;
    }
.end annotation


# instance fields
.field answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private grid:Landroid/view/View;

.field mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field originalQuestion:Lcom/narvii/model/QuizQuestion;

.field question:Lcom/narvii/model/QuizQuestion;

.field scroll:Landroid/widget/ScrollView;

.field stub1:Landroid/view/View;

.field title:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneBasePostFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)Lcom/narvii/model/QuizQuestion;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->save()Lcom/narvii/model/QuizQuestion;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->updateDuplicateStatus()V

    .line 4
    return-void
.end method

.method private getEditText(I)Landroid/widget/EditText;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroid/view/View;

    .line 9
    .line 10
    sget v0, Lcom/narvii/mediaeditor/R$id;->answer_edit_text:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroid/widget/EditText;

    .line 17
    return-object p1
.end method

.method private getImageView(I)Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroid/view/View;

    .line 9
    .line 10
    sget v0, Lcom/narvii/mediaeditor/R$id;->answer_image:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 17
    return-object p1
.end method

.method private getQuizOption(I)Lcom/narvii/model/QuizOption;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-le v1, p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/model/QuizOption;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return-object p1
.end method

.method private hasDuplicateAnswers()Z
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    .line 9
    :goto_0
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    move-result v3

    .line 14
    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v4

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 41
    move-result v4

    .line 42
    .line 43
    if-eqz v4, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 45
    return v0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v1
.end method

.method private save()Lcom/narvii/model/QuizQuestion;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    .line 27
    :goto_0
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 31
    move-result v3

    .line 32
    .line 33
    if-ge v2, v3, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    check-cast v3, Landroid/view/View;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    check-cast v3, Lcom/narvii/model/QuizOption;

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    new-instance v3, Lcom/narvii/model/QuizOption;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3}, Lcom/narvii/model/QuizOption;-><init>()V

    .line 55
    .line 56
    if-nez v2, :cond_0

    .line 57
    const/4 v4, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    move v4, v1

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    iput-object v4, v3, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 68
    .line 69
    .line 70
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    check-cast v4, Landroid/view/View;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-direct {p0, v2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    iput-object v4, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_2
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 102
    .line 103
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 104
    return-object v0
.end method

.method private setImageMedia(Lcom/narvii/widget/NVImageView;Lcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_media_empty:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 12
    :goto_0
    return-void
.end method

.method private setTextHint(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(I)V

    .line 10
    :cond_0
    return-void
.end method

.method private updateDuplicateStatus()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    .line 9
    :goto_0
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    move-result v5

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    check-cast v5, Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result v5

    .line 49
    add-int/2addr v5, v4

    .line 50
    .line 51
    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move v2, v1

    .line 69
    .line 70
    :goto_2
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 71
    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 74
    move-result v3

    .line 75
    .line 76
    if-ge v2, v3, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    move-result v5

    .line 97
    .line 98
    if-nez v5, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    check-cast v3, Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 108
    move-result v3

    .line 109
    .line 110
    if-le v3, v4, :cond_2

    .line 111
    move v3, v4

    .line 112
    goto :goto_3

    .line 113
    :cond_2
    move v3, v1

    .line 114
    .line 115
    :goto_3
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 116
    .line 117
    .line 118
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v5

    .line 120
    .line 121
    check-cast v5, Landroid/view/View;

    .line 122
    .line 123
    sget v6, Lcom/narvii/mediaeditor/R$id;->duplicate_mark:I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v5

    .line 128
    .line 129
    if-eqz v3, :cond_3

    .line 130
    move v3, v1

    .line 131
    goto :goto_4

    .line 132
    .line 133
    :cond_3
    const/16 v3, 0x8

    .line 134
    .line 135
    .line 136
    :goto_4
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    return-void
.end method


# virtual methods
.method protected canSubmit()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    return v0
.end method

.method protected doSubmit()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->isComplete()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget v0, Lcom/narvii/mediaeditor/R$string;->quiz_incomplete_answers:I

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->hasDuplicateAnswers()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    sget v0, Lcom/narvii/mediaeditor/R$string;->quiz_duplicate_answers:I

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_3
    :goto_0
    sget v0, Lcom/narvii/mediaeditor/R$string;->input_quiz_title:I

    .line 44
    .line 45
    :goto_1
    if-eqz v0, :cond_4

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 58
    .line 59
    new-instance v2, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, p0, v0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;-><init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment;I)V

    .line 63
    .line 64
    .line 65
    const v0, 0x104000a

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 72
    return-void

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    const-string v2, "question"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/4 v1, -0x1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 99
    :cond_5
    return-void
.end method

.method protected getPostObjectType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected isContentEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method protected isModified()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->originalQuestion:Lcom/narvii/model/QuizQuestion;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcom/narvii/model/QuizQuestion;->isSame(Lcom/narvii/model/QuizQuestion;)Z

    .line 12
    move-result v0

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_image:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    sget v1, Lcom/narvii/mediaeditor/R$id;->index:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result p1

    .line 26
    .line 27
    const-string v1, "index"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getQuizOption(I)Lcom/narvii/model/QuizOption;

    .line 34
    move-result-object p1

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    const/4 p1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move p1, v1

    .line 47
    .line 48
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/narvii/scene/SceneBasePostFragment;->draftDir:Ljava/io/File;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    const/16 v1, 0x40

    .line 55
    .line 56
    :cond_1
    or-int/lit8 p1, v1, 0xe

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3, v0, p1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    .line 60
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/scene/SceneBasePostFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget v0, Lcom/narvii/mediaeditor/R$string;->new_quiz:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "mediaPicker"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/media/MediaPickerFragment;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/media/MediaPickerFragment;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 54
    .line 55
    const-string v0, "question"

    .line 56
    .line 57
    const-class v1, Lcom/narvii/model/QuizQuestion;

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/model/QuizQuestion;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    check-cast v0, Lcom/narvii/model/QuizQuestion;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 85
    .line 86
    :goto_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 87
    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    new-instance v0, Lcom/narvii/model/QuizQuestion;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0}, Lcom/narvii/model/QuizQuestion;-><init>()V

    .line 94
    .line 95
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 96
    .line 97
    :cond_2
    if-nez p1, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->originalQuestion:Lcom/narvii/model/QuizQuestion;

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_3
    const-string v0, "originalQuestion"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->originalQuestion:Lcom/narvii/model/QuizQuestion;

    .line 123
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_quiz:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 11
    :cond_0
    return-void
.end method

.method protected onFrameHeightChanged()V
    .locals 12

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 27
    move-result v0

    .line 28
    add-int/2addr v2, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v1

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sget v3, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_padding_h:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    sget v4, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_margin:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    sget v5, Lcom/narvii/mediaeditor/R$dimen;->scene_quiz_title_edit_margin_bottom:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result v4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    sget v6, Lcom/narvii/mediaeditor/R$dimen;->scene_quiz_title_edit_height:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 70
    move-result v5

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v6

    .line 75
    .line 76
    const/high16 v7, 0x41200000    # 10.0f

    .line 77
    .line 78
    .line 79
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 80
    move-result v6

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v7

    .line 85
    .line 86
    sget v8, Lcom/narvii/mediaeditor/R$dimen;->scene_edit_delete_margin_bottom:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    move-result v7

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 94
    move-result-object v8

    .line 95
    .line 96
    const/high16 v9, 0x41a00000    # 20.0f

    .line 97
    .line 98
    .line 99
    invoke-static {v8, v9}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 100
    move-result v8

    .line 101
    .line 102
    iget v9, p0, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    .line 103
    add-int/2addr v2, v6

    .line 104
    add-int/2addr v6, v7

    .line 105
    add-int/2addr v6, v8

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 109
    move-result v2

    .line 110
    const/4 v6, 0x2

    .line 111
    mul-int/2addr v2, v6

    .line 112
    sub-int/2addr v9, v2

    .line 113
    sub-int/2addr v9, v5

    .line 114
    sub-int/2addr v9, v4

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 122
    move-result v2

    .line 123
    int-to-float v2, v2

    .line 124
    .line 125
    .line 126
    const v4, 0x3f4ccccd    # 0.8f

    .line 127
    mul-float/2addr v2, v4

    .line 128
    int-to-float v4, v3

    .line 129
    sub-float/2addr v2, v4

    .line 130
    .line 131
    mul-int/lit8 v5, v0, 0x4

    .line 132
    int-to-float v7, v5

    .line 133
    sub-float/2addr v2, v7

    .line 134
    .line 135
    const/high16 v8, 0x40000000    # 2.0f

    .line 136
    div-float/2addr v2, v8

    .line 137
    .line 138
    .line 139
    const v10, 0x3fa51eb8    # 1.29f

    .line 140
    mul-float/2addr v2, v10

    .line 141
    mul-float/2addr v2, v8

    .line 142
    add-float/2addr v2, v7

    .line 143
    add-float/2addr v2, v4

    .line 144
    float-to-int v2, v2

    .line 145
    .line 146
    .line 147
    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    .line 148
    move-result v11

    .line 149
    .line 150
    sub-int v5, v11, v5

    .line 151
    sub-int/2addr v5, v3

    .line 152
    int-to-float v5, v5

    .line 153
    div-float/2addr v5, v8

    .line 154
    div-float/2addr v5, v10

    .line 155
    mul-float/2addr v5, v8

    .line 156
    add-float/2addr v5, v7

    .line 157
    add-float/2addr v5, v4

    .line 158
    float-to-int v4, v5

    .line 159
    .line 160
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->grid:Landroid/view/View;

    .line 161
    .line 162
    if-eqz v5, :cond_1

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    move-result-object v5

    .line 167
    .line 168
    iput v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    .line 170
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    .line 172
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->grid:Landroid/view/View;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .line 177
    :cond_1
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->stub1:Landroid/view/View;

    .line 178
    .line 179
    if-eqz v4, :cond_2

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 183
    move-result-object v4

    .line 184
    sub-int/2addr v9, v2

    .line 185
    div-int/2addr v9, v6

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 189
    move-result v2

    .line 190
    .line 191
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 192
    .line 193
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->stub1:Landroid/view/View;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    :cond_2
    sub-int/2addr v11, v3

    .line 198
    div-int/2addr v11, v6

    .line 199
    mul-int/2addr v0, v6

    .line 200
    sub-int/2addr v11, v0

    .line 201
    int-to-float v0, v11

    .line 202
    .line 203
    .line 204
    const v2, 0x3ee66666    # 0.45f

    .line 205
    mul-float/2addr v0, v2

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 209
    move-result-object v2

    .line 210
    .line 211
    const/high16 v3, 0x42700000    # 60.0f

    .line 212
    .line 213
    .line 214
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 215
    move-result v2

    .line 216
    int-to-float v2, v2

    .line 217
    .line 218
    cmpg-float v0, v0, v2

    .line 219
    .line 220
    if-gez v0, :cond_3

    .line 221
    goto :goto_1

    .line 222
    :cond_3
    const/4 v6, 0x3

    .line 223
    .line 224
    :goto_1
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 225
    .line 226
    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 228
    move-result v0

    .line 229
    .line 230
    if-ge v1, v0, :cond_4

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, v1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    .line 234
    move-result-object v0

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 238
    .line 239
    add-int/lit8 v1, v1, 0x1

    .line 240
    goto :goto_1

    .line 241
    :cond_4
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "index"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 6
    move-result p2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/QuizOption;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/model/QuizOption;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Lcom/narvii/model/QuizOption;-><init>()V

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    iput-object v1, v0, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Landroid/view/View;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .line 51
    :cond_1
    iput-object p1, v0, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getImageView(I)Lcom/narvii/widget/NVImageView;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setImageMedia(Lcom/narvii/widget/NVImageView;Lcom/narvii/model/Media;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->save()Lcom/narvii/model/QuizQuestion;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 69
    return-void
.end method

.method protected onPostDeleted()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    const-string v2, "question"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const/4 v1, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 22
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
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "question"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->originalQuestion:Lcom/narvii/model/QuizQuestion;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "originalQuestion"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    sget v0, Lcom/narvii/mediaeditor/R$id;->scroll:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroid/widget/ScrollView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->scroll:Landroid/widget/ScrollView;

    .line 18
    .line 19
    sget v0, Lcom/narvii/mediaeditor/R$id;->title:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Landroid/widget/EditText;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 28
    .line 29
    const/16 v1, 0x4001

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 35
    .line 36
    new-instance v2, Landroid/text/method/SingleLineTransformationMethod;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 45
    const/4 v2, 0x3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 51
    const/4 v3, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 57
    const/4 v4, 0x6

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 63
    .line 64
    new-instance v5, Lcom/narvii/widget/EditTextInnerScrollListener;

    .line 65
    .line 66
    .line 67
    invoke-direct {v5}, Lcom/narvii/widget/EditTextInnerScrollListener;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 73
    .line 74
    sget v5, Lcom/narvii/mediaeditor/R$id;->answer_1:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v5

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 84
    .line 85
    sget v5, Lcom/narvii/mediaeditor/R$id;->answer_2:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 95
    .line 96
    sget v5, Lcom/narvii/mediaeditor/R$id;->answer_3:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 106
    .line 107
    sget v5, Lcom/narvii/mediaeditor/R$id;->answer_4:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    sget v5, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_corner_radius_fake:I

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 124
    move-result v0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object v5

    .line 129
    .line 130
    sget v6, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_corner_radius:I

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    move-result v5

    .line 135
    .line 136
    const/16 v6, 0x8

    .line 137
    .line 138
    new-array v6, v6, [F

    .line 139
    int-to-float v0, v0

    .line 140
    .line 141
    aput v0, v6, v3

    .line 142
    const/4 v7, 0x1

    .line 143
    .line 144
    aput v0, v6, v7

    .line 145
    const/4 v8, 0x2

    .line 146
    .line 147
    aput v0, v6, v8

    .line 148
    .line 149
    aput v0, v6, v2

    .line 150
    int-to-float v0, v5

    .line 151
    const/4 v5, 0x4

    .line 152
    .line 153
    aput v0, v6, v5

    .line 154
    const/4 v5, 0x5

    .line 155
    .line 156
    aput v0, v6, v5

    .line 157
    .line 158
    aput v0, v6, v4

    .line 159
    const/4 v5, 0x7

    .line 160
    .line 161
    aput v0, v6, v5

    .line 162
    move v0, v3

    .line 163
    .line 164
    :goto_0
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 165
    .line 166
    .line 167
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 168
    move-result v5

    .line 169
    .line 170
    if-ge v0, v5, :cond_1

    .line 171
    .line 172
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 173
    .line 174
    .line 175
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v5

    .line 177
    .line 178
    check-cast v5, Landroid/view/View;

    .line 179
    .line 180
    sget v9, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object v5

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 188
    move-result-object v5

    .line 189
    .line 190
    instance-of v9, v5, Landroid/graphics/drawable/GradientDrawable;

    .line 191
    .line 192
    if-eqz v9, :cond_0

    .line 193
    .line 194
    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 198
    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 200
    goto :goto_0

    .line 201
    .line 202
    :cond_1
    new-instance v0, Lcom/narvii/widget/NVGradientDrawable;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 206
    move-result-object v5

    .line 207
    .line 208
    sget v9, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_right_gradient_start:I

    .line 209
    .line 210
    .line 211
    invoke-static {v5, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 212
    move-result v5

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 216
    move-result-object v9

    .line 217
    .line 218
    sget v10, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_right_gradient_end:I

    .line 219
    .line 220
    .line 221
    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 222
    move-result v9

    .line 223
    .line 224
    .line 225
    invoke-direct {v0, v5, v9}, Lcom/narvii/widget/NVGradientDrawable;-><init>(II)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v6}, Lcom/narvii/widget/NVGradientDrawable;->setRadius([F)V

    .line 229
    .line 230
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 231
    .line 232
    .line 233
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    move-result-object v5

    .line 235
    .line 236
    check-cast v5, Landroid/view/View;

    .line 237
    .line 238
    sget v6, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    move-result-object v5

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    .line 247
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 248
    .line 249
    .line 250
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    check-cast v0, Landroid/view/View;

    .line 254
    .line 255
    sget v5, Lcom/narvii/mediaeditor/R$id;->shader:I

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    invoke-direct {p0, v3}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    .line 266
    move-result-object v0

    .line 267
    const/4 v5, -0x1

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 274
    .line 275
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 276
    .line 277
    .line 278
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    check-cast v0, Landroid/view/View;

    .line 282
    .line 283
    sget v5, Lcom/narvii/mediaeditor/R$id;->left:I

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 287
    move-result-object v0

    .line 288
    .line 289
    check-cast v0, Landroid/widget/TextView;

    .line 290
    .line 291
    .line 292
    const v5, -0x77000001

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    .line 297
    sget v0, Lcom/narvii/mediaeditor/R$id;->stub1:I

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 301
    move-result-object v0

    .line 302
    .line 303
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->stub1:Landroid/view/View;

    .line 304
    .line 305
    sget v0, Lcom/narvii/mediaeditor/R$id;->grid:I

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    move-result-object p1

    .line 310
    .line 311
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->grid:Landroid/view/View;

    .line 312
    .line 313
    sget p1, Lcom/narvii/mediaeditor/R$string;->post_quiz_correct_answer:I

    .line 314
    .line 315
    .line 316
    invoke-direct {p0, v3, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setTextHint(II)V

    .line 317
    .line 318
    sget p1, Lcom/narvii/mediaeditor/R$string;->post_quiz_wrong_answer_1:I

    .line 319
    .line 320
    .line 321
    invoke-direct {p0, v7, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setTextHint(II)V

    .line 322
    .line 323
    sget p1, Lcom/narvii/mediaeditor/R$string;->post_quiz_wrong_answer_2:I

    .line 324
    .line 325
    .line 326
    invoke-direct {p0, v8, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setTextHint(II)V

    .line 327
    .line 328
    sget p1, Lcom/narvii/mediaeditor/R$string;->post_quiz_wrong_answer_3:I

    .line 329
    .line 330
    .line 331
    invoke-direct {p0, v2, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setTextHint(II)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->updateView()V

    .line 335
    move p1, v3

    .line 336
    .line 337
    :goto_1
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 338
    .line 339
    .line 340
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 341
    move-result v0

    .line 342
    .line 343
    if-ge p1, v0, :cond_2

    .line 344
    .line 345
    .line 346
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getImageView(I)Lcom/narvii/widget/NVImageView;

    .line 347
    move-result-object v0

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .line 352
    .line 353
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    .line 354
    move-result-object v0

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 358
    .line 359
    new-instance v5, Landroid/text/method/SingleLineTransformationMethod;

    .line 360
    .line 361
    .line 362
    invoke-direct {v5}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 375
    .line 376
    new-instance v5, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;

    .line 377
    .line 378
    iget-object v6, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 379
    .line 380
    .line 381
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 382
    move-result-object v6

    .line 383
    .line 384
    check-cast v6, Landroid/view/View;

    .line 385
    .line 386
    sget v7, Lcom/narvii/mediaeditor/R$id;->left:I

    .line 387
    .line 388
    .line 389
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 390
    move-result-object v6

    .line 391
    .line 392
    check-cast v6, Landroid/widget/TextView;

    .line 393
    .line 394
    const/16 v7, 0x1e

    .line 395
    .line 396
    .line 397
    invoke-direct {v5, p0, v0, v6, v7}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;-><init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 398
    .line 399
    add-int/lit8 p1, p1, 0x1

    .line 400
    goto :goto_1

    .line 401
    .line 402
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 403
    .line 404
    new-instance v0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;

    .line 405
    .line 406
    .line 407
    invoke-direct {v0, p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;-><init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->onFrameHeightChanged()V

    .line 414
    return-void
.end method

.method updateView()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 42
    move-result v2

    .line 43
    .line 44
    if-ge v1, v2, :cond_6

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    move-result v3

    .line 52
    .line 53
    if-le v3, v1, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    check-cast v3, Lcom/narvii/model/QuizOption;

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v3, v2

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-direct {p0, v1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    if-nez v3, :cond_2

    .line 68
    move-object v5, v2

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_2
    iget-object v5, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    :goto_2
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    move-result-object v6

    .line 80
    .line 81
    .line 82
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v5

    .line 84
    .line 85
    if-nez v5, :cond_4

    .line 86
    .line 87
    if-nez v3, :cond_3

    .line 88
    move-object v5, v2

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_3
    iget-object v5, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-direct {p0, v1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getImageView(I)Lcom/narvii/widget/NVImageView;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    if-nez v3, :cond_5

    .line 101
    goto :goto_4

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-virtual {v3}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    :goto_4
    invoke-direct {p0, v4, v2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setImageMedia(Lcom/narvii/widget/NVImageView;Lcom/narvii/model/Media;)V

    .line 109
    .line 110
    sget v2, Lcom/narvii/mediaeditor/R$id;->index:I

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v5

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    .line 119
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 120
    .line 121
    .line 122
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    check-cast v4, Landroid/view/View;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    .line 130
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    .line 131
    .line 132
    .line 133
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v3

    .line 135
    .line 136
    check-cast v3, Landroid/view/View;

    .line 137
    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v4

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 144
    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 146
    goto :goto_0

    .line 147
    .line 148
    .line 149
    :cond_6
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->updateDuplicateStatus()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 153
    return-void
.end method
