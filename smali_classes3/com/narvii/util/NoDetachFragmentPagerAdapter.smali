.class public abstract Lcom/narvii/util/NoDetachFragmentPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "NoDetachFragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mUserVisibleHint:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 24
    iput-object v0, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mUserVisibleHint:Z

    .line 28
    iput-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method protected static makeFragmentName(IJ)Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 106
    iget-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 56
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-object v3, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 62
    invoke-virtual {p0, p2}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 64
    iget-object p2, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p2, v3, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v2, p1, :cond_2

    const/4 p1, 0x0

    .line 68
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 69
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 112
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 88
    iget-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq p3, p1, :cond_2

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 90
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 91
    iget-object p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 94
    iget-boolean p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mUserVisibleHint:Z

    invoke-virtual {p3, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 95
    iget-boolean p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mUserVisibleHint:Z

    invoke-virtual {p3, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 97
    :cond_1
    iput-object p3, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    :cond_2
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mUserVisibleHint:Z

    if-eq v0, p1, :cond_0

    .line 33
    iput-boolean p1, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mUserVisibleHint:Z

    .line 34
    iget-object v0, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 36
    iget-object v0, p0, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
