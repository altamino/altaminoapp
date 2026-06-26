.class public final Lcom/narvii/master/home/discover/DiscoverTabFragment;
.super Lcom/narvii/nested/CoordinateTabFragment;
.source "DiscoverTabFragment.kt"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/master/MasterTopBarAvailable;
.implements Lcom/narvii/story/StoryListVisibleChangeListener;
.implements Lcom/narvii/language/LanguageChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscoverTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverTabFragment.kt\ncom/narvii/master/home/discover/DiscoverTabFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,291:1\n1313#2:292\n1382#2,3:293\n1313#2:296\n1382#2,3:297\n1313#2:300\n1382#2,3:301\n*E\n*S KotlinDebug\n*F\n+ 1 DiscoverTabFragment.kt\ncom/narvii/master/home/discover/DiscoverTabFragment\n*L\n173#1:292\n173#1,3:293\n173#1:296\n173#1,3:297\n173#1:300\n173#1,3:301\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public accountService:Lcom/narvii/account/AccountService;

.field private final btnInterestPicker$delegate:Lkotlin/Lazy;

.field private final headerGradientView$delegate:Lkotlin/Lazy;

.field private final headerView$delegate:Lkotlin/Lazy;

.field private isBottomOverlay:Z

.field private isImmersiveHeader:Z

.field public languageService:Lcom/narvii/language/ContentLanguageService;

.field private final receiver:Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;

.field private showMasterTopBar:Z

