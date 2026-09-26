.class public abstract Lcom/narvii/community/AggregationBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;,
        Lcom/narvii/community/AggregationBaseFragment$Companion;
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

.field public static final Companion:Lcom/narvii/community/AggregationBaseFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REFRESH_COMMUNITY_LIST_DURATION:J

.field private static final REMINDER_CHECK_DURATION:J


# instance fields
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private communityListAdapter:Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fragments:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private leftBinding:Landroidx/viewbinding/ViewBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedNdcId:I


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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/community/AggregationBaseFragment;

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
    sput-object v0, Lcom/narvii/community/AggregationBaseFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/community/AggregationBaseFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/community/AggregationBaseFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/community/AggregationBaseFragment;->Companion:Lcom/narvii/community/AggregationBaseFragment$Companion;

    .line 32
    .line 33
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 34
    .line 35
    .line 36
    const v1, 0xea60

    .line 37
    .line 38
    .line 39
    const v2, 0x493e0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    move v3, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v3, v2

    .line 45
    :goto_0
    int-to-long v3, v3

    .line 46
    .line 47
    sput-wide v3, Lcom/narvii/community/AggregationBaseFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v1, v2

    .line 52
    :goto_1
    int-to-long v0, v1

    .line 53
    .line 54
    sput-wide v0, Lcom/narvii/community/AggregationBaseFragment;->REMINDER_CHECK_DURATION:J

    .line 55
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
    sget-object v0, Lcom/narvii/community/AggregationBaseFragment$binding$2;->INSTANCE:Lcom/narvii/community/AggregationBaseFragment$binding$2;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->binding$delegate:Lkotlin/properties/d;

    .line 12
    .line 13
    const/high16 v0, -0x80000000

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getLRUMaxSize()I

    .line 19
    move-result v0

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/community/AggregationBaseFragment$fragments$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/narvii/community/AggregationBaseFragment$fragments$1;-><init>(Lcom/narvii/community/AggregationBaseFragment;I)V

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->otherFragments:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public static final synthetic access$getREFRESH_COMMUNITY_LIST_DURATION$cp()J
    .locals 2

    sget-wide v0, Lcom/narvii/community/AggregationBaseFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    return-wide v0
.end method

.method public static final synthetic access$getREMINDER_CHECK_DURATION$cp()J
    .locals 2

    sget-wide v0, Lcom/narvii/community/AggregationBaseFragment;->REMINDER_CHECK_DURATION:J

    return-wide v0
.end method

