.class public final Lcom/narvii/topic/adapter/PostListAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "PostListAdapter.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/topic/model/ModuleItemCountHost;
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;,
        Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;,
        Lcom/narvii/topic/adapter/PostListAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPostListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostListAdapter.kt\ncom/narvii/topic/adapter/PostListAdapter\n*L\n1#1,347:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/topic/adapter/PostListAdapter$Companion;

.field private static final MAX_SIZE:I = 0x6


# instance fields
.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

.field private final inflater$delegate:Lkotlin/Lazy;

.field private final languageService$delegate:Lkotlin/Lazy;

.field private final proxyAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/topic/adapter/PostListAdapter;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "inflater"

    const-string v5, "getInflater()Landroid/view/LayoutInflater;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "proxyAdapter"

    const-string v5, "getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "languageService"

    const-string v4, "getLanguageService()Lcom/narvii/language/ContentLanguageService;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/topic/adapter/PostListAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/topic/adapter/PostListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/topic/adapter/PostListAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/topic/adapter/PostListAdapter;->Companion:Lcom/narvii/topic/adapter/PostListAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/topic/adapter/PostListAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 53
    new-instance p2, Lcom/narvii/topic/adapter/PostListAdapter$inflater$2;

    invoke-direct {p2, p1}, Lcom/narvii/topic/adapter/PostListAdapter$inflater$2;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter;->inflater$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p2, Lcom/narvii/topic/adapter/PostListAdapter$proxyAdapter$2;

    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/PostListAdapter$proxyAdapter$2;-><init>(Lcom/narvii/topic/adapter/PostListAdapter;Lcom/narvii/app/NVContext;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter;->proxyAdapter$delegate:Lkotlin/Lazy;

    .line 55
    new-instance p1, Lcom/narvii/topic/adapter/PostListAdapter$languageService$2;

    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/PostListAdapter$languageService$2;-><init>(Lcom/narvii/topic/adapter/PostListAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter;->languageService$delegate:Lkotlin/Lazy;

    .line 56
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-void
.end method

.method public static final synthetic access$getDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/PostListAdapter;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method public static final synthetic access$onSubviewClick(Lcom/narvii/topic/adapter/PostListAdapter;Landroid/view/View;Z)Z
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/PostListAdapter;Lcom/narvii/util/EventDispatcher;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method


# virtual methods
.method public allItemCount()I
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public geSubResponseSize()I
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public final getInflater()Landroid/view/LayoutInflater;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->inflater$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/PostListAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    :cond_0
    const-string v0, "result"

    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getItemType(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->languageService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/PostListAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    return-object v0
.end method

.method public final getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->proxyAdapter$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/PostListAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    return-object v0
.end method

.method public final getView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq p2, v1, :cond_8

    const/4 v4, 0x2

    if-eq p2, v4, :cond_6

    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    const/4 v4, 0x4

    if-eq p2, v4, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b049d

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f0905e1

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 145
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v3

    add-int/lit8 p2, p2, -0x5

    invoke-virtual {v3, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getLayout(I)I

    move-result p2

    invoke-virtual {v2, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object p1

    .line 143
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->showPageSataus()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "proxyAdapter.createError\u2026ew.GONE\n                }"

    .line 135
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/narvii/list/NVPagedAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->showPageSataus()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "proxyAdapter.createListE\u2026ew.GONE\n                }"

    .line 130
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 125
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->showPageSataus()Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v2, 0x0

    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "proxyAdapter.createLoadM\u2026ew.GONE\n                }"

    .line 124
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 120
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->showPageSataus()Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v2, 0x0

    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "proxyAdapter.createLoadi\u2026ew.GONE\n                }"

    .line 119
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object p2

    const v1, 0x1090003

    invoke-virtual {p2, v1, p1, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 112
    sget-boolean p2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p2, :cond_c

    const p2, 0x1020014

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_b

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "getItem() returns null"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_1
    const-string p2, "cell"

    .line 115
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public isEnd()Z
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->isSubRequestFinish()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    return v0
.end method

.method public isReadyToRequest()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 60
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->isReadyToRequest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/feed/BaseFeedListAdapter;->onAttach()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    instance-of v0, p1, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;

    invoke-virtual {p1, p2}, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->bindData(I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/topic/adapter/PostListAdapter;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;-><init>(Lcom/narvii/topic/adapter/PostListAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 152
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 156
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/feed/BaseFeedListAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 67
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 68
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object p2

    or-int/lit16 p1, p1, 0x200

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    return-void
.end method

.method public final showPageSataus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
