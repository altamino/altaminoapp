.class public Lcom/narvii/master/search/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/search/ISearchBarHost;

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/search/ISearchBarHost;

    invoke-interface {v0, p0}, Lcom/narvii/search/ISearchBarHost;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/search/ISearchBarHost;

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/search/ISearchBarHost;

    invoke-interface {v0, p0, p1}, Lcom/narvii/search/ISearchBarHost;->onSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
