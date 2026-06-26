.class public abstract Lcom/narvii/community/AggregationBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "AggregationBaseFragment.kt"

# interfaces
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;,
        Lcom/narvii/community/AggregationBaseFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAggregationBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregationBaseFragment.kt\ncom/narvii/community/AggregationBaseFragment\n*L\n1#1,377:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/community/AggregationBaseFragment$Companion;

.field private static final REFRESH_COMMUNITY_LIST_DURATION:J

.field private static final REMINDER_CHECK_DURATION:J


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private communityListAdapter:Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

.field private final fragments:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation
.end field

.field public myCommunityService:Lcom/narvii/community/MyCommunityListService;

.field private final otherFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation
.end field

.field private selectedNdcId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/narvii/community/AggregationBaseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/community/AggregationBaseFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/community/AggregationBaseFragment;->Companion:Lcom/narvii/community/AggregationBaseFragment$Companion;

    .line 35
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const v1, 0xea60

    const v2, 0x493e0

    if-eqz v0, :cond_0

    const v0, 0xea60

    goto :goto_0

    :cond_0
    const v0, 0x493e0

    :goto_0
    int-to-long v3, v0

    sput-wide v3, Lcom/narvii/community/AggregationBaseFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 36
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x493e0

    :goto_1
    int-to-long v0, v1

    sput-wide v0, Lcom/narvii/community/AggregationBaseFragment;->REMINDER_CHECK_DURATION:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/high16 v0, -0x80000000

    .line 41
    iput v0, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    .line 42
    new-instance v0, Lcom/narvii/community/AggregationBaseFragment$fragments$1;

    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getLRUMaxSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/community/AggregationBaseFragment$fragments$1;-><init>(Lcom/narvii/community/AggregationBaseFragment;I)V

    iput-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->otherFragments:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getREFRESH_COMMUNITY_LIST_DURATION$cp()J
    .locals 2

    .line 32
    sget-wide v0, Lcom/narvii/community/AggregationBaseFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    return-wide v0
.end method

.method public static final synthetic access$getREMINDER_CHECK_DURATION$cp()J
    .locals 2

    .line 32
    sget-wide v0, Lcom/narvii/community/AggregationBaseFragment;->REMINDER_CHECK_DURATION:J

    return-wide v0
.end method

.method public static final synthetic access$removeCommunityFragment(Lcom/narvii/community/AggregationBaseFragment;Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->removeCommunityFragment(Lcom/narvii/app/NVFragment;)V

    return-void
.end method

.method private final removeCommunityFragment(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private final removeUnusedFragment()V
    .locals 7

    .line 93
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    const/4 v1, 0x0

    const-string v2, "myCommunityService"

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v3, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    const-string v4, "fragments.snapshot()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/app/NVFragment;

    if-nez v5, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/narvii/community/AggregationBaseFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 108
    iget v3, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 109
    new-instance v2, Lcom/narvii/community/AggregationBaseFragment$removeUnusedFragment$1;

    invoke-direct {v2, p0}, Lcom/narvii/community/AggregationBaseFragment$removeUnusedFragment$1;-><init>(Lcom/narvii/community/AggregationBaseFragment;)V

    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 114
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_7

    .line 116
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    :cond_7
    iget-object v3, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 121
    :cond_8
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_9
    return-void

    .line 93
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/community/AggregationBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public addReminderRequest(ZLcom/narvii/model/Community;Lcom/narvii/community/ReminderCheck;)V
    .locals 0

    return-void
.end method

.method public abstract createNewFragment(I)Lcom/narvii/app/NVFragment;
.end method

.method public abstract getBadgeCount(Lcom/narvii/model/Community;)I
.end method

.method public getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->communityListAdapter:Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    return-object v0
.end method

.method public abstract getFallbackIndexWhenCurrentLeave(I)I
.end method

.method public abstract getFragmentArguments(ILcom/narvii/model/Community;)Landroid/os/Bundle;
.end method

.method public final getFragments()Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    return-object v0
.end method

.method public final getLRUMaxSize()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public abstract getLeftNavTopLayoutId()I
.end method

.method public final getMyCommunityService()Lcom/narvii/community/MyCommunityListService;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "myCommunityService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getOtherFragments()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->otherFragments:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getSelectedNdcId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    return v0
.end method

.method protected final getSimpleCommunity(Lcom/narvii/model/Community;)Lcom/narvii/model/Community;
    .locals 2

    if-eqz p1, :cond_0

    .line 207
    new-instance v0, Lcom/narvii/model/Community;

    invoke-direct {v0}, Lcom/narvii/model/Community;-><init>()V

    .line 208
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    iput v1, v0, Lcom/narvii/model/Community;->id:I

    .line 209
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 210
    iget-object v1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 211
    iget-object p1, p1, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "myCommunityList"

    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"myCommunityList\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/community/AggregationBaseFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0279

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 134
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 135
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->_$_clearFindViewByIdCache()V

    return-void

    :cond_0
    const-string v0, "myCommunityService"

    .line 134
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onItemSelected(I)V
    .locals 4

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/AggregationBaseFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v1

    .line 154
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 156
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "list[index]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/model/Community;

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "myCommunityService"

    .line 153
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final onItemSelected(ILcom/narvii/model/Community;)V
    .locals 4

    .line 164
    iget v0, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    if-nez p2, :cond_1

    const-string v0, "no community"

    .line 168
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 170
    :cond_1
    iput p1, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    .line 171
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->updateLeftNav()V

    .line 172
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-lez p1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVFragment;

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getOtherFragments()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVFragment;

    :goto_0
    if-nez v1, :cond_3

    .line 180
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->createNewFragment(I)Lcom/narvii/app/NVFragment;

    move-result-object v1

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/AggregationBaseFragment;->getFragmentArguments(ILcom/narvii/model/Community;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p2, 0x7f0902d7

    .line 182
    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    if-lez p1, :cond_4

    .line 186
    iget-object p2, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 188
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getOtherFragments()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 p1, 0x1

    .line 192
    invoke-virtual {v1, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 193
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string v2, "childFragmentManager"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 194
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, p1

    if-eqz v3, :cond_5

    const-string v3, "ff"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_5

    .line 195
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 196
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_5

    .line 197
    check-cast v2, Lcom/narvii/app/NVFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    goto :goto_2

    .line 201
    :cond_6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/narvii/community/AggregationBaseFragment;->removeUnusedFragment()V

    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    new-instance p1, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;-><init>(Lcom/narvii/community/AggregationBaseFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->setCommunityListAdapter(Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;)V

    .line 73
    sget p1, Lcom/narvii/amino/R$id;->community_list:I

    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const-string p2, "community_list"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object p1, p0, Lcom/narvii/community/AggregationBaseFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 75
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->onAttach()V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getLeftNavTopLayoutId()I

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getLeftNavTopLayoutId()I

    move-result p2

    sget v0, Lcom/narvii/amino/R$id;->left_nav_container:I

    invoke-virtual {p0, v0}, Lcom/narvii/community/AggregationBaseFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    sget p2, Lcom/narvii/amino/R$id;->left_nav_container:I

    invoke-virtual {p0, p2}, Lcom/narvii/community/AggregationBaseFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "myCommunityService"

    .line 74
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCommunityListAdapter(Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/community/AggregationBaseFragment;->communityListAdapter:Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    return-void
.end method

.method public final setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/narvii/community/AggregationBaseFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method public final setSelectedNdcId(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    return-void
.end method

.method public updateLeftNav()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
