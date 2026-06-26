.class public Lcom/narvii/catalog/review/CatalogSubmissionFragment;
.super Lcom/narvii/app/NVPagerTabFragment;
.source "CatalogSubmissionFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/app/NVPagerTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBundles(I)Landroid/os/Bundle;
    .locals 2

    const-string/jumbo v0, "type"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "all"

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 59
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pending"

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getFragment(I)Ljava/lang/Class;
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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    const-class p1, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    return-object p1

    .line 44
    :cond_1
    const-class p1, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p1, 0x7f0f00e5

    .line 34
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f0f0d3b

    .line 32
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f01b4

    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 2

    const-string p1, "drawerHost"

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    const-wide/16 v0, 0x0

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    return-void
.end method
