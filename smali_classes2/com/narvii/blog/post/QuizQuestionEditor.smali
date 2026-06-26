.class public Lcom/narvii/blog/post/QuizQuestionEditor;
.super Lcom/narvii/app/NVFragment;
.source "QuizQuestionEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;
.implements Lcom/narvii/app/FragmentWillFinishListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;
    }
.end annotation


# instance fields
.field answer1:Landroid/widget/EditText;

.field answer2:Landroid/widget/EditText;

.field answer3:Landroid/widget/EditText;

.field answer4:Landroid/widget/EditText;

.field backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

.field dir:Ljava/io/File;

.field explanation:Landroid/widget/EditText;

.field mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field question:Lcom/narvii/model/QuizQuestion;

.field root:Landroid/view/View;

.field scroll:Landroid/widget/ScrollView;

.field title:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method private canPreview()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->isEditTextEmpty(Landroid/widget/EditText;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->isEditTextEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->isEditTextEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->isEditTextEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->isEditTextEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_6

    .line 141
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private isEditTextEmpty(Landroid/widget/EditText;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 394
    iget-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->hasDuplicateOption()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->isComplete()Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f0f0e79

    .line 399
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setTitle(I)V

    const p1, 0x7f0f0e78

    .line 400
    invoke-virtual {v1, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0e67

    .line 402
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setTitle(I)V

    :goto_0
    const p1, 0x7f0f0735

    .line 404
    new-instance v2, Lcom/narvii/blog/post/QuizQuestionEditor$1;

    invoke-direct {v2, p0}, Lcom/narvii/blog/post/QuizQuestionEditor$1;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p1, 0x7f0f03cd

    const/4 v2, 0x0

    .line 410
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 411
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09087b

    const v2, 0x7f090870

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x40

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 266
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "pickImage"

    .line 267
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->dir:Ljava/io/File;

    or-int/lit8 p1, p1, 0x6

    invoke-virtual {v1, v2, v0, p1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 78
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "mediaPicker"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPickerFragment;

    iput-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 79
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {v0}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 81
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 84
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iput-object p0, v0, Lcom/narvii/media/MediaPickerFragment;->pickColorResultListener:Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;

    const-string v0, "question"

    if-nez p1, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/QuizQuestion;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    iput-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/QuizQuestion;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    iput-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    if-nez p1, :cond_2

    .line 92
    new-instance p1, Lcom/narvii/model/QuizQuestion;

    invoke-direct {p1}, Lcom/narvii/model/QuizQuestion;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->dir:Ljava/io/File;

    .line 97
    iget-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const v0, 0x7f0f02e5

    const/4 v1, 0x0

    .line 160
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f08047c

    .line 161
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 162
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 163
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0598

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f02e5

    if-ne v0, v1, :cond_0

    .line 169
    const-class v0, Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "preview"

    .line 170
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    move-result-object v1

    .line 172
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "question"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "quiz"

    .line 173
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 176
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPickColorResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 373
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    .line 374
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {p2, p1}, Lcom/narvii/model/QuizQuestion;->setBackgroundColor(I)V

    .line 375
    iget-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/model/QuizQuestion;->setBackgroundMediaList(Ljava/util/List;)V

    .line 376
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->updateView()V

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
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

    .line 381
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    const-string v0, "pickImage"

    .line 382
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    iput-object p1, p2, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 384
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->updateView()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "type"

    .line 385
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x2710

    if-ne p2, v0, :cond_1

    .line 386
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/narvii/model/QuizQuestion;->setBackgroundColor(I)V

    .line 387
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {p2, p1}, Lcom/narvii/model/QuizQuestion;->setBackgroundMediaList(Ljava/util/List;)V

    .line 388
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->updateView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0f02e5

    .line 114
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 115
    invoke-direct {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->canPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 116
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 187
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "question"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 194
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const p2, 0x7f0909be

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->scroll:Landroid/widget/ScrollView;

    const p2, 0x7f09098b

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->root:Landroid/view/View;

    const p2, 0x7f090b9a

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    const p2, 0x7f0908aa

    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    const p2, 0x7f0908ab

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    const p2, 0x7f0908ac

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    const p2, 0x7f0908ad

    .line 203
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    const p2, 0x7f0908b4

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    const p2, 0x7f090870

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09087b

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090109

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/BackgroundPickerView;

    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    .line 208
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->dir:Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/narvii/widget/BackgroundPickerView;->setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;I)V

    .line 210
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    const/16 v0, 0x4001

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 211
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 212
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 213
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 214
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 215
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    const v5, 0x7f0908b3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x82

    invoke-direct {p2, p0, v4, v5, v6}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 217
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 218
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 219
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 220
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 221
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 222
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    iget-object v5, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    const v7, 0x7f0908ae

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0x1e

    invoke-direct {p2, p0, v5, v7, v8}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 224
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 225
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 226
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 227
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 228
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 229
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    iget-object v5, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    const v7, 0x7f0908af

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p2, p0, v5, v7, v8}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 231
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 232
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 233
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 234
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 235
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 236
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    const v5, 0x7f0908b0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {p2, p0, v3, v5, v8}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 238
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 239
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 240
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 241
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 242
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 243
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    const v5, 0x7f0908b1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {p2, p0, v4, v5, v8}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 245
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v4, 0x7f0f0e69

    .line 246
    invoke-virtual {p0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, "\n"

    .line 247
    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 248
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const v5, 0x7f0f0e6a

    .line 249
    invoke-virtual {p0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 250
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v5, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {p2, v5, v4, v7, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 251
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 253
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 254
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setLines(I)V

    .line 255
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 256
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 257
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    const v1, 0x7f0908b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p2, p0, v0, p1, v6}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 259
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->updateView()V

    return-void
.end method

.method save()Lcom/narvii/model/QuizQuestion;
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/QuizOption;

    if-nez v1, :cond_0

    .line 334
    new-instance v1, Lcom/narvii/model/QuizOption;

    invoke-direct {v1}, Lcom/narvii/model/QuizOption;-><init>()V

    const/4 v2, 0x1

    .line 335
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 338
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/QuizOption;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 342
    new-instance v1, Lcom/narvii/model/QuizOption;

    invoke-direct {v1}, Lcom/narvii/model/QuizOption;-><init>()V

    .line 343
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/QuizOption;

    if-nez v1, :cond_2

    .line 350
    new-instance v1, Lcom/narvii/model/QuizOption;

    invoke-direct {v1}, Lcom/narvii/model/QuizOption;-><init>()V

    .line 351
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 353
    :cond_2
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 354
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/QuizOption;

    if-nez v1, :cond_3

    .line 358
    new-instance v1, Lcom/narvii/model/QuizOption;

    invoke-direct {v1}, Lcom/narvii/model/QuizOption;-><init>()V

    .line 359
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 361
    :cond_3
    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v1, v0}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 366
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/model/QuizQuestion;->setQuizAnswerExplanation(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    return-object v0
.end method

.method updateView()V
    .locals 6

    .line 274
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->getCorrectAnswer()Lcom/narvii/model/QuizOption;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 283
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v2

    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v3, v2

    goto :goto_0

    .line 287
    :cond_2
    iget-object v3, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 288
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    if-nez v1, :cond_3

    move-object v4, v2

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_4
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 292
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/QuizOption;

    goto :goto_2

    :cond_5
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_6

    move-object v4, v2

    goto :goto_3

    .line 293
    :cond_6
    iget-object v4, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    :goto_3
    iget-object v5, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 294
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    if-nez v3, :cond_7

    move-object v5, v2

    goto :goto_4

    :cond_7
    iget-object v5, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_8
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_9

    .line 298
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/QuizOption;

    goto :goto_5

    :cond_9
    move-object v3, v2

    :goto_5
    if-nez v3, :cond_a

    move-object v4, v2

    goto :goto_6

    .line 299
    :cond_a
    iget-object v4, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    :goto_6
    iget-object v5, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 300
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    if-nez v3, :cond_b

    move-object v5, v2

    goto :goto_7

    :cond_b
    iget-object v5, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_c
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_d

    .line 304
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_d

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/QuizOption;

    goto :goto_8

    :cond_d
    move-object v0, v2

    :goto_8
    if-nez v0, :cond_e

    move-object v3, v2

    goto :goto_9

    .line 305
    :cond_e
    iget-object v3, v0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    :goto_9
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 306
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    if-nez v0, :cond_f

    move-object v4, v2

    goto :goto_a

    :cond_f
    iget-object v4, v0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_10
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 311
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v3}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_11
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->root:Landroid/view/View;

    const v3, 0x7f090870

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v3, v3, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    const/16 v4, 0x8

    if-eqz v3, :cond_13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_12

    goto :goto_b

    :cond_12
    const/16 v3, 0x8

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->root:Landroid/view/View;

    const v3, 0x7f09087b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 317
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v3, v3, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_14

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    :cond_15
    :goto_d
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f090571

    .line 318
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v3, v3, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz v3, :cond_16

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_16

    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v2, v2, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/model/Media;

    :cond_16
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 320
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    if-eqz v0, :cond_17

    .line 321
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/BackgroundPickerView;->setBackgroundPost(Lcom/narvii/image/BackgroundSource;)V

    .line 324
    :cond_17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 3

    .line 420
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 421
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    move-result-object v1

    .line 424
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "question"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 425
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
