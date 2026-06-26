.class public final Lcom/narvii/master/setting/VideoAutoPlayFragment;
.super Lcom/narvii/list/NVListFragment;
.source "VideoAutoPlayFragment.kt"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

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

    .line 27
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentCond$p(Lcom/narvii/master/setting/VideoAutoPlayFragment;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    return p0
.end method

.method public static final synthetic access$setCurrentCond$p(Lcom/narvii/master/setting/VideoAutoPlayFragment;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f1151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 52
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f1152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 53
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f1150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 50
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->list:Ljava/util/List;

    .line 55
    new-instance p1, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;

    iget-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    return-object p1

    :cond_0
    const-string p1, "list"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "prefs"

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"prefs\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->prefs:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const-string v1, "video_auto_play"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    .line 46
    iget p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    iput p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->originCond:I

    return-void

    .line 45
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    .line 65
    iget p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    iget v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->originCond:I

    if-eq p1, v0, :cond_1

    .line 66
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    invoke-virtual {v0, p1}, Lcom/narvii/setting/VideoAutoPlayService;->triggerEvent(I)V

    .line 67
    iget-object p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->prefs:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment;->currentCond:I

    const-string v1, "video_auto_play"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const-string p1, "prefs"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f1153

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "config"

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 39
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/setting/VideoAutoPlayFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const-string p2, "listView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 113
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06007d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 114
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 115
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 116
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060181

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 119
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 120
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 121
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    return-void
.end method
