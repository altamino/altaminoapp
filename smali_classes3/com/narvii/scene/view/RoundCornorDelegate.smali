.class public final Lcom/narvii/scene/view/RoundCornorDelegate;
.super Ljava/lang/Object;
.source "RoundCornorDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoundCornorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundCornorDelegate.kt\ncom/narvii/scene/view/RoundCornorDelegate\n*L\n1#1,34:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private context:Landroid/content/Context;

.field private cornerRadius:F

.field private final maskPaint$delegate:Lkotlin/Lazy;

.field private final roundRectF$delegate:Lkotlin/Lazy;

.field private view:Landroid/view/View;

.field private final zonePaint$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/scene/view/RoundCornorDelegate;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "roundRectF"

    const-string v5, "getRoundRectF()Landroid/graphics/RectF;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "maskPaint"

    const-string v5, "getMaskPaint()Landroid/graphics/Paint;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "zonePaint"

    const-string v4, "getZonePaint()Landroid/graphics/Paint;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/scene/view/RoundCornorDelegate;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->context:Landroid/content/Context;

    .line 9
    sget-object p1, Lcom/narvii/scene/view/RoundCornorDelegate$roundRectF$2;->INSTANCE:Lcom/narvii/scene/view/RoundCornorDelegate$roundRectF$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->roundRectF$delegate:Lkotlin/Lazy;

    .line 10
    sget-object p1, Lcom/narvii/scene/view/RoundCornorDelegate$maskPaint$2;->INSTANCE:Lcom/narvii/scene/view/RoundCornorDelegate$maskPaint$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->maskPaint$delegate:Lkotlin/Lazy;

    .line 11
    sget-object p1, Lcom/narvii/scene/view/RoundCornorDelegate$zonePaint$2;->INSTANCE:Lcom/narvii/scene/view/RoundCornorDelegate$zonePaint$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->zonePaint$delegate:Lkotlin/Lazy;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 12
    iput p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->cornerRadius:F

    .line 15
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getMaskPaint()Landroid/graphics/Paint;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 16
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getZonePaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getZonePaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private final getMaskPaint()Landroid/graphics/Paint;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->maskPaint$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/view/RoundCornorDelegate;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getRoundRectF()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->roundRectF$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/view/RoundCornorDelegate;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    return-object v0
.end method

.method private final getZonePaint()Landroid/graphics/Paint;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->zonePaint$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/view/RoundCornorDelegate;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public final canvasSetLayer(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getRoundRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getZonePaint()Landroid/graphics/Paint;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 31
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getRoundRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->cornerRadius:F

    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getZonePaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 32
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getRoundRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getMaskPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->view:Landroid/view/View;

    return-object v0
.end method

.method public final roundRectSet(II)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getRoundRectF()Landroid/graphics/RectF;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->context:Landroid/content/Context;

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->cornerRadius:F

    .line 22
    iget-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->view:Landroid/view/View;

    return-void
.end method
