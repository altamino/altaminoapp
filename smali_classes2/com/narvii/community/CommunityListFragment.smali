.class public Lcom/narvii/community/CommunityListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "CommunityListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/CommunityListFragment$Adapter;,
        Lcom/narvii/community/CommunityListFragment$DataSource;,
        Lcom/narvii/community/CommunityListFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/community/CommunityListFragment$Companion;

.field public static final KEY_PATH:Ljava/lang/String; = "KEY_PATH"

.field public static final KEY_REFRESH_REPLACE:Ljava/lang/String; = "KEY_REPLACE"

.field public static final KEY_SHARE_DATA_SOURCE_ID:Ljava/lang/String; = "KEY_DATA_SOURCE_ID"

.field public static final KEY_TITLE:Ljava/lang/String; = "KEY_TITLE"

.field private static initCommunityListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Community;",
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

.field public languageService:Lcom/narvii/language/ContentLanguageService;

.field private sharedShareSourceHolder:Lcom/narvii/paging/source/ShareDataSourceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/community/CommunityListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/community/CommunityListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/community/CommunityListFragment;->Companion:Lcom/narvii/community/CommunityListFragment$Companion;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/community/CommunityListFragment;->initCommunityListMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/community/CommunityListFragment;->tokenMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInitCommunityListMap$cp()Ljava/util/HashMap;
    .locals 1

    .line 35
    sget-object v0, Lcom/narvii/community/CommunityListFragment;->initCommunityListMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getTokenMap$cp()Ljava/util/HashMap;
    .locals 1

    .line 35
    sget-object v0, Lcom/narvii/community/CommunityListFragment;->tokenMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$setInitCommunityListMap$cp(Ljava/util/HashMap;)V
    .locals 0

    .line 35
    sput-object p0, Lcom/narvii/community/CommunityListFragment;->initCommunityListMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setTokenMap$cp(Ljava/util/HashMap;)V
    .locals 0

    .line 35
    sput-object p0, Lcom/narvii/community/CommunityListFragment;->tokenMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/CommunityListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/community/CommunityListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public communityLayoutId()I
    .locals 1

    const v0, 0x7f0b03aa

    return v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 87
    new-instance v0, Lcom/narvii/community/CommunityListFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/community/CommunityListFragment$Adapter;-><init>(Lcom/narvii/community/CommunityListFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

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

    const-string v0, "KEY_PATH"

    .line 147
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ModuleCommunityList"

    return-object v0

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSharedShareSourceHolder()Lcom/narvii/paging/source/ShareDataSourceHolder;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment;->sharedShareSourceHolder:Lcom/narvii/paging/source/ShareDataSourceHolder;

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "content_language"

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"content_language\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/community/CommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    const-string p1, "KEY_TITLE"

    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02d4

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 69
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

.method public onDestroy()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 75
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment;->sharedShareSourceHolder:Lcom/narvii/paging/source/ShareDataSourceHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/paging/source/ShareDataSourceHolder;->removeHost(Lcom/narvii/app/NVContext;)V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/community/CommunityListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0801d0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    :goto_0
    new-instance p2, Landroid/support/v7/widget/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    if-eqz p1, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const v0, 0x20ffffff

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_1
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public pagingConfig()Lcom/narvii/paging/source/PagingConfiguration;
    .locals 2

    .line 158
    sget-object v0, Lcom/narvii/paging/source/PagingConfiguration;->TOKEN_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    const-string v1, "PagingConfiguration.TOKEN_CONFIG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/narvii/community/CommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setSharedShareSourceHolder(Lcom/narvii/paging/source/ShareDataSourceHolder;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/community/CommunityListFragment;->sharedShareSourceHolder:Lcom/narvii/paging/source/ShareDataSourceHolder;

    return-void
.end method
