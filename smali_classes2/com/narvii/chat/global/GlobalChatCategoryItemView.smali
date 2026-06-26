.class public final Lcom/narvii/chat/global/GlobalChatCategoryItemView;
.super Landroid/widget/LinearLayout;
.source "GlobalChatCategoryItemView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatCategoryItemView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatCategoryItemView.kt\ncom/narvii/chat/global/GlobalChatCategoryItemView\n*L\n1#1,230:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activity:Landroid/app/Activity;

.field private final categoryThreadLoadCallback:Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;

.field private final categoryTitle$delegate:Lkotlin/Lazy;

.field private final chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field private final communityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private final configService:Lcom/narvii/config/ConfigService;

.field private curCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

.field private curStartIndexForThread:I

.field private final filterHelper:Lcom/narvii/util/FilterHelper;

.field private final playlistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;"
        }
    .end annotation
.end field

.field private final presenter:Lcom/narvii/chat/global/GlobalChatCategoryPresenter;

.field private final showAllView$delegate:Lkotlin/Lazy;

.field private shownInAdapter:Lcom/narvii/list/NVAdapter;

.field private final threadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field

.field private final thread_1$delegate:Lkotlin/Lazy;

.field private final thread_2$delegate:Lkotlin/Lazy;

.field private final thread_3$delegate:Lkotlin/Lazy;

.field private final thread_4$delegate:Lkotlin/Lazy;

.field private final userInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/thread/OnlineUserInfoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "categoryTitle"

    const-string v4, "getCategoryTitle()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "showAllView"

    const-string v4, "getShowAllView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "thread_1"

    const-string v4, "getThread_1()Lcom/narvii/chat/hangout/HangoutItem;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "thread_2"

    const-string v4, "getThread_2()Lcom/narvii/chat/hangout/HangoutItem;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "thread_3"

    const-string v4, "getThread_3()Lcom/narvii/chat/hangout/HangoutItem;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "thread_4"

    const-string v4, "getThread_4()Lcom/narvii/chat/hangout/HangoutItem;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0901a9

    .line 36
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->categoryTitle$delegate:Lkotlin/Lazy;

    const p1, 0x7f090a45

    .line 37
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->showAllView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b6b

    .line 38
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_1$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b6c

    .line 39
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_2$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b6d

    .line 40
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_3$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b6e

    .line 41
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_4$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->playlistMap:Ljava/util/HashMap;

    .line 51
    new-instance p1, Lcom/narvii/chat/global/GlobalChatCategoryPresenter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/chat/global/GlobalChatCategoryPresenter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->presenter:Lcom/narvii/chat/global/GlobalChatCategoryPresenter;

    .line 52
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "Utils.getNVContext(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 53
    new-instance p1, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 54
    new-instance p1, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;

    const-class v0, Lcom/narvii/chat/global/CategoryThreadResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;-><init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->categoryThreadLoadCallback:Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;

    .line 72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "config"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Utils.getNVContext(context).getService(\"config\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->configService:Lcom/narvii/config/ConfigService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0901a9

    .line 36
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->categoryTitle$delegate:Lkotlin/Lazy;

    const p1, 0x7f090a45

    .line 37
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->showAllView$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b6b

    .line 38
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_1$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b6c

    .line 39
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_2$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b6d

    .line 40
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_3$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b6e

    .line 41
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_4$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->playlistMap:Ljava/util/HashMap;

    .line 51
    new-instance p1, Lcom/narvii/chat/global/GlobalChatCategoryPresenter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryPresenter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->presenter:Lcom/narvii/chat/global/GlobalChatCategoryPresenter;

    .line 52
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "Utils.getNVContext(context)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 53
    new-instance p1, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 54
    new-instance p1, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;

    const-class p2, Lcom/narvii/chat/global/CategoryThreadResponse;

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;-><init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->categoryThreadLoadCallback:Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;

    .line 72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "config"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Utils.getNVContext(context).getService(\"config\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->configService:Lcom/narvii/config/ConfigService;

    return-void
.end method

.method public static final synthetic access$getChatLaunchHelper$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)Lcom/narvii/chat/global/GlobalChatHelper;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    return-object p0
.end method

.method public static final synthetic access$getCommunityMap$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)Ljava/util/HashMap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getCurStartIndexForThread$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    return p0
.end method

.method public static final synthetic access$getShownInAdapter$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)Lcom/narvii/list/NVAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    return-object p0
.end method