.field private storyListShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "headerView"

    const-string v4, "getHeaderView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "headerGradientView"

    const-string v4, "getHeaderGradientView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "btnInterestPicker"

    const-string v4, "getBtnInterestPicker()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/narvii/nested/CoordinateTabFragment;-><init>()V

    const v0, 0x7f0902e6

    .line 46
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->bind(Lcom/narvii/master/home/discover/DiscoverTabFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->headerView$delegate:Lkotlin/Lazy;

    const v0, 0x7f0904df

    .line 47
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->bind(Lcom/narvii/master/home/discover/DiscoverTabFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->headerGradientView$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    const v0, 0x7f090836

    .line 51
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->bind(Lcom/narvii/master/home/discover/DiscoverTabFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->btnInterestPicker$delegate:Lkotlin/Lazy;

    .line 59
    new-instance v0, Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;-><init>(Lcom/narvii/master/home/discover/DiscoverTabFragment;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;

    return-void
.end method

.method private final bind(Lcom/narvii/master/home/discover/DiscoverTabFragment;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/master/home/discover/DiscoverTabFragment;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 158
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/master/home/discover/DiscoverTabFragment$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/master/home/discover/DiscoverTabFragment$bind$1;-><init>(Lcom/narvii/master/home/discover/DiscoverTabFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final updateHeaderView()V
    .locals 3

    .line 273
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isImmersiveHeader:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderGradientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderGradientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final updateMasterTopBar(Z)V
    .locals 1

    .line 262
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    .line 263
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/master/MasterTabFragment;

    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {p1}, Lcom/narvii/master/MasterTabFragment;->updateTopbar()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 12

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v1, Lkotlin/Triple;

    const v2, 0x7f0f0712

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/narvii/master/home/discover/DiscoverFragment;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v6, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 294
    check-cast v3, Lkotlin/Triple;

    .line 173
    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 298
    check-cast v3, Lkotlin/Triple;

    .line 173
    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 300
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 301
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 302
    check-cast v1, Lkotlin/Triple;

    .line 173
    invoke-virtual {v1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .locals 1

    .line 194
    new-instance v0, Lcom/narvii/nested/tab/ScrollTabViewDelegate;

    invoke-direct {v0}, Lcom/narvii/nested/tab/ScrollTabViewDelegate;-><init>()V

    return-object v0
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBtnInterestPicker()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->btnInterestPicker$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/discover/DiscoverTabFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public final getHeaderGradientView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->headerGradientView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/discover/DiscoverTabFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->headerView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/discover/DiscoverTabFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getImmersiveHeaderHeight()I
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderGradientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "languageService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoryDiscover"

    return-object v0
.end method

.method public final getShowMasterTopBar()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    return v0
.end method

.method public final getStoryListShowing()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing:Z

    return v0
.end method

.method public getTabView(ILjava/lang/String;)Landroid/view/View;
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0683

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090b41

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isBottomOverlay()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay:Z

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isImmersiveHeader()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isImmersiveHeader:Z

    return v0
.end method

.method public isTopBarAvailable()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    return v0
.end method

.method public onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 2

    .line 198
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 203
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    .line 208
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f090ae5

    .line 209
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 210
    instance-of v1, v0, Lcom/narvii/story/StoryListFragment;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "account"

    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService<AccountService>(\"account\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "content_language"

    .line 74
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService<ContentLangua\u2026vice>(\"content_language\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 75
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    if-eqz p1, :cond_0

    const-string v0, "showMasterTopBar"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    const-string v0, "isBottomOverlay"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay:Z

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f090ae5

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 83
    instance-of v0, p1, Lcom/narvii/story/StoryListFragment;

    if-eqz v0, :cond_1

    .line 84
    check-cast p1, Lcom/narvii/story/StoryListFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/story/StoryListFragment;->addStoryVisibleChangeListener(Lcom/narvii/story/StoryListVisibleChangeListener;)V

    :cond_1
    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const p1, 0x7f0f03a5

    .line 87
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    if-eqz p1, :cond_0

    const p2, 0x7f0f0f48

    const/4 v0, 0x0

    .line 128
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f080349

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0298

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->onDestroy()V

    .line 167
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateInterPicker()V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0f48

    if-ne v0, v1, :cond_1

    .line 135
    const-class v0, Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    const-string v2, "community"

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f010029

    const v2, 0x7f01002a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 141
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    const-string v1, "showMasterTopBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay:Z

    const-string v1, "isBottomOverlay"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStoryListDismissed()V
    .locals 3

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing:Z

    const/4 v1, 0x1

    .line 243
    invoke-direct {p0, v1}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateMasterTopBar(Z)V

    .line 244
    invoke-virtual {p0, v1}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->setUserVisibleHint(Z)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateMasterBottomBar(Z)V

    .line 246
    invoke-virtual {p0, v1}, Lcom/narvii/nested/CoordinateTabFragment;->setEnableSwipeRefreshLayout(Z)V

    .line 247
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 248
    instance-of v2, v1, Lcom/narvii/master/home/discover/DiscoverFragment;

    if-eqz v2, :cond_0

    .line 249
    check-cast v1, Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {v1}, Lcom/narvii/master/home/discover/DiscoverFragment;->cleanDataSourceInterceptor()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStoryListShown()V
    .locals 2

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->setUserVisibleHint(Z)V

    const-string v1, "setUserVisibleHint onStoryListShown "

    .line 235
    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateMasterTopBar(Z)V

    const/4 v1, 0x1

    .line 237
    iput-boolean v1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing:Z

    .line 238
    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->setEnableSwipeRefreshLayout(Z)V

    return-void
.end method

.method public onSubFragmentCreated(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onSubFragmentCreated(Landroid/support/v4/app/Fragment;I)V

    .line 179
    instance-of p2, p1, Lcom/narvii/master/home/story/CommentSheetDisplayHost;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/master/MasterTabFragment;

    if-eqz p2, :cond_1

    .line 180
    check-cast p1, Lcom/narvii/master/home/story/CommentSheetDisplayHost;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lcom/narvii/master/MasterTabFragment;

    iget-object p2, p2, Lcom/narvii/master/MasterTabFragment;->bottomSheetLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1, p2}, Lcom/narvii/master/home/story/CommentSheetDisplayHost;->setBottomSheetLayout(Landroid/widget/FrameLayout;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p1

    .line 104
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701d6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 105
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderView()Landroid/view/View;

    move-result-object v0

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getBtnInterestPicker()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/master/home/discover/DiscoverTabFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment$onViewCreated$1;-><init>(Lcom/narvii/master/home/discover/DiscoverTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateInterPicker()V

    .line 115
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    move-result-object p1

    .line 119
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "#66000000"

    .line 120
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "overlayColor"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setBottomOverlay(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay:Z

    return-void
.end method

.method public final setImmersiveHeader(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isImmersiveHeader:Z

    .line 56
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateHeaderView()V

    return-void
.end method

.method public final setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setShowMasterTopBar(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    return-void
.end method

.method public final setStoryListShowing(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing:Z

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 222
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f090ae5

    .line 224
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 225
    instance-of v1, v0, Lcom/narvii/story/StoryListFragment;

    if-eqz v1, :cond_1

    .line 226
    check-cast v0, Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->setUserVisibleHint(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final storyListShowing()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing:Z

    return v0
.end method

.method public final updateImmersiveHeader(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderGradientView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08022c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderGradientView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-wide v1, 0xff130e43L

    long-to-int v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final updateInterPicker()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithEnAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v2, "languageService.getReque\u2026LanguageWithEnAsDefault()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "en"

    invoke-static {v0, v4, v3, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    .line 154
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getBtnInterestPicker()Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v3, 0x4

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const-string v0, "languageService"

    .line 153
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public updateMasterBottomBar(Z)V
    .locals 1

    .line 255
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay:Z

    .line 256
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/master/MasterTabFragment;->setBottomTabOverlay(Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
