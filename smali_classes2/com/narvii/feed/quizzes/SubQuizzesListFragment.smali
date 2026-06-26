.class public abstract Lcom/narvii/feed/quizzes/SubQuizzesListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SubQuizzesListFragment.java"


# instance fields
.field protected header:Lcom/narvii/list/overlay/OverlayLayout;

.field private mainAdapter:Lcom/narvii/list/NVAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method private initHeader()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 57
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07023b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const v2, 0x7f0b05d0

    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    const-string v0, "__embed"

    .line 58
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 63
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 64
    iget-object v1, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v1, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 65
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, v1}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 76
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "__embed"

    .line 77
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f0b05cf

    aput v4, v2, v3

    .line 79
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 80
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->mainAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 83
    iget-object v0, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const-string v0, "__embed"

    .line 47
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract mainAdapter()Lcom/narvii/list/NVAdapter;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b05d2

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 35
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f09080a

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/list/overlay/OverlayLayout;

    iput-object p2, p0, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 37
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->initHeader()V

    .line 38
    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/SubQuizzesListFragment;->updateHeader()V

    const p2, 0x7f0903ed

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 40
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 41
    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0e68

    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected updateHeader()V
    .locals 0

    return-void
.end method
