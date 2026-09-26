.class public abstract Lcom/narvii/feed/quizzes/SubQuizzesListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# instance fields
.field protected header:Lcom/narvii/list/overlay/OverlayLayout;

.field private mainAdapter:Lcom/narvii/list/NVAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private initHeader()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    const v2, 0x7f070458

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 13
    move-result v1

    .line 14
    float-to-int v1, v1

    .line 15
    .line 16
    .line 17
    const v2, 0x7f0d0687

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 21
    .line 22
    const-string v0, "__embed"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 44
    move-result v1

    .line 45
    add-int/2addr v0, v1

    .line 46
    int-to-float v0, v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    const v2, 0x7f070459

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 57
    move-result v1

    .line 58
    add-float/2addr v0, v1

    .line 59
    float-to-int v0, v0

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v0, "__embed"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0d0686

    .line 22
    .line 23
    .line 24
    filled-new-array {v1}, [I

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->mainAdapter()Lcom/narvii/list/NVAdapter;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 42
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "__embed"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected abstract mainAdapter()Lcom/narvii/list/NVAdapter;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0689

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0ab1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Lcom/narvii/list/overlay/OverlayLayout;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->initHeader()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->updateHeader()V

    .line 25
    .line 26
    .line 27
    const p2, 0x7f0a04eb

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    instance-of p2, p1, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    const p2, 0x7f120f89

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected updateHeader()V
    .locals 0

    return-void
.end method
