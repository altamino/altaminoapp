.class public Lcom/narvii/master/setting/LanguageSettingFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;
    }
.end annotation


# instance fields
.field languagePicked:Ljava/lang/String;

.field languageService:Lcom/narvii/language/ContentLanguageService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;-><init>(Lcom/narvii/master/setting/LanguageSettingFragment;)V

    .line 6
    return-object p1
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f080369

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    const/4 p1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120b66

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "content_language"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 20
    .line 21
    const-string p1, "config"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 31
    move-result p1

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme(Z)V

    .line 40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    const v1, 0x7f121173

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/util/ActionBarIcon;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    const v3, 0x7f12052e

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    .line 28
    const v5, 0x7f0604b1

    .line 29
    .line 30
    .line 31
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 32
    move-result v4

    .line 33
    .line 34
    .line 35
    const v5, 0x3f59999a    # 0.85f

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 47
    .line 48
    .line 49
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 50
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f121173

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "content_language"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/master/setting/LanguageSettingFragment;->languagePicked:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public onThemeChange(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0600a1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 48
    .line 49
    if-ne p1, v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    const v0, 0x7f0603eb

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 60
    move-result p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 85
    const/4 v0, -0x1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 89
    :cond_1
    :goto_0
    return-void
.end method
