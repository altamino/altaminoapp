.class public Lcom/narvii/blog/post/QuizQuestionEditor;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private canPreview()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->isEditTextEmpty(Landroid/widget/EditText;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->isEditTextEmpty(Landroid/widget/EditText;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    return v1

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->isEditTextEmpty(Landroid/widget/EditText;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    return v1

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->isEditTextEmpty(Landroid/widget/EditText;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    return v1

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->isEditTextEmpty(Landroid/widget/EditText;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    return v1

    .line 47
    .line 48
    :cond_4
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->hasBackground()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    return v1

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    move-result v0

    .line 68
    .line 69
    if-lez v0, :cond_6

    .line 70
    return v1

    .line 71
    :cond_6
    const/4 v0, 0x0

    .line 72
    return v0
.end method

.method private isEditTextEmpty(Landroid/widget/EditText;)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->isComplete()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->hasDuplicateOption()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->isComplete()Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    .line 45
    const p1, 0x7f120f9a

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 49
    .line 50
    .line 51
    const p1, 0x7f120f99

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_1
    const p1, 0x7f120f88

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 62
    .line 63
    :goto_0
    new-instance p1, Lcom/narvii/blog/post/QuizQuestionEditor$1;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/narvii/blog/post/QuizQuestionEditor$1;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;)V

    .line 67
    .line 68
    .line 69
    const v2, 0x7f1207de

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, v0, p1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    const p1, 0x7f120438

    .line 76
    const/4 v2, 0x0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 83
    const/4 p1, 0x1

    .line 84
    return p1

    .line 85
    :cond_2
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0b2c

    .line 8
    .line 9
    .line 10
    const v2, 0x7f0a0b37

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-ne v0, v2, :cond_2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 22
    move-result p1

    .line 23
    .line 24
    if-ne p1, v2, :cond_1

    .line 25
    .line 26
    const/16 p1, 0x40

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    .line 30
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    const-string v1, "pickImage"

    .line 36
    const/4 v2, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->dir:Ljava/io/File;

    .line 44
    .line 45
    or-int/lit8 p1, p1, 0x6

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v0, p1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    .line 49
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "mediaPicker"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/media/MediaPickerFragment;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/media/MediaPickerFragment;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 55
    .line 56
    iput-object p0, v0, Lcom/narvii/media/MediaPickerFragment;->pickColorResultListener:Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;

    .line 57
    .line 58
    const-class v0, Lcom/narvii/model/QuizQuestion;

    .line 59
    .line 60
    const-string v1, "question"

    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 88
    .line 89
    :goto_0
    iget-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 90
    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    new-instance p1, Lcom/narvii/model/QuizQuestion;

    .line 94
    .line 95
    .line 96
    invoke-direct {p1}, Lcom/narvii/model/QuizQuestion;-><init>()V

    .line 97
    .line 98
    iput-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iput-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->dir:Ljava/io/File;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 112
    move-result p1

    .line 113
    .line 114
    if-nez p1, :cond_3

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 118
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    const v1, 0x7f120330

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0805a4

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x2

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    .line 3
    const p3, 0x7f0d0640

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
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
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120330

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-class v0, Lcom/narvii/quiz/QuizQuestionFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "preview"

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    const-string v2, "question"

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    const-string v1, "quiz"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0}, Lcom/narvii/blog/post/QuizQuestionEditor;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 50
    move-result p1

    .line 51
    return p1
.end method

.method public onPickColorResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lcom/narvii/model/QuizQuestion;->setBackgroundColor(I)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/narvii/model/QuizQuestion;->setBackgroundMediaList(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->updateView()V

    .line 18
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    .line 4
    .line 5
    const-string v0, "pickImage"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 14
    .line 15
    iput-object p1, p2, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->updateView()V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const-string v0, "type"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 25
    move-result p2

    .line 26
    .line 27
    const/16 v0, 0x2710

    .line 28
    .line 29
    if-ne p2, v0, :cond_1

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Lcom/narvii/model/QuizQuestion;->setBackgroundColor(I)V

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lcom/narvii/model/QuizQuestion;->setBackgroundMediaList(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->updateView()V

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f120330

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->canPreview()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const/16 v0, 0xff

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    const/16 v0, 0x82

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 44
    :goto_0
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
    .line 6
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "question"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a0c87

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    check-cast p2, Landroid/widget/ScrollView;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->scroll:Landroid/widget/ScrollView;

    .line 22
    .line 23
    .line 24
    const p2, 0x7f0a0c4c

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->root:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    const p2, 0x7f0a0e9e

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    check-cast p2, Landroid/widget/EditText;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    .line 42
    .line 43
    .line 44
    const p2, 0x7f0a0b67

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    check-cast p2, Landroid/widget/EditText;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 53
    .line 54
    .line 55
    const p2, 0x7f0a0b68

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    check-cast p2, Landroid/widget/EditText;

    .line 62
    .line 63
    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 64
    .line 65
    .line 66
    const p2, 0x7f0a0b69

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    check-cast p2, Landroid/widget/EditText;

    .line 73
    .line 74
    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 75
    .line 76
    .line 77
    const p2, 0x7f0a0b6a

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    check-cast p2, Landroid/widget/EditText;

    .line 84
    .line 85
    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 86
    .line 87
    .line 88
    const p2, 0x7f0a0b71

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    check-cast p2, Landroid/widget/EditText;

    .line 95
    .line 96
    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 97
    .line 98
    .line 99
    const p2, 0x7f0a0b2c

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object p2

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    const p2, 0x7f0a0b37

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    const p2, 0x7f0a019b

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object p2

    .line 124
    .line 125
    check-cast p2, Lcom/narvii/widget/BackgroundPickerView;

    .line 126
    .line 127
    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->dir:Ljava/io/File;

    .line 132
    const/4 v2, 0x0

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v0, v1, v2}, Lcom/narvii/widget/BackgroundPickerView;->setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;I)V

    .line 136
    .line 137
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    .line 138
    .line 139
    const/16 v0, 0x4001

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 143
    .line 144
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    .line 145
    const/4 v1, 0x1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 149
    .line 150
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    .line 151
    const/4 v3, 0x5

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 155
    .line 156
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 160
    .line 161
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 165
    .line 166
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    .line 167
    .line 168
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    .line 169
    .line 170
    .line 171
    const v5, 0x7f0a0b70

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object v5

    .line 176
    .line 177
    check-cast v5, Landroid/widget/TextView;

    .line 178
    .line 179
    const/16 v6, 0x82

    .line 180
    .line 181
    .line 182
    invoke-direct {p2, p0, v4, v5, v6}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 183
    .line 184
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 188
    .line 189
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 193
    .line 194
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 195
    const/4 v4, 0x2

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 199
    .line 200
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 204
    .line 205
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 209
    .line 210
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    .line 211
    .line 212
    iget-object v5, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 213
    .line 214
    .line 215
    const v7, 0x7f0a0b6b

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    move-result-object v7

    .line 220
    .line 221
    check-cast v7, Landroid/widget/TextView;

    .line 222
    .line 223
    const/16 v8, 0x1e

    .line 224
    .line 225
    .line 226
    invoke-direct {p2, p0, v5, v7, v8}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 227
    .line 228
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 232
    .line 233
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 237
    .line 238
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 242
    .line 243
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 247
    .line 248
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 252
    .line 253
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    .line 254
    .line 255
    iget-object v5, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 256
    .line 257
    .line 258
    const v7, 0x7f0a0b6c

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    move-result-object v7

    .line 263
    .line 264
    check-cast v7, Landroid/widget/TextView;

    .line 265
    .line 266
    .line 267
    invoke-direct {p2, p0, v5, v7, v8}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 268
    .line 269
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 273
    .line 274
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 278
    .line 279
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 283
    .line 284
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 288
    .line 289
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 293
    .line 294
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    .line 295
    .line 296
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 297
    .line 298
    .line 299
    const v5, 0x7f0a0b6d

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 303
    move-result-object v5

    .line 304
    .line 305
    check-cast v5, Landroid/widget/TextView;

    .line 306
    .line 307
    .line 308
    invoke-direct {p2, p0, v3, v5, v8}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 309
    .line 310
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 314
    .line 315
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 319
    .line 320
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 324
    .line 325
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 329
    .line 330
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 331
    const/4 v3, 0x6

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 335
    .line 336
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    .line 337
    .line 338
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 339
    .line 340
    .line 341
    const v5, 0x7f0a0b6e

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 345
    move-result-object v5

    .line 346
    .line 347
    check-cast v5, Landroid/widget/TextView;

    .line 348
    .line 349
    .line 350
    invoke-direct {p2, p0, v4, v5, v8}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 351
    .line 352
    new-instance p2, Landroid/text/SpannableStringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    const v4, 0x7f120f8a

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 362
    move-result-object v4

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 366
    .line 367
    const-string v4, "\n"

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 374
    move-result v4

    .line 375
    .line 376
    .line 377
    const v5, 0x7f120f8b

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 381
    move-result-object v5

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 385
    .line 386
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    .line 387
    .line 388
    const/high16 v7, 0x3f400000    # 0.75f

    .line 389
    .line 390
    .line 391
    invoke-direct {v5, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 395
    move-result v7

    .line 396
    .line 397
    .line 398
    invoke-virtual {p2, v5, v4, v7, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 399
    .line 400
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 404
    .line 405
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 409
    .line 410
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 414
    .line 415
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 416
    const/4 v0, 0x4

    .line 417
    .line 418
    .line 419
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 420
    .line 421
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 425
    .line 426
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 427
    .line 428
    .line 429
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 430
    .line 431
    new-instance p2, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;

    .line 432
    .line 433
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 434
    .line 435
    .line 436
    const v1, 0x7f0a0b6f

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 440
    move-result-object p1

    .line 441
    .line 442
    check-cast p1, Landroid/widget/TextView;

    .line 443
    .line 444
    .line 445
    invoke-direct {p2, p0, v0, p1, v6}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;-><init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->updateView()V

    .line 449
    return-void
.end method

.method save()Lcom/narvii/model/QuizQuestion;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

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
    iput-object v1, v0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/model/QuizOption;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/model/QuizOption;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Lcom/narvii/model/QuizOption;-><init>()V

    .line 35
    .line 36
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    iput-object v2, v1, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 39
    .line 40
    :cond_0
    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    iput-object v2, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/model/QuizOption;

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    new-instance v1, Lcom/narvii/model/QuizOption;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Lcom/narvii/model/QuizOption;-><init>()V

    .line 69
    .line 70
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 71
    .line 72
    iput-object v2, v1, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 73
    .line 74
    :cond_1
    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    iput-object v2, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    check-cast v1, Lcom/narvii/model/QuizOption;

    .line 96
    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    new-instance v1, Lcom/narvii/model/QuizOption;

    .line 100
    .line 101
    .line 102
    invoke-direct {v1}, Lcom/narvii/model/QuizOption;-><init>()V

    .line 103
    .line 104
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    iput-object v2, v1, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 107
    .line 108
    :cond_2
    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    iput-object v2, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    check-cast v1, Lcom/narvii/model/QuizOption;

    .line 130
    .line 131
    if-nez v1, :cond_3

    .line 132
    .line 133
    new-instance v1, Lcom/narvii/model/QuizOption;

    .line 134
    .line 135
    .line 136
    invoke-direct {v1}, Lcom/narvii/model/QuizOption;-><init>()V

    .line 137
    .line 138
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 139
    .line 140
    iput-object v2, v1, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 141
    .line 142
    :cond_3
    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 146
    move-result-object v2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    iput-object v2, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v0}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 161
    .line 162
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 163
    .line 164
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/narvii/model/QuizQuestion;->setQuizAnswerExplanation(Ljava/lang/String;)V

    .line 176
    .line 177
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 178
    return-object v0
.end method

.method updateView()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

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
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->title:Landroid/widget/EditText;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

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
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->getCorrectAnswer()Lcom/narvii/model/QuizOption;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    move-object v0, v2

    .line 55
    :cond_1
    const/4 v2, 0x0

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    move-object v3, v2

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    iget-object v3, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 62
    .line 63
    :goto_0
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    move-result v3

    .line 76
    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 80
    .line 81
    if-nez v1, :cond_3

    .line 82
    move-object v4, v2

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_3
    iget-object v4, v1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    :cond_4
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    const/4 v1, 0x0

    .line 95
    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 100
    move-result v3

    .line 101
    .line 102
    if-lez v3, :cond_5

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    check-cast v3, Lcom/narvii/model/QuizOption;

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    move-object v3, v2

    .line 111
    .line 112
    :goto_2
    if-nez v3, :cond_6

    .line 113
    move-object v4, v2

    .line 114
    goto :goto_3

    .line 115
    .line 116
    :cond_6
    iget-object v4, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 117
    .line 118
    :goto_3
    iget-object v5, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 122
    move-result-object v5

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    move-result-object v5

    .line 127
    .line 128
    .line 129
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    move-result v4

    .line 131
    .line 132
    if-nez v4, :cond_8

    .line 133
    .line 134
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 135
    .line 136
    if-nez v3, :cond_7

    .line 137
    move-object v5, v2

    .line 138
    goto :goto_4

    .line 139
    .line 140
    :cond_7
    iget-object v5, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    :cond_8
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer2:Landroid/widget/EditText;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    .line 150
    if-eqz v0, :cond_9

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 154
    move-result v3

    .line 155
    const/4 v4, 0x1

    .line 156
    .line 157
    if-le v3, v4, :cond_9

    .line 158
    .line 159
    .line 160
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object v3

    .line 162
    .line 163
    check-cast v3, Lcom/narvii/model/QuizOption;

    .line 164
    goto :goto_5

    .line 165
    :cond_9
    move-object v3, v2

    .line 166
    .line 167
    :goto_5
    if-nez v3, :cond_a

    .line 168
    move-object v4, v2

    .line 169
    goto :goto_6

    .line 170
    .line 171
    :cond_a
    iget-object v4, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 172
    .line 173
    :goto_6
    iget-object v5, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 177
    move-result-object v5

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    move-result-object v5

    .line 182
    .line 183
    .line 184
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    move-result v4

    .line 186
    .line 187
    if-nez v4, :cond_c

    .line 188
    .line 189
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 190
    .line 191
    if-nez v3, :cond_b

    .line 192
    move-object v5, v2

    .line 193
    goto :goto_7

    .line 194
    .line 195
    :cond_b
    iget-object v5, v3, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    :cond_c
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer3:Landroid/widget/EditText;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    .line 205
    if-eqz v0, :cond_d

    .line 206
    .line 207
    .line 208
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 209
    move-result v3

    .line 210
    const/4 v4, 0x2

    .line 211
    .line 212
    if-le v3, v4, :cond_d

    .line 213
    .line 214
    .line 215
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    check-cast v0, Lcom/narvii/model/QuizOption;

    .line 219
    goto :goto_8

    .line 220
    :cond_d
    move-object v0, v2

    .line 221
    .line 222
    :goto_8
    if-nez v0, :cond_e

    .line 223
    move-object v3, v2

    .line 224
    goto :goto_9

    .line 225
    .line 226
    :cond_e
    iget-object v3, v0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 227
    .line 228
    :goto_9
    iget-object v4, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 232
    move-result-object v4

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 236
    move-result-object v4

    .line 237
    .line 238
    .line 239
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    move-result v3

    .line 241
    .line 242
    if-nez v3, :cond_10

    .line 243
    .line 244
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 245
    .line 246
    if-nez v0, :cond_f

    .line 247
    move-object v4, v2

    .line 248
    goto :goto_a

    .line 249
    .line 250
    :cond_f
    iget-object v4, v0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    :cond_10
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer4:Landroid/widget/EditText;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 259
    .line 260
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 265
    .line 266
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 270
    move-result-object v3

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 274
    move-result-object v3

    .line 275
    .line 276
    .line 277
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    move-result v0

    .line 279
    .line 280
    if-nez v0, :cond_11

    .line 281
    .line 282
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->explanation:Landroid/widget/EditText;

    .line 283
    .line 284
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    .line 288
    move-result-object v3

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    :cond_11
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->root:Landroid/view/View;

    .line 294
    .line 295
    .line 296
    const v3, 0x7f0a0b2c

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 300
    move-result-object v0

    .line 301
    .line 302
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 303
    .line 304
    iget-object v3, v3, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 305
    .line 306
    const/16 v4, 0x8

    .line 307
    .line 308
    if-eqz v3, :cond_13

    .line 309
    .line 310
    .line 311
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 312
    move-result v3

    .line 313
    .line 314
    if-nez v3, :cond_12

    .line 315
    goto :goto_b

    .line 316
    :cond_12
    move v3, v4

    .line 317
    goto :goto_c

    .line 318
    :cond_13
    :goto_b
    move v3, v1

    .line 319
    .line 320
    .line 321
    :goto_c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .line 323
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->root:Landroid/view/View;

    .line 324
    .line 325
    .line 326
    const v3, 0x7f0a0b37

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 330
    move-result-object v0

    .line 331
    .line 332
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 333
    .line 334
    iget-object v3, v3, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 335
    .line 336
    if-eqz v3, :cond_15

    .line 337
    .line 338
    .line 339
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 340
    move-result v3

    .line 341
    .line 342
    if-nez v3, :cond_14

    .line 343
    goto :goto_d

    .line 344
    :cond_14
    move v4, v1

    .line 345
    .line 346
    .line 347
    :cond_15
    :goto_d
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    .line 349
    .line 350
    const v3, 0x7f0a06eb

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 354
    move-result-object v0

    .line 355
    .line 356
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 357
    .line 358
    iget-object v3, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 359
    .line 360
    iget-object v3, v3, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 361
    .line 362
    if-eqz v3, :cond_16

    .line 363
    .line 364
    .line 365
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 366
    move-result v3

    .line 367
    .line 368
    if-lez v3, :cond_16

    .line 369
    .line 370
    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 371
    .line 372
    iget-object v2, v2, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 373
    .line 374
    .line 375
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 376
    move-result-object v1

    .line 377
    move-object v2, v1

    .line 378
    .line 379
    check-cast v2, Lcom/narvii/model/Media;

    .line 380
    .line 381
    .line 382
    :cond_16
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 383
    .line 384
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    .line 385
    .line 386
    if-eqz v0, :cond_17

    .line 387
    .line 388
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v1}, Lcom/narvii/widget/BackgroundPickerView;->setBackgroundPost(Lcom/narvii/image/BackgroundSource;)V

    .line 392
    .line 393
    .line 394
    :cond_17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 395
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor;->question:Lcom/narvii/model/QuizQuestion;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor;->save()Lcom/narvii/model/QuizQuestion;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v2, "question"

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const/4 v1, -0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 29
    :cond_0
    return-void
.end method
