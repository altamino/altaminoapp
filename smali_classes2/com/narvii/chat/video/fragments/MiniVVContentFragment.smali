.class public final Lcom/narvii/chat/video/fragments/MiniVVContentFragment;
.super Lcom/narvii/app/NVFragment;
.source "MiniVVContentFragment.kt"

# interfaces
.implements Lcom/narvii/chat/video/events/LiveChannelChangeListener;
.implements Lcom/narvii/chat/video/events/MiniContentMuteStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMiniVVContentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MiniVVContentFragment.kt\ncom/narvii/chat/video/fragments/MiniVVContentFragment\n*L\n1#1,201:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final btnMute$delegate:Lkotlin/Lazy;

.field private isAllMuted:Z

.field private final rootView$delegate:Lkotlin/Lazy;

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private final tvMemberCount$delegate:Lkotlin/Lazy;

.field private final typeIndicator$delegate:Lkotlin/Lazy;

.field private final userAvatar1$delegate:Lkotlin/Lazy;

.field private final userAvatar2$delegate:Lkotlin/Lazy;

.field private final userAvatar3$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "tvMemberCount"

    const-string v4, "getTvMemberCount()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "btnMute"

    const-string v4, "getBtnMute()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "userAvatar1"

    const-string v4, "getUserAvatar1()Lcom/narvii/widget/UserAvatarLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "userAvatar2"

    const-string v4, "getUserAvatar2()Lcom/narvii/widget/UserAvatarLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "userAvatar3"

    const-string v4, "getUserAvatar3()Lcom/narvii/widget/UserAvatarLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "typeIndicator"

    const-string v4, "getTypeIndicator()Lcom/narvii/chat/video/view/VVIndicatorView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const v0, 0x7f09098b

    .line 45
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rootView$delegate:Lkotlin/Lazy;

    const v0, 0x7f0906dd

    .line 46
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->tvMemberCount$delegate:Lkotlin/Lazy;

    const v0, 0x7f09073c

    .line 47
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->btnMute$delegate:Lkotlin/Lazy;

    const v0, 0x7f0900e9

    .line 48
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar1$delegate:Lkotlin/Lazy;

    const v0, 0x7f0900ea

    .line 49
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar2$delegate:Lkotlin/Lazy;

    const v0, 0x7f0900eb

    .line 50
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar3$delegate:Lkotlin/Lazy;

    const v0, 0x7f090cee

    .line 51
    invoke-direct {p0, p0, v0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->typeIndicator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getRtcService$p(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method

.method public static final synthetic access$isAllMuted$p(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    return p0
.end method

.method public static final synthetic access$setAllMuted$p(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    return-void
.end method

.method public static final synthetic access$setRtcService$p(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-void
.end method

.method private final bind(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/chat/video/fragments/MiniVVContentFragment;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 120
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$bind$1;-><init>(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getBtnMute()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->btnMute$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getRootView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rootView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getTvMemberCount()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->tvMemberCount$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTypeIndicator()Lcom/narvii/chat/video/view/VVIndicatorView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->typeIndicator$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/view/VVIndicatorView;

    return-object v0
.end method

.method private final getUserAvatar1()Lcom/narvii/widget/UserAvatarLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar1$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method private final getUserAvatar2()Lcom/narvii/widget/UserAvatarLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar2$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method private final getUserAvatar3()Lcom/narvii/widget/UserAvatarLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->userAvatar3$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getLayoutBg()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 182
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070261

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const-wide v1, 0xff7ed321L

    long-to-int v2, v1

    .line 183
    invoke-static {v2, v0}, Lcom/narvii/util/ViewUtils;->getRadisDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-wide v2, 0xff63a719L

    long-to-int v3, v2

    .line 184
    invoke-static {v3, v0}, Lcom/narvii/util/ViewUtils;->getRadisDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    .line 187
    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 188
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v2

    .line 182
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getMuteCheckedBg()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 176
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 177
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const-string v2, "d.paint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v2, 0xffffffffL

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public final getMuteUnCheckedBg()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 170
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 171
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const-string v2, "d.paint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public final getThreadId()Ljava/lang/String;
    .locals 2

    const-string v0, "id"

    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringParam(\"id\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0

    const-string p2, "signallingChannel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 1

    const-string v0, "signallingChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    const-string p4, "signallingChannel"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "oList"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nList"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "rtc"

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 59
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/chat/rtc/RtcService;->muteStatusDispatcher:Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isAllMuted()Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b030b

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/chat/rtc/RtcService;->muteStatusDispatcher:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onMuteStatusChanged(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 194
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateAllMuteButton()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getBtnMute()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getMuteUnCheckedBg()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getLayoutBg()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getBtnMute()Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;-><init>(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateViews(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_0
    return-void
.end method

.method public final toggleAllMute()V
    .locals 2

    .line 156
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    :goto_0
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "MuteIcon"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 157
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    .line 158
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteAllRemoteStream(Z)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setIsAllMuted(Z)V

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateAllMuteButton()V

    return-void
.end method

.method public final updateAllMuteButton()V
    .locals 3

    .line 164
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getBtnMute()Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getMuteCheckedBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getMuteUnCheckedBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getBtnMute()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->isAllMuted:Z

    if-eqz v2, :cond_1

    const v2, 0x7f080566

    goto :goto_1

    :cond_1
    const v2, 0x7f080567

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateViews(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getTypeIndicator()Lcom/narvii/chat/video/view/VVIndicatorView;

    move-result-object v0

    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/VVIndicatorView;->setLiveChannelType(I)V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->getFilteredList()Ljava/util/List;

    move-result-object p1

    const-string v1, "channel.filteredList"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUserWithLatestAtFirst(Ljava/util/List;)V

    .line 144
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getTvMemberCount()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x7f0f0f0b

    const v4, 0x7f0f0f0c

    invoke-static {v1, v2, v3, v4}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar1()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar1()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    if-lez v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    iget-object v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    invoke-virtual {p1, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 147
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar2()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 148
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar2()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    iget-object v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    goto :goto_3

    :cond_4
    move-object v1, v4

    :goto_3
    invoke-virtual {p1, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 149
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar3()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v5, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 150
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->getUserAvatar3()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/signalling/ChannelUser;

    iget-object v4, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    :cond_6
    invoke-virtual {p1, v4}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 152
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->updateAllMuteButton()V

    return-void
.end method
