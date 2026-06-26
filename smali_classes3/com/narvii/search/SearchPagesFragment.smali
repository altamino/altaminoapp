.class public Lcom/narvii/search/SearchPagesFragment;
.super Lcom/narvii/app/NVTabFragment;
.source "SearchPagesFragment.java"


# instance fields
.field private isGlobal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/narvii/app/NVTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createTabFragment(I)Landroid/support/v4/app/Fragment;
    .locals 2

    if-nez p1, :cond_0

    .line 53
    new-instance p1, Lcom/narvii/search/SearchBlogListFragment;

    invoke-direct {p1}, Lcom/narvii/search/SearchBlogListFragment;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 55
    iget-boolean p1, p0, Lcom/narvii/search/SearchPagesFragment;->isGlobal:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/narvii/search/SearchItemGridFragment;

    invoke-direct {v1}, Lcom/narvii/search/SearchItemGridFragment;-><init>()V

    :cond_2
    :goto_0
    return-object v1
.end method

.method protected getTabLabel(I)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const p1, 0x7f0f0f49

    .line 43
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 45
    iget-boolean p1, p0, Lcom/narvii/search/SearchPagesFragment;->isGlobal:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0f4d

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 24
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "title"

    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const v0, 0x7f0f0f5a

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "q"

    .line 28
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    const-string p1, "tab"

    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVTabFragment;->setTabIndex(I)V

    :cond_1
    const-string p1, "config"

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 37
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/narvii/search/SearchPagesFragment;->isGlobal:Z

    return-void
.end method
