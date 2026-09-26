.class public final Lcom/narvii/master/setting/VideoAutoPlayFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;
    }
.end annotation


# instance fields
.field private currentCond:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originCond:I

.field private prefs:Landroid/content/SharedPreferences;


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

.method public static final synthetic access$getCurrentCond$p(Lcom/narvii/master/setting/VideoAutoPlayFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    .line 3
    return p0
.end method

.method public static final synthetic access$setCurrentCond$p(Lcom/narvii/master/setting/VideoAutoPlayFragment;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    .line 3
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f12125d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "getString(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    const v2, 0x7f12125e

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    const v3, 0x7f12125c

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    filled-new-array {p1, v1, v2}, [Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->list:Ljava/util/List;

    .line 55
    .line 56
    new-instance p1, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->list:Ljava/util/List;

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    const-string v0, "list"

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-direct {p1, p0, v0}, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 70
    return-object p1
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 9
    .line 10
    const-string p1, "prefs"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "getService(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast v0, Landroid/content/SharedPreferences;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->prefs:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    :cond_0
    const-string p1, "video_auto_play"

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 36
    move-result p1

    .line 37
    .line 38
    iput p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    .line 39
    .line 40
    iput p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->originCond:I

    .line 41
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    .line 3
    .line 4
    iget v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->originCond:I

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/setting/VideoAutoPlayService;->triggerEvent(I)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->prefs:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "prefs"

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string v0, "video_auto_play"

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f12125f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "config"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p1, v0

    .line 28
    :goto_0
    const/4 v1, 0x2

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V

    .line 33
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 20
    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0600a1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0603eb

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 106
    const/4 v0, -0x1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 110
    :goto_0
    return-void
.end method
