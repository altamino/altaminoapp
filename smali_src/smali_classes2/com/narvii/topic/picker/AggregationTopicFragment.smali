.class public final Lcom/narvii/topic/picker/AggregationTopicFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/language/LanguageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;,
        Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field private interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedInterestId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private showFirstTopicAsSelected:Z

.field private final topicFragments:Lcom/narvii/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/narvii/topic/picker/InterestSubTopicListFragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/topic/picker/AggregationTopicFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/LruCache;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/util/LruCache;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->topicFragments:Lcom/narvii/util/LruCache;

    .line 13
    .line 14
    const-string v0, "account"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    sget-object v0, Lcom/narvii/topic/picker/AggregationTopicFragment$binding$2;->INSTANCE:Lcom/narvii/topic/picker/AggregationTopicFragment$binding$2;

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->binding$delegate:Lkotlin/properties/d;

    .line 31
    return-void
.end method

.method public static final synthetic access$buildTopicFragment(Lcom/narvii/topic/picker/AggregationTopicFragment;Lcom/narvii/topic/picker/InterestSubTopicListFragment;Ljava/lang/String;)Lcom/narvii/topic/picker/InterestSubTopicListFragment;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/picker/AggregationTopicFragment;->buildTopicFragment(Lcom/narvii/topic/picker/InterestSubTopicListFragment;Ljava/lang/String;)Lcom/narvii/topic/picker/InterestSubTopicListFragment;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$showSelectedTopicFragment(Lcom/narvii/topic/picker/AggregationTopicFragment;Lcom/narvii/topic/picker/InterestSubTopicListFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->showSelectedTopicFragment(Lcom/narvii/topic/picker/InterestSubTopicListFragment;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$updateBookmarkSection(Lcom/narvii/topic/picker/AggregationTopicFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->updateBookmarkSection()V

    .line 4
    return-void
.end method

.method private final buildTopicFragment(Lcom/narvii/topic/picker/InterestSubTopicListFragment;Ljava/lang/String;)Lcom/narvii/topic/picker/InterestSubTopicListFragment;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/topic/picker/InterestSubTopicListFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Lcom/narvii/topic/picker/InterestSubTopicListFragment;-><init>()V

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    const-string v1, "key_interest_id"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 21
    return-object p1
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/topic/picker/AggregationTopicFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;

    .line 14
    return-object v0
.end method

.method private final hideBookMarksIfNotLoggedIn()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->isUserLoggedIn()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;->bookMarkContainer:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;->bookMarkContainer:Landroid/widget/FrameLayout;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;->bookMarkContainer:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/topic/picker/a;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/topic/picker/a;-><init>(Lcom/narvii/topic/picker/AggregationTopicFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;->search:Lcom/narvii/amino/databinding/SearchLayoutBinding;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/amino/databinding/SearchLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    new-instance v1, Lcom/narvii/topic/picker/b;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/narvii/topic/picker/b;-><init>(Lcom/narvii/topic/picker/AggregationTopicFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :goto_0
    return-void
.end method

.method private static final hideBookMarksIfNotLoggedIn$lambda$2$lambda$0(Lcom/narvii/topic/picker/AggregationTopicFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->onInterestSelected(Lcom/narvii/model/InterestData;)V

    .line 11
    return-void
.end method

.method private static final hideBookMarksIfNotLoggedIn$lambda$2$lambda$1(Lcom/narvii/topic/picker/AggregationTopicFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-string v0, "Search"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 22
    .line 23
    const-class p1, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    const-string v0, "section_type"

    .line 30
    const/4 v1, 0x3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    .line 35
    const-string v0, "showKeyboard"

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method private final isUserLoggedIn()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public static synthetic n(Lcom/narvii/topic/picker/AggregationTopicFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->hideBookMarksIfNotLoggedIn$lambda$2$lambda$1(Lcom/narvii/topic/picker/AggregationTopicFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/topic/picker/AggregationTopicFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->hideBookMarksIfNotLoggedIn$lambda$2$lambda$0(Lcom/narvii/topic/picker/AggregationTopicFragment;Landroid/view/View;)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showBookMarksOrFirstTopic()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->isUserLoggedIn()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->showFirstTopicAsSelected:Z

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/narvii/topic/BookmarkedTopicListFragment;-><init>()V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const v2, 0x7f0a0ee7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->m()V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->showFirstTopicAsSelected:Z

    .line 44
    :goto_0
    return-void
.end method

.method private final showSelectedTopicFragment(Lcom/narvii/topic/picker/InterestSubTopicListFragment;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "beginTransaction(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a0ee7

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v2

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 65
    .line 66
    .line 67
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-nez v3, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 74
    move-result v3

    .line 75
    .line 76
    if-nez v3, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 80
    .line 81
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    .line 82
    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 86
    const/4 v3, 0x0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->m()V

    .line 94
    return-void
.end method

.method private final updateBookmarkSection()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;->bookMarkContainer:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    const v3, 0x7f06002d

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;->interestIndicator:Landroid/view/View;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v2, 0x4

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getBookmarkFragment()Lcom/narvii/topic/BookmarkedTopicListFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    return-object v0
.end method

.method public final getContentLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "contentLanguageService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public final getInterestAdapter()Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "topics_picker"

    return-object v0
.end method

.method public final getSelectedInterestId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->topicFragments:Lcom/narvii/util/LruCache;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget-object p1, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToNone()V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f1211dd

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 15
    .line 16
    const-string p1, "content_language"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string v0, "getService(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->setContentLanguageService(Lcom/narvii/language/ContentLanguageService;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getContentLanguageService()Lcom/narvii/language/ContentLanguageService;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/narvii/language/ContentLanguageService;->registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;->getRoot()Landroid/widget/FrameLayout;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string p2, "getRoot(...)"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getContentLanguageService()Lcom/narvii/language/ContentLanguageService;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->unRegisterLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 11
    return-void
.end method

.method public final onInterestSelected(Lcom/narvii/model/InterestData;)V
    .locals 4
    .param p1    # Lcom/narvii/model/InterestData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-ne v1, v0, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v1, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    .line 24
    :goto_0
    iput-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->updateBookmarkSection()V

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 39
    .line 40
    if-nez p1, :cond_5

    .line 41
    .line 42
    new-instance p1, Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1}, Lcom/narvii/topic/BookmarkedTopicListFragment;-><init>()V

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_3
    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->topicFragments:Lcom/narvii/util/LruCache;

    .line 51
    .line 52
    iget-object v2, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/narvii/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    new-instance v1, Lcom/narvii/topic/picker/InterestSubTopicListFragment;

    .line 63
    .line 64
    .line 65
    invoke-direct {v1}, Lcom/narvii/topic/picker/InterestSubTopicListFragment;-><init>()V

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->topicFragments:Lcom/narvii/util/LruCache;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    const-string v3, "key_interest_id"

    .line 80
    .line 81
    iget-object p1, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    move-object p1, v1

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    const-string v2, "beginTransaction(...)"

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 113
    move-result v2

    .line 114
    .line 115
    if-nez v2, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const v2, 0x7f0a0ee7

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 125
    .line 126
    .line 127
    :cond_6
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    move-result v2

    .line 150
    .line 151
    if-eqz v2, :cond_8

    .line 152
    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 158
    .line 159
    .line 160
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    move-result v3

    .line 162
    .line 163
    if-nez v3, :cond_7

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 167
    move-result v3

    .line 168
    .line 169
    if-nez v3, :cond_7

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 173
    .line 174
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    .line 175
    .line 176
    if-eqz v3, :cond_7

    .line 177
    .line 178
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 179
    const/4 v3, 0x0

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 183
    goto :goto_2

    .line 184
    .line 185
    .line 186
    :cond_8
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->m()V

    .line 187
    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->resetList()V

    .line 8
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->hideBookMarksIfNotLoggedIn()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->showBookMarksOrFirstTopic()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->updateBookmarkSection()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 28
    .line 29
    :cond_0
    new-instance p1, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->showFirstTopicAsSelected:Z

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0, p0, p2}, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;-><init>(Lcom/narvii/topic/picker/AggregationTopicFragment;Lcom/narvii/app/NVContext;Z)V

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;->interestMainList:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;->interestMainList:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 61
    .line 62
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x1

    .line 68
    const/4 v2, 0x0

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    return-void
.end method

.method public final setBookmarkFragment(Lcom/narvii/topic/BookmarkedTopicListFragment;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/BookmarkedTopicListFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->bookmarkFragment:Lcom/narvii/topic/BookmarkedTopicListFragment;

    return-void
.end method

.method public final setContentLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1
    .param p1    # Lcom/narvii/language/ContentLanguageService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setInterestAdapter(Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->interestAdapter:Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;

    return-void
.end method

.method public final setSelectedInterestId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment;->selectedInterestId:Ljava/lang/String;

    return-void
.end method