.method public static final synthetic access$removeCommunityFragment(Lcom/narvii/community/AggregationBaseFragment;Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->removeCommunityFragment(Lcom/narvii/app/NVFragment;)V

    .line 4
    return-void
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/community/AggregationBaseFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 14
    return-object v0
.end method

.method public static synthetic n(Lcom/narvii/community/AggregationBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/community/AggregationBaseFragment;->removeUnusedFragment$lambda$1(Lcom/narvii/community/AggregationBaseFragment;)V

    return-void
.end method

.method private final removeCommunityFragment(Lcom/narvii/app/NVFragment;)V
    .locals 2

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
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 23
    :cond_0
    return-void
.end method

.method private final removeUnusedFragment()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "snapshot(...)"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    check-cast v2, Ljava/util/Map$Entry;

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    check-cast v3, Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 59
    .line 60
    if-nez v3, :cond_1

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v2

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    check-cast v2, Ljava/util/Collection;

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 86
    move-result v2

    .line 87
    .line 88
    if-nez v2, :cond_0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    const-string v2, "beginTransaction(...)"

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v2

    .line 114
    .line 115
    if-eqz v2, :cond_7

    .line 116
    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    check-cast v2, Ljava/lang/Integer;

    .line 122
    .line 123
    iget v3, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    .line 124
    .line 125
    if-nez v2, :cond_4

    .line 126
    goto :goto_3

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 130
    move-result v4

    .line 131
    .line 132
    if-ne v4, v3, :cond_5

    .line 133
    .line 134
    new-instance v2, Lcom/narvii/community/a;

    .line 135
    .line 136
    .line 137
    invoke-direct {v2, p0}, Lcom/narvii/community/a;-><init>(Lcom/narvii/community/AggregationBaseFragment;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 141
    goto :goto_2

    .line 142
    .line 143
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    check-cast v3, Lcom/narvii/app/NVFragment;

    .line 150
    .line 151
    if-eqz v3, :cond_6

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 155
    .line 156
    :cond_6
    iget-object v3, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    goto :goto_2

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 164
    :cond_8
    return-void
.end method

.method private static final removeUnusedFragment$lambda$1(Lcom/narvii/community/AggregationBaseFragment;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/community/AggregationBaseFragment;->getFallbackIndexWhenCurrentLeave(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public addReminderRequest(ZLcom/narvii/model/Community;Lcom/narvii/community/ReminderCheck;)V
    .locals 0
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/community/ReminderCheck;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public abstract createNewFragment(I)Lcom/narvii/app/NVFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getBadgeCount(Lcom/narvii/model/Community;)I
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final getBaseBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/AggregationBaseFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "<get-binding>(...)"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method public getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->communityListAdapter:Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    return-object v0
.end method

.method public abstract getFallbackIndexWhenCurrentLeave(I)I
.end method

.method public abstract getFragmentArguments(ILcom/narvii/model/Community;)Landroid/os/Bundle;
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    return-object v0
.end method

.method public final getLRUMaxSize()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public abstract getLeftBinding(Landroidx/viewbinding/ViewBinding;)V
    .param p1    # Landroidx/viewbinding/ViewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getLeftNavTopLayoutId()I
.end method

.method public final getMyCommunityService()Lcom/narvii/community/MyCommunityListService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "myCommunityService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment;->otherFragments:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getSelectedNdcId()I
    .locals 1

    iget v0, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    return v0
.end method

.method protected final getSimpleCommunity(Lcom/narvii/model/Community;)Lcom/narvii/model/Community;
    .locals 2
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance v0, Lcom/narvii/model/Community;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Lcom/narvii/model/Community;-><init>()V

    .line 8
    .line 9
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 10
    .line 11
    iput v1, v0, Lcom/narvii/model/Community;->id:I

    .line 12
    .line 13
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
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
    const-string p1, "myCommunityList"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "getService(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V

    .line 20
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0}, Lcom/narvii/community/AggregationBaseFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 11
    return-void
.end method

.method public final onItemSelected(I)V
    .locals 4

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v1

    .line 3
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/model/Community;

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    :goto_0
    return-void
.end method

.method public final onItemSelected(ILcom/narvii/model/Community;)V
    .locals 3
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    if-nez p2, :cond_1

    const-string v0, "no community"

    .line 7
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    .line 8
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->updateLeftNav()V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "beginTransaction(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_2

    iget-object v1, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVFragment;

    goto :goto_0

    .line 11
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

    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->createNewFragment(I)Lcom/narvii/app/NVFragment;

    move-result-object v1

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/AggregationBaseFragment;->getFragmentArguments(ILcom/narvii/model/Community;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p2, 0x7f0a03a4

    .line 14
    invoke-virtual {v0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_3
    if-lez p1, :cond_4

    iget-object p2, p0, Lcom/narvii/community/AggregationBaseFragment;->fragments:Landroid/util/LruCache;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getOtherFragments()Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x1

    .line 18
    invoke-virtual {v1, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 20
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_5

    .line 21
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 22
    instance-of v2, p2, Lcom/narvii/app/NVFragment;

    if-eqz v2, :cond_5

    .line 23
    check-cast p2, Lcom/narvii/app/NVFragment;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->m()V

    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/community/MyCommunityListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/narvii/community/AggregationBaseFragment;->removeUnusedFragment()V

    .line 13
    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    :cond_0
    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/master/CommunityListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getLeftNavTopLayoutId()I

    .line 12
    move-result p1

    .line 13
    .line 14
    new-instance p2, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0, p0}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;-><init>(Lcom/narvii/community/AggregationBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/narvii/community/AggregationBaseFragment;->setCommunityListAdapter(Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/community/AggregationBaseFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    iget-object p2, p2, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;->communityList:Lcom/narvii/widget/NVListView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->onAttach()V

    .line 50
    .line 51
    :cond_0
    if-eqz p1, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/community/AggregationBaseFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;->leftNavContainer:Landroid/widget/LinearLayout;

    .line 66
    const/4 v1, 0x0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    const v0, 0x7f0d004e

    .line 74
    .line 75
    if-ne p1, v0, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/community/AggregationBaseFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;->leftNavContainer:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v0, v1}, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    iput-object p1, p0, Lcom/narvii/community/AggregationBaseFragment;->leftBinding:Landroidx/viewbinding/ViewBinding;

    .line 96
    .line 97
    if-eqz p1, :cond_1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->getLeftBinding(Landroidx/viewbinding/ViewBinding;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/narvii/community/AggregationBaseFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;->leftNavContainer:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 110
    :cond_2
    return-void
.end method

.method public setCommunityListAdapter(Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/community/AggregationBaseFragment;->communityListAdapter:Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    return-void
.end method

.method public final setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V
    .locals 1
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/community/AggregationBaseFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method public final setSelectedNdcId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/community/AggregationBaseFragment;->selectedNdcId:I

    return-void
.end method

.method public updateLeftNav()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    :cond_0
    return-void
.end method
