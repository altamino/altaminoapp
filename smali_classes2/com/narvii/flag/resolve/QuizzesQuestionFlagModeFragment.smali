.class public Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;
.super Lcom/narvii/quiz/QuizQuestionFragment;
.source "QuizzesQuestionFlagModeFragment.java"

# interfaces
.implements Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;


# instance fields
.field flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

.field quiz:Lcom/narvii/model/Blog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/quiz/QuizQuestionFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f100008

    return v0
.end method

.method protected isFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 105
    iget-object v1, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v5, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/narvii/quiz/QuizQuestionFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "quiz"

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/narvii/model/Blog;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 48
    iget-object p3, p0, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0b02cf

    .line 49
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const p3, 0x7f0b02cd

    .line 51
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lcom/narvii/quiz/QuizQuestionFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    invoke-static {p0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper;->saveInstanceStats(Lcom/narvii/app/NVContext;Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "quiz"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1, p2}, Lcom/narvii/quiz/QuizQuestionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    if-eqz p2, :cond_1

    const p2, 0x7f09044e

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/feed/FeedSummaryItem;

    .line 60
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {p2, v0}, Lcom/narvii/feed/FeedSummaryItem;->setFeed(Lcom/narvii/model/Feed;)V

    .line 61
    new-instance v0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;-><init>(Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09047d

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 72
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagModeForCertainView(Landroid/view/ViewGroup;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 73
    iget-object p1, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/model/Feed;->status:I

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090048

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f0802ad

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f0f0e77

    .line 83
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
