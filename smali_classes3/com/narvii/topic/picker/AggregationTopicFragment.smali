.class public final Lcom/narvii/topic/picker/AggregationTopicFragment;
.super Lcom/narvii/app/NVFragment;
.source "AggregationTopicFragment.kt"

# interfaces
.implements Lcom/narvii/language/LanguageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;,
        Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

.field public contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field private interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

.field private selectedInterestId:Ljava/lang/String;

.field private final topicFragments:Lcom/narvii/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/narvii/topic/picker/InterestSubTopicListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/narvii/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/narvii/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->topicFragments:Lcom/narvii/util/LruCache;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getBookmarkFragment()Lcom/narvii/topic/BookmarkedTopicListFragment;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    return-object v0
.end method

.method public final getContentLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "contentLanguageService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public final getInterestAdapter()Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "TopicsPicker"

    return-object v0
.end method

.method public final getSelectedInterestId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopicFragments()Lcom/narvii/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/narvii/topic/picker/InterestSubTopicListFragment;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->topicFragments:Lcom/narvii/util/LruCache;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f10d1

    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "content_language"

    .line 49
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"content_language\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 50
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/narvii/language/ContentLanguageService;->registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    return-void

    :cond_0
    const-string p1, "contentLanguageService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b027b

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->unRegisterLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    return-void

    :cond_0
    const-string v0, "contentLanguageService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onInterestSelected(Lcom/narvii/model/InterestData;)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 163
    iget-object v1, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 166
    iget-object v2, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->updateBookmarkSection()V

    if-nez p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    if-nez p1, :cond_5

    .line 174
    new-instance p1, Lcom/narvii/topic/BookmarkedTopicListFragment;

    invoke-direct {p1}, Lcom/narvii/topic/BookmarkedTopicListFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 175
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    goto :goto_1

    .line 178
    :cond_3
    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->topicFragments:Lcom/narvii/util/LruCache;

    iget-object v3, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVFragment;

    if-nez v2, :cond_4

    .line 180
    new-instance v2, Lcom/narvii/topic/picker/InterestSubTopicListFragment;

    invoke-direct {v2}, Lcom/narvii/topic/picker/InterestSubTopicListFragment;-><init>()V

    .line 181
    iget-object v3, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->topicFragments:Lcom/narvii/util/LruCache;

    iget-object v4, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/narvii/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 184
    iget-object p1, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    const-string v4, "key_interest_id"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object p1, v2

    .line 188
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 189
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "childFragmentManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const v3, 0x7f090bca

    if-eqz p1, :cond_6

    .line 190
    invoke-virtual {v2, v3, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_7
    :goto_2
    if-eqz p1, :cond_b

    .line 192
    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 193
    instance-of v1, p1, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_8

    .line 194
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 196
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 197
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_9

    const-string v4, "ff"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v4

    if-nez v4, :cond_9

    .line 198
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 199
    instance-of v4, v3, Lcom/narvii/app/NVFragment;

    if-eqz v4, :cond_9

    .line 200
    check-cast v3, Lcom/narvii/app/NVFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    goto :goto_3

    .line 204
    :cond_a
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void

    .line 192
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->resetList()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    sget p2, Lcom/narvii/amino/R$id;->book_mark_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance v0, Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$1;-><init>(Lcom/narvii/topic/picker/AggregationTopicFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget p2, Lcom/narvii/amino/R$id;->search:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$2;-><init>(Lcom/narvii/topic/picker/AggregationTopicFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance p2, Lcom/narvii/topic/BookmarkedTopicListFragment;

    invoke-direct {p2}, Lcom/narvii/topic/BookmarkedTopicListFragment;-><init>()V

    iput-object p2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 72
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    if-eqz v0, :cond_2

    const v1, 0x7f090bca

    invoke-virtual {p2, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 73
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 75
    invoke-virtual {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->updateBookmarkSection()V

    .line 76
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 77
    :cond_0
    new-instance p2, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    invoke-direct {p2, p0, p0}, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;-><init>(Lcom/narvii/topic/picker/AggregationTopicFragment;Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    .line 78
    sget p2, Lcom/narvii/amino/R$id;->interest_main_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/recycleview/NVRecyclerView;

    const-string v0, "view.interest_main_list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 79
    iget-object p2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 80
    :cond_1
    sget p2, Lcom/narvii/amino/R$id;->interest_main_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void

    .line 72
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setBookmarkFragment(Lcom/narvii/topic/BookmarkedTopicListFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    return-void
.end method

.method public final setContentLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setInterestAdapter(Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    return-void
.end method

.method public final setSelectedInterestId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    return-void
.end method

.method public final updateBookmarkSection()V
    .locals 4

    .line 158
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Lcom/narvii/amino/R$id;->book_mark_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v2, Lcom/narvii/amino/R$id;->interest_indicator:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
