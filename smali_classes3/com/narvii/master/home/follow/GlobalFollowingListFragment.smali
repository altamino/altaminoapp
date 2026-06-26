.class public Lcom/narvii/master/home/follow/GlobalFollowingListFragment;
.super Lcom/narvii/user/list/FollowingListFragment;
.source "GlobalFollowingListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/narvii/user/list/FollowingListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/narvii/user/list/FollowingListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;

    move-result-object p1

    .line 38
    instance-of v0, p1, Lcom/narvii/user/list/UserListExAdapter;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/narvii/user/list/UserListExAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    :cond_0
    return-object p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 21
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xecf1bd

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/narvii/user/list/FollowingListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, -0xecf1bd

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method protected showAminoId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
