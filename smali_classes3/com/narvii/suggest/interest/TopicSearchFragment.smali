.class public final Lcom/narvii/suggest/interest/TopicSearchFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "TopicSearchFragment.kt"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;,
        Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;,
        Lcom/narvii/suggest/interest/TopicSearchFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicSearchFragment.kt\ncom/narvii/suggest/interest/TopicSearchFragment\n*L\n1#1,193:1\n*E\n"
.end annotation


# static fields
.field public static final CANCELED_TOPIC:Ljava/lang/String; = "canceled_topic"

.field public static final Companion:Lcom/narvii/suggest/interest/TopicSearchFragment$Companion;

.field public static final SELECTED_TOPIC:Ljava/lang/String; = "selected_topic"

.field public static final TOPIC_ID_LIST:Ljava/lang/String; = "topic_id_list"

.field public static final TOPIC_SEARCH_KEY:Ljava/lang/String; = "search_key"

.field public static final TOPIC_SEARCH_REQUEST_CODE:I = 0x65


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private canceledTopicIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field private searchBar:Lcom/narvii/widget/SearchBar;

.field private topicIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private topicRecyclerViewAdapter:Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/suggest/interest/TopicSearchFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/suggest/interest/TopicSearchFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/suggest/interest/TopicSearchFragment;->Companion:Lcom/narvii/suggest/interest/TopicSearchFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->canceledTopicIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$cancel(Lcom/narvii/suggest/interest/TopicSearchFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/suggest/interest/TopicSearchFragment;->cancel()V

    return-void
.end method

.method public static final synthetic access$getCanceledTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->canceledTopicIdList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getInstantSearchListener$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-object p0
.end method

.method public static final synthetic access$getTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->topicIdList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "topicIdList"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setCanceledTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->canceledTopicIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->topicIdList:Ljava/util/ArrayList;

    return-void
.end method

.method private final cancel()V
    .locals 3

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->canceledTopicIdList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "canceled_topic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 104
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 5

    .line 72
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 73
    new-instance v1, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;-><init>(Lcom/narvii/suggest/interest/TopicSearchFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->topicRecyclerViewAdapter:Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;

    .line 74
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object v2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->topicRecyclerViewAdapter:Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;

    const/4 v3, 0x0

    const-string v4, "topicRecyclerViewAdapter"

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/narvii/search/InstantSearchListener;->attachRecyclerAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 75
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->topicRecyclerViewAdapter:Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    return-object v0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/narvii/suggest/interest/TopicSearchFragment;->cancel()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "topic_id_list"

    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "JacksonUtils.readListAs(\u2026D_LIST), Int::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->topicIdList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "search_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0301

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/suggest/interest/TopicSearchFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "search_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v1, "activity!!"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 56
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActionBar;->hide()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 55
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 58
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 59
    invoke-static {p2}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    :cond_4
    const p2, 0x7f0909ca

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "view.findViewById(R.id.search_bar)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/widget/SearchBar;

    iput-object p2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 61
    iget-object p2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    const-string v1, "searchBar"

    if-eqz p2, :cond_9

    invoke-virtual {p2, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 62
    iget-object p2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-eqz p2, :cond_8

    const v2, 0x7f0909d0

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v2, Lcom/narvii/suggest/interest/TopicSearchFragment$onViewCreated$1;

    invoke-direct {v2, p0}, Lcom/narvii/suggest/interest/TopicSearchFragment$onViewCreated$1;-><init>(Lcom/narvii/suggest/interest/TopicSearchFragment;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_5
    iget-object p2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-eqz p2, :cond_7

    const v0, 0x7f0909e2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0f5b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 66
    :cond_6
    new-instance p2, Lcom/narvii/suggest/interest/TopicSearchFragment$onViewCreated$2;

    invoke-direct {p2, p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$onViewCreated$2;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0xc8

    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 65
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
