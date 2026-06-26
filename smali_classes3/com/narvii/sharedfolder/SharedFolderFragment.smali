.class public Lcom/narvii/sharedfolder/SharedFolderFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "SharedFolderFragment.java"


# static fields
.field public static final INDEX_ALBUMS:I = 0x2

.field public static final INDEX_RECENT:I = 0x1


# instance fields
.field private bgColor:I

.field private fileCount:I

.field private folderCount:I

.field pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->bgColor:I

    .line 156
    new-instance v0, Lcom/narvii/sharedfolder/SharedFolderFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedFolderFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedFolderFragment;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/sharedfolder/SharedFolderFragment;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->fileCount:I

    return p1
.end method

.method static synthetic access$102(Lcom/narvii/sharedfolder/SharedFolderFragment;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->folderCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/sharedfolder/SharedFolderFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedFolderFragment;->updateTabCount()V

    return-void
.end method

.method private sendStatsRequest()V
    .locals 4

    .line 91
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/shared-folder/stats"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 92
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 93
    new-instance v2, Lcom/narvii/sharedfolder/SharedFolderFragment$1;

    const-class v3, Lcom/narvii/sharedfolder/SharedFolderStatsResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/sharedfolder/SharedFolderFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedFolderFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private updateTabCount()V
    .locals 5

    .line 118
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 120
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x2

    .line 121
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    iget v2, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->fileCount:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->folderCount:I

    if-nez v2, :cond_1

    const/16 v2, 0x8

    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :goto_0
    sget-object v2, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget v3, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->fileCount:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget-object v1, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget v2, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->folderCount:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getBundles(I)Landroid/os/Bundle;
    .locals 2

    .line 181
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fromTab"

    const/4 v1, 0x1

    .line 182
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "Source"

    const-string v1, "Shared Folder"

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected getFragment(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 139
    :cond_0
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;

    return-object p1

    .line 137
    :cond_1
    const-class p1, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p1, 0x7f0f00c2

    .line 58
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f0f00ed

    .line 56
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0b0623

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090b41

    .line 166
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0807ca

    .line 173
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0807c9

    .line 170
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-object p3
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 72
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedFolderFragment;->sendStatsRequest()V

    const-string v0, "config"

    .line 74
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 75
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 77
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 78
    aget v2, v1, v0

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    aput v2, v1, v0

    .line 79
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->bgColor:I

    const v0, 0x7f0f0fe1

    .line 80
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 200
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0bf7

    const/4 v0, 0x0

    .line 201
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0803e1

    .line 202
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 203
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0624

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onInstantiateItem(Ljava/lang/Object;)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    instance-of v0, p1, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Lcom/narvii/list/NVListFragment;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 149
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/amino/HomeFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVListFragment;->setSwipeRefreshEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0bf7

    if-eq v0, v1, :cond_0

    .line 195
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 191
    :cond_0
    const-class p1, Lcom/narvii/sharedfolder/MyUploadsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 225
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 227
    iget p2, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->bgColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 228
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 229
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 230
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p2, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedFolderFragment;->updateTabCount()V

    return-void
.end method

.method public setFileCount(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->fileCount:I

    .line 109
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedFolderFragment;->updateTabCount()V

    return-void
.end method

.method public setFolderCount(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->folderCount:I

    .line 114
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedFolderFragment;->updateTabCount()V

    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0807c8

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected updateTabView(I)V
    .locals 7

    .line 207
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 209
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 210
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    const v4, 0x7f090b41

    .line 212
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, -0x1

    if-ne v2, p1, :cond_1

    .line 213
    iget v6, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->bgColor:I

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f0902ec

    .line 215
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-ne v2, p1, :cond_2

    .line 216
    iget v5, p0, Lcom/narvii/sharedfolder/SharedFolderFragment;->bgColor:I

    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    if-ne v2, p1, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 218
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedFolderFragment;->tabLayoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
