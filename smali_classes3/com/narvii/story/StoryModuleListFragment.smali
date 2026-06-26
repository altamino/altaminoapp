.class public final Lcom/narvii/story/StoryModuleListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "StoryModuleListFragment.kt"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/story/StoryListVisibleChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/StoryModuleListFragment$Adapter;,
        Lcom/narvii/story/StoryModuleListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryModuleListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryModuleListFragment.kt\ncom/narvii/story/StoryModuleListFragment\n*L\n1#1,198:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/story/StoryModuleListFragment$Companion;

.field public static final KEY_CONTENT_MODULE:Ljava/lang/String; = "key_content_module"

.field public static final KEY_IS_END:Ljava/lang/String; = "key_is_end"

.field public static final KEY_REFRESH_REPLACE:Ljava/lang/String; = "KEY_REPLACE"

.field public static final KEY_SHARE_DATA_SOURCE_ID:Ljava/lang/String; = "KEY_DATA_SOURCE_ID"

.field private static initBlogListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Blog;",
            ">;>;"
        }
    .end annotation
.end field

.field private static tokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private module:Lcom/narvii/topic/model/discover/ContentModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/story/StoryModuleListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/story/StoryModuleListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/story/StoryModuleListFragment;->Companion:Lcom/narvii/story/StoryModuleListFragment$Companion;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/story/StoryModuleListFragment;->initBlogListMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/story/StoryModuleListFragment;->tokenMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInitBlogListMap$cp()Ljava/util/HashMap;
    .locals 1

    .line 34
    sget-object v0, Lcom/narvii/story/StoryModuleListFragment;->initBlogListMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getModule$p(Lcom/narvii/story/StoryModuleListFragment;)Lcom/narvii/topic/model/discover/ContentModule;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/story/StoryModuleListFragment;->module:Lcom/narvii/topic/model/discover/ContentModule;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "module"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getTokenMap$cp()Ljava/util/HashMap;
    .locals 1

    .line 34
    sget-object v0, Lcom/narvii/story/StoryModuleListFragment;->tokenMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$setInitBlogListMap$cp(Ljava/util/HashMap;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/narvii/story/StoryModuleListFragment;->initBlogListMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setModule$p(Lcom/narvii/story/StoryModuleListFragment;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/story/StoryModuleListFragment;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-void
.end method

.method public static final synthetic access$setTokenMap$cp(Ljava/util/HashMap;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/narvii/story/StoryModuleListFragment;->tokenMap:Ljava/util/HashMap;

    return-void
.end method

.method private final cleanDataSourceInterceptor()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 112
    instance-of v1, v0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    iget-object v0, v0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 114
    instance-of v1, v0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getDataSource()Lcom/narvii/paging/source/DataSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/paging/source/DataSource;->setDataSourceInterceptor(Lcom/narvii/paging/source/DataSourceInterceptor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/StoryModuleListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/StoryModuleListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/StoryModuleListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryModuleListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/story/StoryModuleListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 8

    .line 70
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v6

    .line 71
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v5

    .line 72
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move v4, v5

    invoke-direct/range {v2 .. v7}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 73
    new-instance v1, Lcom/narvii/story/StoryModuleListFragment$Adapter;

    iget-object v2, p0, Lcom/narvii/story/StoryModuleListFragment;->module:Lcom/narvii/topic/model/discover/ContentModule;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/narvii/topic/ModuleDisplayConfig;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/narvii/topic/ModuleDisplayConfig;-><init>(ZZ)V

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/narvii/story/StoryModuleListFragment$Adapter;-><init>(Lcom/narvii/story/StoryModuleListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    const/4 v2, 0x2

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 75
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object v0

    :cond_0
    const-string v0, "module"

    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ModuleStoryList"

    return-object v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 98
    new-instance v0, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "story_detail"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    instance-of v1, v0, Lcom/narvii/story/StoryListFragment;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "key_content_module"

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "JacksonUtils.readAs(getS\u2026ontentModule::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p1, p0, Lcom/narvii/story/StoryModuleListFragment;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 60
    iget-object p1, p0, Lcom/narvii/story/StoryModuleListFragment;->module:Lcom/narvii/topic/model/discover/ContentModule;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "module"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02d4

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "view"

    .line 65
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f06007d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/story/StoryModuleListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onStoryListDismissed()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/narvii/story/StoryModuleListFragment;->cleanDataSourceInterceptor()V

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public onStoryListShown()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    return-void
.end method
