.class public Lcom/narvii/scene/quiz/SceneQuizPostFragment;
.super Lcom/narvii/scene/SceneBasePostFragment;
.source "SceneQuizPostFragment.java"

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

    .line 49
    invoke-direct {p0}, Lcom/narvii/scene/SceneBasePostFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)Lcom/narvii/model/QuizQuestion;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->save()Lcom/narvii/model/QuizQuestion;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->updateDuplicateStatus()V

    return-void
.end method

.method private getEditText(I)Landroid/widget/EditText;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget v0, Lcom/narvii/mediaeditor/R$id;->answer_edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    return-object p1
.end method

.method private getImageView(I)Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget v0, Lcom/narvii/mediaeditor/R$id;->answer_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    return-object p1
.end method

.method private getQuizOption(I)Lcom/narvii/model/QuizOption;
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizOption;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private hasDuplicateAnswers()Z
    .locals 5

    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 146
    :goto_0
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 147
    invoke-direct {p0, v2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    .line 153
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private save()Lcom/narvii/model/QuizQuestion;
    .locals 5

    .line 377
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 381
    :goto_0
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 382
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/QuizOption;

    if-nez v3, :cond_1

    .line 384
    new-instance v3, Lcom/narvii/model/QuizOption;

    invoke-direct {v3}, Lcom/narvii/model/QuizOption;-><init>()V

    if-nez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 385
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 386
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 388
    :cond_1
    invoke-direct {p0, v2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 389
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v1, v0}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 393
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    return-object v0
.end method

.method private setImageMedia(Lcom/narvii/widget/NVImageView;Lcom/narvii/model/Media;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 415
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto :goto_0

    .line 417
    :cond_0
    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_media_empty:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private setTextHint(II)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    :cond_0
    return-void
.end method

.method private updateDuplicateStatus()V
    .locals 7

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 441
    :goto_0
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 442
    invoke-direct {p0, v2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    move-result-object v3

    .line 443
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 447
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 451
    :goto_2
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 452
    invoke-direct {p0, v2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    move-result-object v3

    .line 453
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 456
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 457
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 461
    :goto_3
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    sget v6, Lcom/narvii/mediaeditor/R$id;->duplicate_mark:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method protected canSubmit()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected doSubmit()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 108
    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    sget v1, Lcom/narvii/mediaeditor/R$string;->quiz_incomplete_answers:I

    goto :goto_1

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->hasDuplicateAnswers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    sget v1, Lcom/narvii/mediaeditor/R$string;->quiz_duplicate_answers:I

    goto :goto_1

    .line 109
    :cond_2
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$string;->input_quiz_title:I

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 116
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v2, 0x104000a

    .line 119
    new-instance v3, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$1;-><init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment;I)V

    invoke-virtual {v0, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 133
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 136
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "question"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 138
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

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

    .line 170
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isModified()Z
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->originalQuestion:Lcom/narvii/model/QuizQuestion;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0, v2}, Lcom/narvii/model/QuizQuestion;->isSame(Lcom/narvii/model/QuizQuestion;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_image:I

    if-ne v0, v1, :cond_2

    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 425
    sget v1, Lcom/narvii/mediaeditor/R$id;->index:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "index"

    .line 426
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getQuizOption(I)Lcom/narvii/model/QuizOption;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p1}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 429
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v3, p0, Lcom/narvii/scene/SceneBasePostFragment;->draftDir:Ljava/io/File;

    if-eqz p1, :cond_1

    const/16 v1, 0x40

    :cond_1
    or-int/lit8 p1, v1, 0xe

    invoke-virtual {v2, v3, v0, p1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/narvii/scene/SceneBasePostFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lcom/narvii/mediaeditor/R$string;->new_quiz:I

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 65
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "mediaPicker"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPickerFragment;

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 66
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {v0}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    const-string v0, "question"

    if-nez p1, :cond_1

    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/QuizQuestion;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/QuizQuestion;

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/QuizQuestion;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/QuizQuestion;

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lcom/narvii/model/QuizQuestion;

    invoke-direct {v0}, Lcom/narvii/model/QuizQuestion;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    :cond_2
    if-nez p1, :cond_3

    .line 81
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->originalQuestion:Lcom/narvii/model/QuizQuestion;

    goto :goto_1

    :cond_3
    const-string v0, "originalQuestion"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/QuizQuestion;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->originalQuestion:Lcom/narvii/model/QuizQuestion;

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 193
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_quiz:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method protected onFrameHeightChanged()V
    .locals 12

    .line 334
    iget v0, p0, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    if-eqz v0, :cond_4

    .line 336
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 338
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v2

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 340
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_padding_h:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 341
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 342
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/narvii/mediaeditor/R$dimen;->scene_quiz_title_edit_margin_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 343
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/narvii/mediaeditor/R$dimen;->scene_quiz_title_edit_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 344
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v6

    .line 345
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/narvii/mediaeditor/R$dimen;->scene_edit_delete_margin_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 346
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v8, v9}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v8

    .line 347
    iget v9, p0, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    add-int/2addr v0, v6

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v6, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v9, v0

    sub-int/2addr v9, v5

    sub-int/2addr v9, v4

    .line 348
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v4

    int-to-float v4, v3

    sub-float/2addr v0, v4

    mul-int/lit8 v5, v2, 0x4

    int-to-float v7, v5

    sub-float/2addr v0, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v0, v8

    const v10, 0x3fa51eb8    # 1.29f

    mul-float v0, v0, v10

    mul-float v0, v0, v8

    add-float/2addr v0, v7

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 351
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v5, v11, v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    div-float/2addr v5, v8

    div-float/2addr v5, v10

    mul-float v5, v5, v8

    add-float/2addr v5, v7

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 354
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->grid:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 355
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 356
    iput v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 357
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 358
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->grid:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    :cond_1
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->stub1:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 362
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    sub-int/2addr v9, v0

    .line 363
    div-int/2addr v9, v6

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->stub1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    sub-int/2addr v11, v3

    .line 367
    div-int/2addr v11, v6

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v11, v2

    int-to-float v0, v11

    const v2, 0x3ee66666    # 0.45f

    mul-float v0, v0, v2

    .line 368
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x3

    .line 369
    :goto_1
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 370
    invoke-direct {p0, v1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    .line 371
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setLines(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

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

    const-string v0, "index"

    .line 398
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 399
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/QuizOption;

    if-nez v0, :cond_1

    .line 401
    new-instance v0, Lcom/narvii/model/QuizOption;

    invoke-direct {v0}, Lcom/narvii/model/QuizOption;-><init>()V

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 402
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 403
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 405
    :cond_1
    iput-object p1, v0, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    .line 406
    invoke-direct {p0, p2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getImageView(I)Lcom/narvii/widget/NVImageView;

    move-result-object p1

    .line 407
    invoke-virtual {v0}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object p2

    .line 408
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setImageMedia(Lcom/narvii/widget/NVImageView;Lcom/narvii/model/Media;)V

    .line 409
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->save()Lcom/narvii/model/QuizQuestion;

    .line 410
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onPostDeleted()V
    .locals 3

    .line 183
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "question"

    .line 185
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 186
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 198
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "question"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->originalQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "originalQuestion"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 11

    .line 205
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 207
    sget v0, Lcom/narvii/mediaeditor/R$id;->scroll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->scroll:Landroid/widget/ScrollView;

    .line 209
    sget v0, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    .line 211
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 212
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 213
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 214
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 215
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 217
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    new-instance v5, Lcom/narvii/widget/EditTextInnerScrollListener;

    invoke-direct {v5}, Lcom/narvii/widget/EditTextInnerScrollListener;-><init>()V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    sget v5, Lcom/narvii/mediaeditor/R$id;->answer_1:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    sget v5, Lcom/narvii/mediaeditor/R$id;->answer_2:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    sget v5, Lcom/narvii/mediaeditor/R$id;->answer_3:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    sget v5, Lcom/narvii/mediaeditor/R$id;->answer_4:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_corner_radius_fake:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_corner_radius:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v6, 0x8

    new-array v6, v6, [F

    int-to-float v0, v0

    aput v0, v6, v3

    const/4 v7, 0x1

    aput v0, v6, v7

    const/4 v8, 0x2

    aput v0, v6, v8

    aput v0, v6, v2

    int-to-float v0, v5

    const/4 v5, 0x4

    aput v0, v6, v5

    const/4 v5, 0x5

    aput v0, v6, v5

    aput v0, v6, v4

    const/4 v5, 0x7

    aput v0, v6, v5

    const/4 v0, 0x0

    .line 227
    :goto_0
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 228
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    sget v9, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 229
    instance-of v9, v5, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v9, :cond_0

    .line 230
    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Lcom/narvii/widget/NVGradientDrawable;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v9, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_right_gradient_start:I

    invoke-static {v5, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/narvii/mediaeditor/R$color;->scene_quiz_answer_right_gradient_end:I

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v0, v5, v9}, Lcom/narvii/widget/NVGradientDrawable;-><init>(II)V

    .line 234
    invoke-virtual {v0, v6}, Lcom/narvii/widget/NVGradientDrawable;->setRadius([F)V

    .line 235
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    sget v6, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v5, Lcom/narvii/mediaeditor/R$id;->shader:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 237
    invoke-direct {p0, v3}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    const/4 v5, -0x1

    .line 238
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 239
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 240
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v5, Lcom/narvii/mediaeditor/R$id;->left:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, -0x77000001

    .line 241
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    sget v0, Lcom/narvii/mediaeditor/R$id;->stub1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->stub1:Landroid/view/View;

    .line 244
    sget v0, Lcom/narvii/mediaeditor/R$id;->grid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->grid:Landroid/view/View;

    .line 246
    sget p1, Lcom/narvii/mediaeditor/R$string;->post_quiz_correct_answer:I

    invoke-direct {p0, v3, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setTextHint(II)V

    .line 247
    sget p1, Lcom/narvii/mediaeditor/R$string;->post_quiz_wrong_answer_1:I

    invoke-direct {p0, v7, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setTextHint(II)V

    .line 248
    sget p1, Lcom/narvii/mediaeditor/R$string;->post_quiz_wrong_answer_2:I

    invoke-direct {p0, v8, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setTextHint(II)V

    .line 249
    sget p1, Lcom/narvii/mediaeditor/R$string;->post_quiz_wrong_answer_3:I

    invoke-direct {p0, v2, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setTextHint(II)V

    .line 252
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->updateView()V

    const/4 p1, 0x0

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 255
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getImageView(I)Lcom/narvii/widget/NVImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 258
    new-instance v5, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v5}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 259
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 260
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 261
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 262
    new-instance v5, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;

    iget-object v6, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    sget v7, Lcom/narvii/mediaeditor/R$id;->left:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x1e

    invoke-direct {v5, p0, v0, v6, v7}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;-><init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    new-instance v0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$2;-><init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->onFrameHeightChanged()V

    return-void
.end method

.method updateView()V
    .locals 7

    .line 303
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->title:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 310
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 311
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/QuizOption;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 313
    :goto_1
    invoke-direct {p0, v1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getEditText(I)Landroid/widget/EditText;

    move-result-object v4

    if-nez v3, :cond_2

    move-object v5, v2

    goto :goto_2

    .line 314
    :cond_2
    iget-object v5, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v3, :cond_3

    move-object v5, v2

    goto :goto_3

    .line 315
    :cond_3
    iget-object v5, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_4
    invoke-direct {p0, v1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->getImageView(I)Lcom/narvii/widget/NVImageView;

    move-result-object v4

    if-nez v3, :cond_5

    goto :goto_4

    .line 319
    :cond_5
    invoke-virtual {v3}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    .line 320
    :goto_4
    invoke-direct {p0, v4, v2}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->setImageMedia(Lcom/narvii/widget/NVImageView;Lcom/narvii/model/Media;)V

    .line 321
    sget v2, Lcom/narvii/mediaeditor/R$id;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 323
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 324
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->answers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/narvii/mediaeditor/R$id;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_6
    invoke-direct {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->updateDuplicateStatus()V

    .line 328
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method
