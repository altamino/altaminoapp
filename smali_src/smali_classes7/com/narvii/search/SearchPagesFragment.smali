.class public Lcom/narvii/search/SearchPagesFragment;
.super Lcom/narvii/app/NVTabFragment;
.source "SourceFile"


# instance fields
.field private isGlobal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVTabFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createTabFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/search/SearchBlogListFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Lcom/narvii/search/SearchBlogListFragment;-><init>()V

    .line 8
    return-object p1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/narvii/search/SearchPagesFragment;->isGlobal:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    new-instance v1, Lcom/narvii/search/SearchItemGridFragment;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Lcom/narvii/search/SearchItemGridFragment;-><init>()V

    .line 23
    :cond_2
    :goto_0
    return-object v1
.end method

.method protected getTabLabel(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    const p1, 0x7f121057

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/narvii/search/SearchPagesFragment;->isGlobal:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    const p1, 0x7f12105b

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 26
    move-result-object v1

    .line 27
    :cond_2
    :goto_0
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "title"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-array v0, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v1, "q"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    .line 31
    const v1, 0x7f121066

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    .line 43
    const-string/jumbo p1, "tab"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 47
    move-result p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVTabFragment;->setTabIndex(I)V

    .line 51
    .line 52
    :cond_1
    const-string p1, "config"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 62
    move-result p1

    .line 63
    .line 64
    if-nez p1, :cond_2

    .line 65
    move v2, v3

    .line 66
    .line 67
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/search/SearchPagesFragment;->isGlobal:Z

    .line 68
    return-void
.end method