.method public static final synthetic access$getThreadList$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$innerSetThreadCategory(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->innerSetThreadCategory(Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$setCurStartIndexForThread$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    return-void
.end method

.method public static final synthetic access$setShownInAdapter$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public static final synthetic access$showThreadSections(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->showThreadSections()V

    return-void
.end method

.method private final bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/chat/global/GlobalChatCategoryItemView;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 79
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/chat/global/GlobalChatCategoryItemView$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView$bind$1;-><init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getCategoryTitle()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->categoryTitle$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getShowAllView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->showAllView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getThread_1()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_1$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/hangout/HangoutItem;

    return-object v0
.end method

.method private final getThread_2()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_2$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/hangout/HangoutItem;

    return-object v0
.end method

.method private final getThread_3()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_3$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/hangout/HangoutItem;

    return-object v0
.end method

.method private final getThread_4()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_4$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/hangout/HangoutItem;

    return-object v0
.end method

.method private final innerSetThreadCategory(Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/global/GlobalThreadListWrapper;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 122
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getUserInfoInThread()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 123
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getPlaylistInThread()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 124
    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getThreadList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 125
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->filterHelper:Lcom/narvii/util/FilterHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getThreadList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 126
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_0

    .line 129
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    if-eqz v2, :cond_1

    .line 130
    iget v3, v2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;->userProfileCount:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 131
    :goto_1
    iget-object v4, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->filterHelper:Lcom/narvii/util/FilterHelper;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;->userProfileList:Ljava/util/List;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4, v2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 132
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-lez v3, :cond_0

    if-lez v2, :cond_0

    .line 134
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_5
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getShowAllView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x4

    if-le p2, v1, :cond_6

    goto :goto_4

    :cond_6
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->showThreadSections()V

    return-void
.end method

.method private final setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PlayList;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;)V

    .line 204
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    iget v1, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setCommunityInfo(Lcom/narvii/model/Community;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setOnlineUserList(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/thread/OnlineUserInfoInfo;)V

    .line 208
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, v1, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->categoryId:Ljava/lang/String;

    const-string v2, "collectionId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_1
    invoke-static {p1, v0}, Lcom/narvii/logging/LogUtils;->tagExtraMap(Landroid/view/View;Ljava/util/HashMap;)V

    .line 215
    new-instance v0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;

    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;-><init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final showThreadSections()V
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_1()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 150
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 152
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_1()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "threadList[curStartIndexForThread]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 155
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    sub-int/2addr v0, v2

    const/16 v2, 0x8

    const/4 v4, 0x4

    const-string v5, "threadList[++curStartIndexForThread]"

    const/4 v6, 0x1

    if-eq v0, v6, :cond_5

    const-string v7, "threadList[curStartIndexForThread + 1]"

    const/4 v8, 0x2

    if-eq v0, v8, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 194
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 195
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    goto/16 :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v4, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 184
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    goto/16 :goto_0

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 187
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v4, v8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "threadList[curStartIndexForThread + 2]"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 188
    iput v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 189
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    goto/16 :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v4, :cond_4

    .line 170
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 171
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 172
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    goto/16 :goto_0

    .line 174
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 175
    iput v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 176
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 177
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v4, :cond_6

    .line 158
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 159
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_6
    iput v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 163
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 164
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 165
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 199
    :goto_0
    iget v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f090a45

    if-nez v0, :cond_1

    goto :goto_2

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 94
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "SeeAll"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->subArea(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, v1, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->categoryId:Ljava/lang/String;

    const-string v2, "collectionId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 99
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/narvii/community/search/MasterThemeHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 100
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/chat/global/GlobalCategoryChatListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0901a9

    if-ne p1, v1, :cond_4

    const-string p1, "Title"

    goto :goto_1

    :cond_4
    const-string p1, "See ALl"

    :goto_1
    const-string v1, "Source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getCategoryTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getShowAllView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getShowAllView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0fe5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setShownInAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public final setThreadCategory(Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/global/GlobalThreadListWrapper;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/narvii/model/Community;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const-string v0, "threadCategoryWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->activity:Landroid/app/Activity;

    .line 110
    iget-object p3, p1, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    iput-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    .line 111
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 113
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 114
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    const/4 p3, 0x0

    .line 115
    iput p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 116
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getCategoryTitle()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getCategoryTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->innerSetThreadCategory(Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;)V

    return-void
.end method
