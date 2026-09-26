.class public final Lcom/narvii/master/widget/MasterBottomBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;
    }
.end annotation


# instance fields
.field private final chatConf:Lw7/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatUnreadConf:Lw7/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final communityConf:Lw7/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final communityView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private composePreClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final discoverConf:Lw7/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final discoverView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventLogProfileService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastPos:I

.field private final profileImage$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showLiveTooltipExpired:Z

.field private final storeBadgedConf:Lw7/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final storeConf:Lw7/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final storeView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tabSelectListener:Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private toolTipHelper:Lcom/narvii/util/ToolTipHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/narvii/master/widget/MasterBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p2, Lw7/z;

    const v0, 0x7f08042e

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f08036a

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1203ff

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 8
    invoke-direct {p2, v0, v1, v2}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->discoverConf:Lw7/z;

    .line 9
    new-instance p2, Lw7/z;

    const v0, 0x7f0804a9

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0804ab

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f12030a

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 13
    invoke-direct {p2, v0, v1, v2}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->communityConf:Lw7/z;

    .line 14
    new-instance p2, Lw7/z;

    const v0, 0x7f08048a

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f08048b

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f12028d

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 18
    invoke-direct {p2, v0, v1, v2}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->chatConf:Lw7/z;

    .line 19
    new-instance p2, Lw7/z;

    const v0, 0x7f080494

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f080495

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f121144

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 23
    invoke-direct {p2, v0, v1, v3}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->storeConf:Lw7/z;

    .line 24
    new-instance p2, Lw7/z;

    const v0, 0x7f080492

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f080493

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 27
    invoke-direct {p2, v0, v1, v3}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->storeBadgedConf:Lw7/z;

    .line 28
    new-instance p2, Lw7/z;

    const v0, 0x7f080488

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f080489

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 31
    invoke-direct {p2, v0, v1, v2}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->chatUnreadConf:Lw7/z;

    const p2, 0x7f0a0e1d

    .line 32
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->discoverView$delegate:Lw7/m;

    const p2, 0x7f0a0e1b

    .line 33
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->communityView$delegate:Lw7/m;

    const p2, 0x7f0a0e1a

    .line 34
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->chatView$delegate:Lw7/m;

    const p2, 0x7f0a0e26

    .line 35
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->storeView$delegate:Lw7/m;

    const p2, 0x7f0a0928

    .line 36
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->profileImage$delegate:Lw7/m;

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->lastPos:I

    .line 37
    new-instance p2, Lcom/narvii/master/widget/MasterBottomBar$eventLogProfileService$2;

    invoke-direct {p2, p1}, Lcom/narvii/master/widget/MasterBottomBar$eventLogProfileService$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->eventLogProfileService$delegate:Lw7/m;

    const p2, 0x7f0d0524

    .line 38
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    new-instance p1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {p1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/widget/MasterBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->configTabs$lambda$1(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->configTabs$lambda$3(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->configTabs$lambda$2(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V

    return-void
.end method

.method private final configTabs()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/master/widget/MasterBottomBar;->discoverConf:Lw7/z;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lw7/z;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/master/widget/a;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/narvii/master/widget/a;-><init>(Lcom/narvii/master/widget/MasterBottomBar;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/master/widget/MasterBottomBar;->communityConf:Lw7/z;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lw7/z;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/master/widget/b;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/narvii/master/widget/b;-><init>(Lcom/narvii/master/widget/MasterBottomBar;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getChatView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/master/widget/MasterBottomBar;->chatConf:Lw7/z;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lw7/z;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getChatView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    new-instance v1, Lcom/narvii/master/widget/c;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/narvii/master/widget/c;-><init>(Lcom/narvii/master/widget/MasterBottomBar;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getStoreView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/master/widget/MasterBottomBar;->storeConf:Lw7/z;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lw7/z;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getStoreView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    new-instance v1, Lcom/narvii/master/widget/d;

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/narvii/master/widget/d;-><init>(Lcom/narvii/master/widget/MasterBottomBar;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->checkGoLiveAndCommunityVisibility()V

    .line 92
    return-void
.end method

.method private static final configTabs$lambda$0(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "discover"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->sendEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p1, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToExplore()V

    .line 16
    .line 17
    iget-object p0, p0, Lcom/narvii/master/widget/MasterBottomBar;->tabSelectListener:Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;->onTabSelected(I)V

    .line 24
    :cond_0
    return-void
.end method

.method private static final configTabs$lambda$1(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "my-communities"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->sendEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p1, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToCommunity()V

    .line 16
    .line 17
    iget-object p0, p0, Lcom/narvii/master/widget/MasterBottomBar;->tabSelectListener:Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    const/4 p1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;->onTabSelected(I)V

    .line 24
    :cond_0
    return-void
.end method

.method private static final configTabs$lambda$2(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "chat-hub"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->sendEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p1, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToChat()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->isUserLoggedIn()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->openGlobalChats()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/narvii/master/widget/MasterBottomBar;->tabSelectListener:Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    const/4 p1, 0x2

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;->onTabSelected(I)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private static final configTabs$lambda$3(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "store"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->sendEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p1, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToNone()V

    .line 16
    .line 17
    iget-object p0, p0, Lcom/narvii/master/widget/MasterBottomBar;->tabSelectListener:Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    const/4 p1, 0x3

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;->onTabSelected(I)V

    .line 24
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->configTabs$lambda$0(Lcom/narvii/master/widget/MasterBottomBar;Landroid/view/View;)V

    return-void
.end method

.method private final getChatView()Lcom/narvii/master/widget/MasterBottomItemView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->chatView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/master/widget/MasterBottomItemView;

    .line 9
    return-object v0
.end method

.method private final getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->communityView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/master/widget/MasterBottomItemView;

    .line 9
    return-object v0
.end method

.method private final getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->discoverView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/master/widget/MasterBottomItemView;

    .line 9
    return-object v0
.end method

.method private final getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->eventLogProfileService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 9
    return-object v0
.end method

.method private final getProfileImage()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->profileImage$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 9
    return-object v0
.end method

.method private final getStoreView()Lcom/narvii/master/widget/MasterBottomItemView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->storeView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/master/widget/MasterBottomItemView;

    .line 9
    return-object v0
.end method

.method private final isUserLoggedIn()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "account"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method private final openGlobalChats()V
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/global/GlobalChatsFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/narvii/master/widget/MasterBottomBar;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 14
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

.method private final sendEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "statistics"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "getService(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 22
    .line 23
    const-string v1, "Nav Click Global"

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "global_nav_button"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 45
    return-void
.end method

.method private final setCommunityTabVisibility()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->resetShowCommunityTab()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->isUserLoggedIn()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    const/4 v1, 0x0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    const/16 v1, 0x8

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public final checkGoLiveAndCommunityVisibility()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->setCommunityTabVisibility()V

    .line 4
    return-void
.end method

.method public final getComposePreClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->composePreClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getItemViewByPos(I)Lcom/narvii/master/widget/MasterBottomItemView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getStoreView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getChatView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-ne p1, v0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 49
    move-result-object p1

    .line 50
    :goto_0
    return-object p1
.end method

.method public final getShowLiveTooltipExpired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->showLiveTooltipExpired:Z

    return v0
.end method

.method public final getTabSelectListener()Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->tabSelectListener:Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->configTabs()V

    .line 7
    return-void
.end method

.method public final removeStoreBadged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getStoreView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/master/widget/MasterBottomBar;->storeConf:Lw7/z;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lw7/z;)V

    .line 10
    return-void
.end method

.method public final sectionChange()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->lastPos:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    const/4 v1, 0x3

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v1, 0x4

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToNone()V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToNone()V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_2
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToChat()V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_3
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToCommunity()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_4
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToExplore()V

    .line 50
    :goto_0
    return-void
.end method

.method public final setComposePreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->composePreClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setShowLiveTooltipExpired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->showLiveTooltipExpired:Z

    return-void
.end method

.method public final setStoreBadged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getStoreView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/master/widget/MasterBottomBar;->storeBadgedConf:Lw7/z;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lw7/z;)V

    .line 10
    return-void
.end method

.method public final setTabSelectListener(Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;)V
    .locals 0
    .param p1    # Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->tabSelectListener:Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;

    return-void
.end method

.method public final setUnreadChatMessage(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getChatView()Lcom/narvii/master/widget/MasterBottomItemView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->chatUnreadConf:Lw7/z;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->chatConf:Lw7/z;

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lw7/z;)V

    .line 15
    return-void
.end method

.method public final updateTabBottomLayout(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->lastPos:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->getItemViewByPos(I)Lcom/narvii/master/widget/MasterBottomItemView;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/master/widget/MasterBottomItemView;->setItemSelected()V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/master/widget/MasterBottomBar;->getItemViewByPos(I)Lcom/narvii/master/widget/MasterBottomItemView;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/master/widget/MasterBottomItemView;->animationItemUnSelected()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->getItemViewByPos(I)Lcom/narvii/master/widget/MasterBottomItemView;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/master/widget/MasterBottomItemView;->animationItemSelected()V

    .line 34
    .line 35
    :cond_2
    :goto_0
    iput p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->lastPos:I

    .line 36
    return-void
.end method
