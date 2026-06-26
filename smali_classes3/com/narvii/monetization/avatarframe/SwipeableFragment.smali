.class public abstract Lcom/narvii/monetization/avatarframe/SwipeableFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SwipeableFragment.java"


# instance fields
.field protected swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

.field protected tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method public static createDefaultContainer(Landroid/app/Activity;I)Landroid/view/View;
    .locals 4

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020002

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 71
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    .line 79
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-object v1
.end method

.method protected static createFragment(Ljava/lang/Class;)Lcom/narvii/monetization/avatarframe/SwipeableFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/avatarframe/SwipeableFragment;",
            ">;)",
            "Lcom/narvii/monetization/avatarframe/SwipeableFragment;"
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "fail to create SwipeableFragment"

    .line 90
    invoke-static {v0, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static show(Lcom/narvii/app/NVActivity;ILjava/lang/String;Ljava/lang/Class;)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVActivity;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/avatarframe/SwipeableFragment;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->showInternal(Landroid/support/v4/app/FragmentManager;ILjava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static show(Lcom/narvii/app/NVActivity;ILjava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVActivity;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/avatarframe/SwipeableFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->showInternal(Landroid/support/v4/app/FragmentManager;ILjava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static show(Lcom/narvii/app/NVFragment;ILjava/lang/String;Ljava/lang/Class;)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVFragment;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/avatarframe/SwipeableFragment;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->showInternal(Landroid/support/v4/app/FragmentManager;ILjava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method private static showInternal(Landroid/support/v4/app/FragmentManager;ILjava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/avatarframe/SwipeableFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    invoke-static {p3}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->createFragment(Ljava/lang/Class;)Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iput-object p2, v0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->tag:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 53
    invoke-virtual {v0, p4}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const p3, 0x7f01000d

    const p4, 0x7f01000c

    .line 57
    invoke-virtual {p0, p4, p3, p4, p3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 58
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 59
    invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 192
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->remove()V

    :goto_0
    return-void
.end method

.method protected abstract getContentView()I
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected getDismissMaskId()I
    .locals 1

    const v0, 0x7f090363

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSwipeableLayoutId()I
    .locals 1

    const v0, 0x7f0904ba

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->getContentView()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 141
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->getSwipeableLayoutId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SwipeableLayout;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 144
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/SwipeableLayout;->bindListView(Landroid/widget/AbsListView;)V

    .line 147
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/narvii/widget/SwipeableLayout;->setAllowDirection(I)V

    .line 148
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702c1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 149
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p2, v1, v1}, Lcom/narvii/widget/SwipeableLayout;->setRadius(IIII)V

    .line 153
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    new-instance v0, Lcom/narvii/monetization/avatarframe/SwipeableFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment$1;-><init>(Lcom/narvii/monetization/avatarframe/SwipeableFragment;)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/SwipeableLayout;->setSwipeListener(Lcom/narvii/widget/SwipeableLayout$SwipeListener;)V

    :cond_0
    const p2, 0x7f090719

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 171
    new-instance v0, Lcom/narvii/monetization/avatarframe/SwipeableFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment$2;-><init>(Lcom/narvii/monetization/avatarframe/SwipeableFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->getDismissMaskId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 181
    new-instance p2, Lcom/narvii/monetization/avatarframe/SwipeableFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment$3;-><init>(Lcom/narvii/monetization/avatarframe/SwipeableFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public remove()V
    .locals 3

    .line 96
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 99
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->tag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
