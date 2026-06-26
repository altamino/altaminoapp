.class public final Lcom/narvii/community/VisitorBarHost;
.super Lcom/narvii/widget/ProxyViewHost;
.source "VisitorBarHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisitorBarHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisitorBarHost.kt\ncom/narvii/community/VisitorBarHost\n*L\n1#1,111:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activity:Landroid/app/Activity;

.field private cid:I

.field private communityHelper:Lcom/narvii/master/CommunityHelper;

.field private final configService:Lcom/narvii/config/ConfigService;

.field private final joinLayout$delegate:Lkotlin/Lazy;

.field private final joinText$delegate:Lkotlin/Lazy;

.field private joining:Z

.field private final mainLayout$delegate:Lkotlin/Lazy;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/community/VisitorBarHost;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "joinLayout"

    const-string v4, "getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/community/VisitorBarHost;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "joinText"

    const-string v4, "getJoinText()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/community/VisitorBarHost;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mainLayout"

    const-string v4, "getMainLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/community/VisitorBarHost;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f09060c

    .line 27
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/community/VisitorBarHost;->joinLayout$delegate:Lkotlin/Lazy;

    const p2, 0x7f09060a

    .line 28
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/community/VisitorBarHost;->joinText$delegate:Lkotlin/Lazy;

    const p2, 0x7f090cb2

    .line 29
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/community/VisitorBarHost;->mainLayout$delegate:Lkotlin/Lazy;

    .line 31
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "Utils.getNVContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->nvContext:Lcom/narvii/app/NVContext;

    .line 32
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "config"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "nvContext.getService<ConfigService>(\"config\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->configService:Lcom/narvii/config/ConfigService;

    .line 37
    new-instance p1, Lcom/narvii/community/VisitorBarHost$receiver$1;

    invoke-direct {p1, p0}, Lcom/narvii/community/VisitorBarHost$receiver$1;-><init>(Lcom/narvii/community/VisitorBarHost;)V

    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 46
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    iget-object p2, p0, Lcom/narvii/community/VisitorBarHost;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->communityHelper:Lcom/narvii/master/CommunityHelper;

    .line 47
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iput p1, p0, Lcom/narvii/community/VisitorBarHost;->cid:I

    return-void
.end method

.method public static final synthetic access$getJoinLayout$p(Lcom/narvii/community/VisitorBarHost;)Lcom/narvii/widget/JoinCommunityProgressLayout;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendJoinRequest(Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->sendJoinRequest()V

    return-void
.end method

.method public static final synthetic access$updateBackground(Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->updateBackground()V

    return-void
.end method

.method public static final synthetic access$updateViews(Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->updateViews()V

    return-void
.end method

.method private final getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->joinLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/community/VisitorBarHost;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/JoinCommunityProgressLayout;

    return-object v0
.end method

.method private final getJoinText()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->joinText$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/community/VisitorBarHost;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getMainLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->mainLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/community/VisitorBarHost;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final sendJoinRequest()V
    .locals 5

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    .line 84
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->updateViews()V

    .line 85
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 86
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->communityHelper:Lcom/narvii/master/CommunityHelper;

    iget v1, p0, Lcom/narvii/community/VisitorBarHost;->cid:I

    new-instance v2, Lcom/narvii/community/VisitorBarHost$sendJoinRequest$1;

    invoke-direct {v2, p0}, Lcom/narvii/community/VisitorBarHost$sendJoinRequest$1;-><init>(Lcom/narvii/community/VisitorBarHost;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;Z)V

    return-void
.end method

.method private final updateBackground()V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getMainLayout()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/community/VisitorBarHost;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private final updateViews()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->updateBackground()V

    .line 95
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    invoke-virtual {v0, v1}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setCurPressed(Z)V

    .line 96
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getJoinText()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0f02cd

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0aa9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/VisitorBarHost;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/community/VisitorBarHost;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bind(Landroid/app/Activity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getCid()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/narvii/community/VisitorBarHost;->cid:I

    return v0
.end method

.method public final getCommunityHelper()Lcom/narvii/master/CommunityHelper;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->communityHelper:Lcom/narvii/master/CommunityHelper;

    return-object v0
.end method

.method public final getConfigService()Lcom/narvii/config/ConfigService;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->configService:Lcom/narvii/config/ConfigService;

    return-object v0
.end method

.method public final getJoining()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    return v0
.end method

.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 52
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->getJoinLayout()Lcom/narvii/widget/JoinCommunityProgressLayout;

    move-result-object v0

    new-instance v1, Lcom/narvii/community/VisitorBarHost$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/narvii/community/VisitorBarHost$onFinishInflate$1;-><init>(Lcom/narvii/community/VisitorBarHost;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/narvii/community/VisitorBarHost;->updateViews()V

    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final setCid(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/narvii/community/VisitorBarHost;->cid:I

    return-void
.end method

.method public final setCommunityHelper(Lcom/narvii/master/CommunityHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->communityHelper:Lcom/narvii/master/CommunityHelper;

    return-void
.end method

.method public final setJoining(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/narvii/community/VisitorBarHost;->joining:Z

    return-void
.end method

.method public final setNvContext(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public start()V
    .locals 4

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/community/VisitorBarHost;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/community/VisitorBarHost;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final unbind()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/narvii/community/VisitorBarHost;->activity:Landroid/app/Activity;

    return-void
.end method
