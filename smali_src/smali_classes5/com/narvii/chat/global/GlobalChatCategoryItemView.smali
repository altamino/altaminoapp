.class public final Lcom/narvii/chat/global/GlobalChatCategoryItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatCategoryItemView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatCategoryItemView.kt\ncom/narvii/chat/global/GlobalChatCategoryItemView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n1#2:231\n*E\n"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final categoryThreadLoadCallback:Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final categoryTitle$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final communityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configService:Lcom/narvii/config/ConfigService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private curStartIndexForThread:I

.field private final filterHelper:Lcom/narvii/util/FilterHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final playlistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final presenter:Lcom/narvii/chat/global/GlobalChatCategoryPresenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final showAllView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shownInAdapter:Lcom/narvii/list/NVAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final threadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thread_1$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thread_2$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thread_3$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thread_4$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/thread/OnlineUserInfoInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0a025a

    .line 2
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->categoryTitle$delegate:Lw7/m;

    const p1, 0x7f0a0d0e

    .line 3
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->showAllView$delegate:Lw7/m;

    const p1, 0x7f0a0e70

    .line 4
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_1$delegate:Lw7/m;

    const p1, 0x7f0a0e71

    .line 5
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_2$delegate:Lw7/m;

    const p1, 0x7f0a0e72

    .line 6
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_3$delegate:Lw7/m;

    const p1, 0x7f0a0e73

    .line 7
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_4$delegate:Lw7/m;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->playlistMap:Ljava/util/HashMap;

    .line 12
    new-instance p1, Lcom/narvii/chat/global/GlobalChatCategoryPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/chat/global/GlobalChatCategoryPresenter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->presenter:Lcom/narvii/chat/global/GlobalChatCategoryPresenter;

    .line 13
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "getNVContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 14
    new-instance p1, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 15
    new-instance p1, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;

    const-class v0, Lcom/narvii/chat/global/CategoryThreadResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;-><init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->categoryThreadLoadCallback:Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "config"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->configService:Lcom/narvii/config/ConfigService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0a025a

    .line 18
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->categoryTitle$delegate:Lw7/m;

    const p1, 0x7f0a0d0e

    .line 19
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->showAllView$delegate:Lw7/m;

    const p1, 0x7f0a0e70

    .line 20
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_1$delegate:Lw7/m;

    const p1, 0x7f0a0e71

    .line 21
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_2$delegate:Lw7/m;

    const p1, 0x7f0a0e72

    .line 22
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_3$delegate:Lw7/m;

    const p1, 0x7f0a0e73

    .line 23
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_4$delegate:Lw7/m;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    .line 27
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->playlistMap:Ljava/util/HashMap;

    .line 28
    new-instance p1, Lcom/narvii/chat/global/GlobalChatCategoryPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryPresenter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->presenter:Lcom/narvii/chat/global/GlobalChatCategoryPresenter;

    .line 29
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "getNVContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 30
    new-instance p1, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 31
    new-instance p1, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;

    const-class p2, Lcom/narvii/chat/global/CategoryThreadResponse;

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;-><init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->categoryThreadLoadCallback:Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "config"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getService(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->configService:Lcom/narvii/config/ConfigService;

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/model/ChatThread;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread$lambda$9(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/model/ChatThread;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getThreadList$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$innerSetThreadCategory(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->innerSetThreadCategory(Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$setCurStartIndexForThread$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 3
    return-void
.end method

.method public static final synthetic access$showThreadSections(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->showThreadSections()V

    .line 4
    return-void
.end method

.method private final bind(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/chat/global/GlobalChatCategoryItemView;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/global/GlobalChatCategoryItemView$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView$bind$1;-><init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final getCategoryTitle()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->categoryTitle$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getShowAllView()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->showAllView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getThread_1()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_1$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/hangout/HangoutItem;

    .line 9
    return-object v0
.end method

.method private final getThread_2()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_2$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/hangout/HangoutItem;

    .line 9
    return-object v0
.end method

.method private final getThread_3()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_3$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/hangout/HangoutItem;

    .line 9
    return-object v0
.end method

.method private final getThread_4()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->thread_4$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/hangout/HangoutItem;

    .line 9
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getUserInfoInThread()Ljava/util/Map;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->playlistMap:Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getPlaylistInThread()Ljava/util/Map;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getThreadList()Ljava/util/List;

    .line 27
    move-result-object p2

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    if-eqz p2, :cond_5

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getThreadList()Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    new-instance p2, Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 67
    .line 68
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    check-cast v2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    iget v3, v2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;->userProfileCount:I

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move v3, v0

    .line 85
    .line 86
    :goto_1
    iget-object v4, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 87
    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, v2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;->userProfileList:Ljava/util/List;

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    const/4 v2, 0x0

    .line 93
    .line 94
    .line 95
    :goto_2
    invoke-virtual {v4, v2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 102
    move-result v2

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    move v2, v0

    .line 105
    .line 106
    :goto_3
    if-lez v3, :cond_0

    .line 107
    .line 108
    if-lez v2, :cond_0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_0

    .line 113
    .line 114
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getShowAllView()Landroid/view/View;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 127
    move-result p2

    .line 128
    const/4 v1, 0x4

    .line 129
    .line 130
    if-le p2, v1, :cond_6

    .line 131
    goto :goto_4

    .line 132
    .line 133
    :cond_6
    const/16 v0, 0x8

    .line 134
    .line 135
    .line 136
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->showThreadSections()V

    .line 140
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->playlistMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/PlayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->configService:Lcom/narvii/config/ConfigService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    .line 26
    .line 27
    iget v1, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/model/Community;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setCommunityInfo(Lcom/narvii/model/Community;)V

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setOnlineUserList(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/thread/OnlineUserInfoInfo;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 59
    .line 60
    new-instance v0, Ljava/util/HashMap;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const-string v2, "collectionId"

    .line 70
    .line 71
    iget-object v1, v1, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->categoryId:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {p1, v0}, Lcom/narvii/logging/LogUtils;->tagExtraMap(Landroid/view/View;Ljava/util/HashMap;)V

    .line 78
    .line 79
    new-instance v0, Lcom/narvii/chat/global/b;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/global/b;-><init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/model/ChatThread;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method private static final setChatThread$lambda$9(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/model/ChatThread;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$thread"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 20
    .line 21
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    .line 22
    .line 23
    iget v0, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    check-cast p2, Lcom/narvii/model/Community;

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatHelper;->launchChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/Community;)V

    .line 41
    :cond_1
    return-void
.end method

.method private final showThreadSections()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_1()Lcom/narvii/chat/hangout/HangoutItem;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_1()Lcom/narvii/chat/hangout/HangoutItem;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget v3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    const-string v3, "get(...)"

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v0

    .line 67
    .line 68
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 69
    sub-int/2addr v0, v2

    .line 70
    .line 71
    const/16 v2, 0x8

    .line 72
    const/4 v4, 0x4

    .line 73
    const/4 v5, 0x1

    .line 74
    .line 75
    if-eq v0, v5, :cond_5

    .line 76
    const/4 v6, 0x2

    .line 77
    .line 78
    if-eq v0, v6, :cond_3

    .line 79
    const/4 v2, 0x3

    .line 80
    .line 81
    if-eq v0, v2, :cond_1

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 88
    .line 89
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 90
    add-int/2addr v2, v5

    .line 91
    .line 92
    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 111
    .line 112
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 113
    add-int/2addr v2, v5

    .line 114
    .line 115
    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 134
    .line 135
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 136
    add-int/2addr v2, v5

    .line 137
    .line 138
    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 158
    move-result v0

    .line 159
    .line 160
    if-gt v0, v4, :cond_2

    .line 161
    .line 162
    .line 163
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 174
    .line 175
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 176
    add-int/2addr v2, v5

    .line 177
    .line 178
    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    .line 185
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 197
    .line 198
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 199
    add-int/2addr v2, v5

    .line 200
    .line 201
    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    move-result-object v1

    .line 206
    .line 207
    .line 208
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 211
    .line 212
    .line 213
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 222
    .line 223
    iget v4, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 224
    add-int/2addr v4, v5

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    move-result-object v2

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 234
    .line 235
    .line 236
    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    .line 240
    move-result-object v0

    .line 241
    .line 242
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 243
    .line 244
    iget v4, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 245
    add-int/2addr v4, v6

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    move-result-object v2

    .line 250
    .line 251
    .line 252
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 255
    .line 256
    .line 257
    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 258
    .line 259
    iput v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 260
    .line 261
    .line 262
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    .line 263
    move-result-object v0

    .line 264
    .line 265
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 266
    .line 267
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    move-result-object v1

    .line 272
    .line 273
    .line 274
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 277
    .line 278
    .line 279
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 287
    move-result v0

    .line 288
    .line 289
    if-gt v0, v4, :cond_4

    .line 290
    .line 291
    .line 292
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    .line 293
    move-result-object v0

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    .line 300
    move-result-object v0

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    .line 307
    move-result-object v0

    .line 308
    .line 309
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 310
    .line 311
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 312
    add-int/2addr v2, v5

    .line 313
    .line 314
    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    move-result-object v1

    .line 319
    .line 320
    .line 321
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 324
    .line 325
    .line 326
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    .line 331
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    .line 332
    move-result-object v0

    .line 333
    .line 334
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 335
    .line 336
    iget v4, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 337
    add-int/2addr v4, v5

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 341
    move-result-object v2

    .line 342
    .line 343
    .line 344
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 347
    .line 348
    .line 349
    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 350
    .line 351
    iput v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 352
    .line 353
    .line 354
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    .line 355
    move-result-object v0

    .line 356
    .line 357
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 358
    .line 359
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    move-result-object v1

    .line 364
    .line 365
    .line 366
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    .line 368
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 369
    .line 370
    .line 371
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 372
    .line 373
    .line 374
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    .line 375
    move-result-object v0

    .line 376
    .line 377
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 378
    .line 379
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 380
    add-int/2addr v2, v5

    .line 381
    .line 382
    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 386
    move-result-object v1

    .line 387
    .line 388
    .line 389
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .line 391
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 392
    .line 393
    .line 394
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 395
    goto :goto_0

    .line 396
    .line 397
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 401
    move-result v0

    .line 402
    .line 403
    if-gt v0, v4, :cond_6

    .line 404
    .line 405
    .line 406
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    .line 407
    move-result-object v0

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    .line 412
    .line 413
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    .line 414
    move-result-object v0

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .line 419
    .line 420
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    .line 421
    move-result-object v0

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 425
    goto :goto_0

    .line 426
    .line 427
    :cond_6
    iput v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 428
    .line 429
    .line 430
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_2()Lcom/narvii/chat/hangout/HangoutItem;

    .line 431
    move-result-object v0

    .line 432
    .line 433
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 434
    .line 435
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 439
    move-result-object v1

    .line 440
    .line 441
    .line 442
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    .line 444
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 445
    .line 446
    .line 447
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 448
    .line 449
    .line 450
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_3()Lcom/narvii/chat/hangout/HangoutItem;

    .line 451
    move-result-object v0

    .line 452
    .line 453
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 454
    .line 455
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 456
    add-int/2addr v2, v5

    .line 457
    .line 458
    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 462
    move-result-object v1

    .line 463
    .line 464
    .line 465
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    .line 467
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 468
    .line 469
    .line 470
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 471
    .line 472
    .line 473
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getThread_4()Lcom/narvii/chat/hangout/HangoutItem;

    .line 474
    move-result-object v0

    .line 475
    .line 476
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 477
    .line 478
    iget v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 479
    add-int/2addr v2, v5

    .line 480
    .line 481
    iput v2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 485
    move-result-object v1

    .line 486
    .line 487
    .line 488
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    .line 490
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 491
    .line 492
    .line 493
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V

    .line 494
    .line 495
    :goto_0
    iget v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 496
    add-int/2addr v0, v5

    .line 497
    .line 498
    iput v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 499
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    goto :goto_2

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a0d0e

    .line 23
    .line 24
    if-ne v0, v1, :cond_6

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    .line 27
    .line 28
    sget-object v1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "SeeAll"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->subArea(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    const-string v2, "collectionId"

    .line 45
    .line 46
    iget-object v1, v1, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->categoryId:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->activity:Landroid/app/Activity;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    new-instance v0, Lcom/narvii/community/search/MasterThemeHelper;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->activity:Landroid/app/Activity;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 75
    .line 76
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    const-class v2, Lcom/narvii/chat/global/GlobalCategoryChatListActivity;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 89
    move-result p1

    .line 90
    .line 91
    .line 92
    const v1, 0x7f0a025a

    .line 93
    .line 94
    if-ne p1, v1, :cond_4

    .line 95
    .line 96
    const-string p1, "Title"

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_4
    const-string p1, "See ALl"

    .line 100
    .line 101
    :goto_1
    const-string v1, "Source"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    .line 107
    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    const-string v1, "category"

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 125
    :cond_6
    :goto_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getCategoryTitle()Landroid/widget/TextView;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getShowAllView()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getShowAllView()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    const v1, 0x7f0a03c2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    const v2, 0x7f1210ef

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final setShownInAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 1
    .param p1    # Lcom/narvii/list/NVAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->shownInAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public final setThreadCategory(Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;Landroid/app/Activity;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/global/GlobalThreadListWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    const-string v0, "threadCategoryWrapper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "map"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->activity:Landroid/app/Activity;

    .line 13
    .line 14
    iget-object p3, p1, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    .line 17
    .line 18
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->threadList:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->communityMap:Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 27
    .line 28
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->userInfoMap:Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 32
    .line 33
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->playlistMap:Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 37
    const/4 p3, 0x0

    .line 38
    .line 39
    iput p3, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->curStartIndexForThread:I

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->getCategoryTitle()Landroid/widget/TextView;

    .line 43
    move-result-object p3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getCategoryTitle()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->innerSetThreadCategory(Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;)V

    .line 54
    return-void
.end method
