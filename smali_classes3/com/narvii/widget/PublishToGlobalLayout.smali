.class public final Lcom/narvii/widget/PublishToGlobalLayout;
.super Landroid/widget/LinearLayout;
.source "PublishToGlobalLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublishToGlobalLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublishToGlobalLayout.kt\ncom/narvii/widget/PublishToGlobalLayout\n*L\n1#1,33:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final checkPtg$delegate:Lkotlin/Lazy;

.field private switchOffColor:I

.field private switchOnColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/PublishToGlobalLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "checkPtg"

    const-string v4, "getCheckPtg()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/widget/PublishToGlobalLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/PublishToGlobalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/PublishToGlobalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f090223

    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/widget/PublishToGlobalLayout;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/PublishToGlobalLayout;->checkPtg$delegate:Lkotlin/Lazy;

    const p1, 0x7f0807c7

    .line 15
    iput p1, p0, Lcom/narvii/widget/PublishToGlobalLayout;->switchOnColor:I

    const p1, 0x7f0807c5

    .line 20
    iput p1, p0, Lcom/narvii/widget/PublishToGlobalLayout;->switchOffColor:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/PublishToGlobalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final bind(I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/widget/PublishToGlobalLayout$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/widget/PublishToGlobalLayout$bind$1;-><init>(Lcom/narvii/widget/PublishToGlobalLayout;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getCheckPtg()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/PublishToGlobalLayout;->checkPtg$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/PublishToGlobalLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/PublishToGlobalLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/PublishToGlobalLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/PublishToGlobalLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/PublishToGlobalLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/PublishToGlobalLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getSwitchOffColor()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/narvii/widget/PublishToGlobalLayout;->switchOffColor:I

    return v0
.end method

.method public final getSwitchOnColor()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/narvii/widget/PublishToGlobalLayout;->switchOnColor:I

    return v0
.end method

.method public final setPublishToGlobal(Z)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/narvii/widget/PublishToGlobalLayout;->getCheckPtg()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/widget/PublishToGlobalLayout;->switchOnColor:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/narvii/widget/PublishToGlobalLayout;->switchOffColor:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final setSwitchOffColor(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/narvii/widget/PublishToGlobalLayout;->switchOffColor:I

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final setSwitchOnColor(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/narvii/widget/PublishToGlobalLayout;->switchOnColor:I

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
