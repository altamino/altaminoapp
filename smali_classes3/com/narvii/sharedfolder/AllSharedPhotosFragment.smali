.class public Lcom/narvii/sharedfolder/AllSharedPhotosFragment;
.super Lcom/narvii/sharedfolder/SharedBaseFragment;
.source "AllSharedPhotosFragment.java"

# interfaces
.implements Lcom/narvii/list/HoverAdapter;


# instance fields
.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fromHomeTab:Z

.field public liveLayerTarget:Ljava/lang/String;

.field public mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->actions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/sharedfolder/AllSharedPhotosFragment;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverUpdateView()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 102
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    const-string p1, "fromTab"

    .line 104
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 105
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    .line 106
    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    :cond_0
    new-instance p1, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;

    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;-><init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment;Lcom/narvii/app/NVContext;)V

    .line 136
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070282

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 137
    new-instance v2, Lcom/narvii/list/SectionDivideColumnAdapter;

    invoke-direct {v2, p0, v1, v1}, Lcom/narvii/list/SectionDivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 138
    new-instance v1, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$4;

    invoke-direct {v1, p0, p0}, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$4;-><init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment;Lcom/narvii/app/NVContext;)V

    .line 159
    invoke-virtual {p1, v1}, Lcom/narvii/list/DatePagedAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x3

    .line 160
    invoke-virtual {v2, p1, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 161
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p1, v2, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 162
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    const v0, 0x7f0f00ed

    .line 201
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->totalCount:I

    invoke-static {v0, v1}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hoverChangeTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHover(I)Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 196
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/date/DateSection;

    return p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 90
    iget-object v0, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->liveLayerTarget:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "liveLayer"

    .line 91
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->actions:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->liveLayerTarget:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->actions:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->liveLayerTarget:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "fromTab"

    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->fromHomeTab:Z

    .line 53
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->actions:Ljava/util/List;

    sget-object v0, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x6a

    .line 54
    invoke-static {p1}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->liveLayerTarget:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 179
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0bf7

    const/4 v0, 0x0

    .line 181
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0803e1

    .line 182
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 183
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 206
    invoke-super {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0, p0}, Lcom/narvii/list/NVListFragment;->setHoverAdapter(Lcom/narvii/list/HoverAdapter;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0bf7

    if-eq v0, v1, :cond_0

    .line 174
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 170
    :cond_0
    const-class p1, Lcom/narvii/sharedfolder/MyUploadsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b0621

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903e7

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    const v0, 0x7f090c0b

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canUploadPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    new-instance v0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$1;-><init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance p1, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$2;

    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$2;-><init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
