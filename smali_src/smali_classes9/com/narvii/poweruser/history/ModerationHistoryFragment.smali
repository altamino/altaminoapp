.class public Lcom/narvii/poweruser/history/ModerationHistoryFragment;
.super Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;
    }
.end annotation


# instance fields
.field topContainer:Landroid/widget/FrameLayout;

.field topContainerParent:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method private addFilterFragment()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "filter"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lcom/narvii/poweruser/history/MembersFilterFragment;-><init>()V

    .line 26
    .line 27
    new-instance v3, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/narvii/poweruser/history/MembersFilterFragment;->setFilterItemClickListener(Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;)V

    .line 34
    .line 35
    .line 36
    const v3, 0x7f0a0ed4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 43
    :cond_0
    return-void
.end method

.method private hideTopContainer()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    const v1, 0x7f010060

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    return-void
.end method

.method private showTopContainer()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/facebook/rebound/i;->g()Lcom/facebook/rebound/i;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/facebook/rebound/b;->c()Lcom/facebook/rebound/e;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/facebook/rebound/e;->c()D

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    cmpl-double v1, v1, v3

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->addFilterFragment()V

    .line 50
    .line 51
    :cond_1
    new-instance v1, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 58
    .line 59
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->o(D)Lcom/facebook/rebound/e;

    .line 63
    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->hideTopContainer()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->moderationHistoryAdapter:Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;

    .line 8
    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f120766

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const p2, 0x7f08047a

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120766

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    cmpl-float p1, p1, v0

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->showTopContainer()V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->hideTopContainer()V

    .line 33
    :goto_0
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0ed4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/poweruser/history/ModerationHistoryFragment$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$1;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 33
    .line 34
    .line 35
    const p2, 0x7f0a0ed5

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    new-instance p2, Lcom/narvii/poweruser/history/ModerationHistoryFragment$2;

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$2;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
