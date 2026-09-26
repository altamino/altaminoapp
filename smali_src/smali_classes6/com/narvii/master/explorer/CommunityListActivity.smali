.class public Lcom/narvii/master/explorer/CommunityListActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/explorer/CommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/master/explorer/CommunityListFragment;-><init>()V

    .line 6
    return-object v0
.end method

.method public isActionBarOverlaying()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 16
    .line 17
    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_0
    return-void
.end method

.method public setStatusBar()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x40

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;I)V

    .line 6
    return-void
.end method
