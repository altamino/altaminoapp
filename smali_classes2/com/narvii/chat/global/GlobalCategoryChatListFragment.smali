.class public final Lcom/narvii/chat/global/GlobalCategoryChatListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GlobalCategoryChatListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/GlobalCategoryChatListFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalCategoryChatListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalCategoryChatListFragment.kt\ncom/narvii/chat/global/GlobalCategoryChatListFragment\n*L\n1#1,141:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private category:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

.field private languageService:Lcom/narvii/language/ContentLanguageService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCategory$p(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;)Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->category:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "category"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getLanguageService$p(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "languageService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setCategory$p(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->category:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    return-void
.end method

.method public static final synthetic access$setLanguageService$p(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method private final getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 117
    new-instance v0, Lcom/narvii/community/search/MasterThemeHelper;

    invoke-direct {v0, p0}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/community/search/MasterThemeHelper;->getDynamicThemeBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "MasterThemeHelper(this).dynamicThemeBg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 9

    .line 100
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 102
    new-instance v0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$Adapter;-><init>(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;Lcom/narvii/app/NVContext;)V

    .line 103
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v7

    .line 104
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p0

    move v5, v7

    invoke-direct/range {v3 .. v8}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    const/4 v2, 0x2

    .line 105
    invoke-virtual {v1, v0, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 107
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 108
    new-instance v2, Lcom/narvii/adapter/MarginAdapter;

    invoke-direct {v2, p0, v0}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 2

    const v0, 0x7f0f01dd

    .line 84
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.chat_\u2026egory_list_empty_message)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatsSubPage"

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "content_language"

    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"content_language\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    const-string v0, "category"

    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "JacksonUtils.readAs(getS\u2026readCategory::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    iput-object v1, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->category:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02a8

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09012c

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f09013c

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/mmin18/widget/RealtimeBlurView;

    const-string p3, "#3F000000"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 80
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->category:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->name:Ljava/lang/String;

    const-string v0, "category.name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.String).toUpperCase()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0909dc

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "searchContainer"

    .line 64
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 65
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance p2, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$onViewCreated$1;-><init>(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 65
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "category"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
