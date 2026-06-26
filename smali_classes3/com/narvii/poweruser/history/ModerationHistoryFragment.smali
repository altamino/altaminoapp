.class public Lcom/narvii/poweruser/history/ModerationHistoryFragment;
.super Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;
.source "ModerationHistoryFragment.java"


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

    .line 36
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->hideTopContainer()V

    return-void
.end method

.method private addFilterFragment()V
    .locals 4

    .line 200
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "filter"

    .line 202
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/narvii/poweruser/history/MembersFilterFragment;

    invoke-direct {v0}, Lcom/narvii/poweruser/history/MembersFilterFragment;-><init>()V

    .line 204
    new-instance v3, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;

    invoke-direct {v3, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    invoke-virtual {v0, v3}, Lcom/narvii/poweruser/history/MembersFilterFragment;->setFilterItemClickListener(Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;)V

    const v3, 0x7f090bb7

    .line 221
    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 222
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private hideTopContainer()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010042

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    iget-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showTopContainer()V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 154
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 155
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 157
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->addFilterFragment()V

    .line 163
    :cond_1
    new-instance v1, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 81
    new-instance p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->moderationHistoryAdapter:Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;

    .line 82
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->moderationHistoryAdapter:Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 43
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f06ba

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080368

    .line 45
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 46
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f06ba

    if-eq v0, v1, :cond_0

    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->showTopContainer()V

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->hideTopContainer()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1, p2}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090bb7

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 53
    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 54
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 55
    new-instance v1, Lcom/narvii/poweruser/history/ModerationHistoryFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$1;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const p2, 0x7f090bb8

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    .line 70
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 71
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/narvii/poweruser/history/ModerationHistoryFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$2;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
