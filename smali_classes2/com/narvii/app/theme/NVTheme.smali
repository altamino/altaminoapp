.class public final Lcom/narvii/app/theme/NVTheme;
.super Ljava/lang/Object;
.source "NVTheme.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/theme/NVTheme$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNVTheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NVTheme.kt\ncom/narvii/app/theme/NVTheme\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1587#2,2:99\n1587#2,2:101\n*E\n*S KotlinDebug\n*F\n+ 1 NVTheme.kt\ncom/narvii/app/theme/NVTheme\n*L\n85#1,2:99\n94#1,2:101\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/app/theme/NVTheme$Companion;

.field public static final THEME_DARK:I = 0x2

.field public static final THEME_LIGHT:I = 0x1

.field public static final THEME_NOT_SET:I


# instance fields
.field private final themeObserverList$delegate:Lkotlin/Lazy;

.field private themeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/app/theme/NVTheme;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "themeObserverList"

    const-string v4, "getThemeObserverList()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/app/theme/NVTheme;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/app/theme/NVTheme$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/app/theme/NVTheme$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/narvii/app/theme/NVTheme$themeObserverList$2;->INSTANCE:Lcom/narvii/app/theme/NVTheme$themeObserverList$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/theme/NVTheme;->themeObserverList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getThemeObserverList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/app/theme/NVThemeObserver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/app/theme/NVTheme;->themeObserverList$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/app/theme/NVTheme;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static synthetic themeValue$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addObserver(Lcom/narvii/app/theme/NVThemeObserver;)V
    .locals 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 54
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 56
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->_theme_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/narvii/app/theme/NVTheme;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lcom/narvii/app/theme/NVTheme;

    if-eqz v1, :cond_2

    .line 58
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 61
    :cond_1
    invoke-virtual {v1, p1}, Lcom/narvii/app/theme/NVTheme;->removeObserver(Lcom/narvii/app/theme/NVThemeObserver;)V

    .line 63
    :cond_2
    sget v1, Lcom/narvii/lib/R$id;->_theme_tag:I

    iget v2, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    :cond_3
    iget v0, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    if-eqz v0, :cond_4

    .line 66
    invoke-interface {p1, v0}, Lcom/narvii/app/theme/NVThemeObserver;->onThemeChange(I)V

    :cond_4
    return-void
.end method

.method public final getThemeValue()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    return v0
.end method

.method public final notifyThemeChanged()V
    .locals 3

    .line 94
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/theme/NVThemeObserver;

    .line 95
    iget v2, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    invoke-interface {v1, v2}, Lcom/narvii/app/theme/NVThemeObserver;->onThemeChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeAllObserver()V
    .locals 4

    .line 85
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/theme/NVThemeObserver;

    .line 86
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 87
    check-cast v1, Landroid/view/View;

    sget v2, Lcom/narvii/lib/R$id;->_theme_tag:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final removeObserver(Lcom/narvii/app/theme/NVThemeObserver;)V
    .locals 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 75
    check-cast p1, Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->_theme_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/narvii/app/theme/NVTheme;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/narvii/app/theme/NVTheme;

    if-eqz v0, :cond_1

    .line 77
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget v0, Lcom/narvii/lib/R$id;->_theme_tag:I

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setThemeValue(I)V
    .locals 1

    .line 45
    iget v0, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 48
    :cond_0
    iput p1, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    .line 49
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVTheme;->notifyThemeChanged()V

    return-void
.end method
