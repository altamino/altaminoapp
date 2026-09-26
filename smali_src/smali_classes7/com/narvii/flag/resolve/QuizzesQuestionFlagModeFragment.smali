.class public Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;
.super Lcom/narvii/quiz/QuizQuestionFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;


# instance fields
.field flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

.field quiz:Lcom/narvii/model/Blog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f130009

    return v0
.end method

.method protected isFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    .line 2
    iget-object v1, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    iget-object v5, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    .line 5
    const/4 v6, 0x1

    .line 6
    move-object v0, p0

    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v4, p3

    .line 10
    .line 11
    .line 12
    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/quiz/QuizQuestionFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "quiz"

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-class v0, Lcom/narvii/model/Blog;

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/model/Blog;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    .line 33
    :cond_1
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
    iget-object p3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d0302

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    const p3, 0x7f0d0300

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/quiz/QuizQuestionFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper;->saveInstanceStats(Lcom/narvii/app/NVContext;Landroid/os/Bundle;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "quiz"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/quiz/QuizQuestionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    move-result p2

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    .line 16
    const p2, 0x7f0a0585

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/feed/FeedSummaryItem;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Lcom/narvii/feed/FeedSummaryItem;->setFeed(Lcom/narvii/model/Feed;)V

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;-><init>(Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    const p2, 0x7f0a05bd

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagModeForCertainView(Landroid/view/ViewGroup;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    iget p2, p2, Lcom/narvii/model/Feed;->status:I

    .line 57
    .line 58
    const/16 v0, 0x9

    .line 59
    .line 60
    if-ne p2, v0, :cond_1

    .line 61
    .line 62
    :cond_0
    if-eqz p1, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    const p2, 0x7f0a0079

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    check-cast p1, Landroid/widget/ImageView;

    .line 87
    .line 88
    .line 89
    const p2, 0x7f0803b4

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    .line 94
    .line 95
    const p1, 0x7f120f98

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
