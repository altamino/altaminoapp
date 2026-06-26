.class public Lcom/narvii/master/explorer/CommunityPageFragment;
.super Lcom/narvii/list/NVListFragment;
.source "CommunityPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;,
        Lcom/narvii/master/explorer/CommunityPageFragment$MyAdapter;
    }
.end annotation


# instance fields
.field private acBack:Lcom/narvii/widget/TintButton;

.field private acDivider:Landroid/view/View;

.field private acTitle:Landroid/widget/TextView;

.field actionbar:Landroid/view/View;

.field protected actionbarBg:Landroid/graphics/drawable/Drawable;

.field private actionbarDividerBg:Landroid/graphics/drawable/Drawable;

.field private actionbarTextBg:Landroid/graphics/drawable/Drawable;

.field alpha:I

.field private communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

.field private pageBackColor:I

.field private pageFrontColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/explorer/CommunityPageFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 130
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 131
    new-instance v0, Lcom/narvii/master/explorer/CommunityPageFragment$MyAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/master/explorer/CommunityPageFragment$MyAdapter;-><init>(Lcom/narvii/master/explorer/CommunityPageFragment;)V

    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 132
    new-instance v0, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;-><init>(Lcom/narvii/master/explorer/CommunityPageFragment;)V

    .line 133
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0b034b

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x1

    :try_start_0
    const-string p3, "pageBackground"

    .line 70
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageBackColor:I

    const-string p3, "frontColor"

    .line 71
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageFrontColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p3, -0xfbdece

    .line 73
    iput p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageBackColor:I

    .line 74
    iput p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageFrontColor:I

    :goto_0
    const p3, 0x7f090678

    .line 77
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageBackColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    const p3, 0x102000d

    .line 80
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/SpinningView;

    iget v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageFrontColor:I

    invoke-virtual {p3, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 83
    :cond_1
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    .line 84
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0x777778

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    .line 85
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarTextBg:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f0902ba

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    const p2, 0x7f09004a

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    const p2, 0x7f090b9a

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acTitle:Landroid/widget/TextView;

    const p2, 0x7f090048

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TintButton;

    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acBack:Lcom/narvii/widget/TintButton;

    .line 92
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acBack:Lcom/narvii/widget/TintButton;

    if-eqz p2, :cond_2

    .line 93
    new-instance p3, Lcom/narvii/master/explorer/CommunityPageFragment$1;

    invoke-direct {p3, p0}, Lcom/narvii/master/explorer/CommunityPageFragment$1;-><init>(Lcom/narvii/master/explorer/CommunityPageFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_2
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    const-string p3, "title"

    .line 101
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p2

    .line 105
    iget-object p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 106
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 107
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p2

    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    iget-object v2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 108
    invoke-virtual {p3, v0, v1, p2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method protected onListScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/4 p2, 0x0

    .line 158
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 160
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    const/16 p3, 0xff

    const/16 p4, 0x10

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    if-nez p2, :cond_1

    .line 161
    iput p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    .line 162
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 163
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 164
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p4, :cond_0

    .line 165
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 167
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    if-nez p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr p3, v0

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    sub-float/2addr p2, p3

    float-to-double p1, p2

    const-wide v0, 0x406fe00000000000L    # 255.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    goto :goto_0

    .line 175
    :cond_2
    iput p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    .line 177
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 178
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 179
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p4, :cond_3

    .line 180
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 182
    :cond_3
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 186
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 187
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p4, :cond_5

    .line 188
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 190
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onListScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    const/16 p2, 0x10

    if-eqz p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 202
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_0

    .line 203
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 209
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 210
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_2

    .line 211
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 141
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 142
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 143
    new-instance p2, Lcom/narvii/master/explorer/CommunityPageFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/master/explorer/CommunityPageFragment$2;-><init>(Lcom/narvii/master/explorer/CommunityPageFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setActionbarBg(I)V
    .locals 1

    .line 114
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setActionbarTextColor(I)V
    .locals 5

    .line 118
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/16 v4, 0x78

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acBack:Lcom/narvii/widget/TintButton;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
