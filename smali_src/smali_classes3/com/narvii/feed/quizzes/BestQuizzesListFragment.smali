.class public Lcom/narvii/feed/quizzes/BestQuizzesListFragment;
.super Lcom/narvii/feed/quizzes/SubQuizzesListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private showHelpInfo()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120079

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$1;-><init>(Lcom/narvii/feed/quizzes/BestQuizzesListFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 28
    return-void
.end method


# virtual methods
.method public getPostEntryLift()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method protected mainAdapter()Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;-><init>(Lcom/narvii/feed/quizzes/BestQuizzesListFragment;)V

    .line 6
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method protected updateHeader()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->updateHeader()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0a0724

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    const v2, 0x7f080632

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a0725

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    const v1, 0x7f1201a3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 52
    .line 53
    .line 54
    const v1, 0x7f0a0723

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    .line 63
    const v1, 0x7f1201a4

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
