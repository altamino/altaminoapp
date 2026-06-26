.class public Lcom/narvii/feed/quizzes/BestQuizzesListFragment;
.super Lcom/narvii/feed/quizzes/SubQuizzesListFragment;
.source "BestQuizzesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;-><init>()V

    return-void
.end method

.method private showHelpInfo()V
    .locals 3

    .line 81
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0070

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 83
    new-instance v1, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$1;-><init>(Lcom/narvii/feed/quizzes/BestQuizzesListFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method


# virtual methods
.method protected mainAdapter()Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 32
    new-instance v0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;-><init>(Lcom/narvii/feed/quizzes/BestQuizzesListFragment;)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected updateHeader()V
    .locals 3

    .line 37
    invoke-super {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->updateHeader()V

    .line 38
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v1, 0x7f09059d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080503

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v1, 0x7f09059e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0163

    .line 42
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v1, 0x7f09059c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0164

    .line 46
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
