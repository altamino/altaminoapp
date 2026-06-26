.class public Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment;
.super Lcom/narvii/feed/quizzes/SubQuizzesListFragment;
.source "PlaygroundQuizzesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected mainAdapter()Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 27
    new-instance v0, Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment$Adapter;-><init>(Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment;)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected updateHeader()V
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->updateHeader()V

    .line 34
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v1, 0x7f09080c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, -0x61fa09

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v1, 0x7f09059d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v1, 0x7f09059e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0d67

    .line 39
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v1, 0x7f09059c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0d68

    .line 43
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
