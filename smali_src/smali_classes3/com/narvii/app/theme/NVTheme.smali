.class public final Lcom/narvii/app/theme/NVTheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/theme/NVTheme$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNVTheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NVTheme.kt\ncom/narvii/app/theme/NVTheme\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1855#2,2:99\n1855#2,2:101\n*S KotlinDebug\n*F\n+ 1 NVTheme.kt\ncom/narvii/app/theme/NVTheme\n*L\n85#1:99,2\n94#1:101,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/app/theme/NVTheme$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final THEME_DARK:I = 0x2

.field public static final THEME_LIGHT:I = 0x1

.field public static final THEME_NOT_SET:I


# instance fields
.field private final themeObserverList$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private themeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/app/theme/NVTheme$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/app/theme/NVTheme$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/app/theme/NVTheme$themeObserverList$2;->INSTANCE:Lcom/narvii/app/theme/NVTheme$themeObserverList$2;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/app/theme/NVTheme;->themeObserverList$delegate:Lw7/m;

    .line 12
    return-void
.end method

.method private final getThemeObserverList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/app/theme/NVThemeObserver;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/theme/NVTheme;->themeObserverList$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    return-object v0
.end method

.method private static synthetic getThemeValue$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addObserver(Lcom/narvii/app/theme/NVThemeObserver;)V
    .locals 4
    .param p1    # Lcom/narvii/app/theme/NVThemeObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "observer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    instance-of v0, p1, Landroid/view/View;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    move-object v0, p1

    .line 28
    .line 29
    check-cast v0, Landroid/view/View;

    .line 30
    .line 31
    sget v1, Lcom/narvii/lib/R$id;->_theme_tag:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    instance-of v3, v2, Lcom/narvii/app/theme/NVTheme;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    check-cast v2, Lcom/narvii/app/theme/NVTheme;

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    .line 45
    :goto_0
    if-eqz v2, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-static {v2, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    return-void

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v2, p1}, Lcom/narvii/app/theme/NVTheme;->removeObserver(Lcom/narvii/app/theme/NVThemeObserver;)V

    .line 56
    .line 57
    :cond_2
    iget v2, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    .line 66
    :cond_3
    iget v0, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v0}, Lcom/narvii/app/theme/NVThemeObserver;->onThemeChange(I)V

    .line 72
    :cond_4
    return-void
.end method

.method public final getThemeValue()I
    .locals 1

    iget v0, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    return v0
.end method

.method public final notifyThemeChanged()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/app/theme/NVThemeObserver;

    .line 23
    .line 24
    iget v2, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Lcom/narvii/app/theme/NVThemeObserver;->onThemeChange(I)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final removeAllObserver()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/app/theme/NVThemeObserver;

    .line 23
    .line 24
    instance-of v2, v1, Landroid/view/View;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast v1, Landroid/view/View;

    .line 29
    .line 30
    sget v2, Lcom/narvii/lib/R$id;->_theme_tag:I

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    return-void
.end method

.method public final removeObserver(Lcom/narvii/app/theme/NVThemeObserver;)V
    .locals 4
    .param p1    # Lcom/narvii/app/theme/NVThemeObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "observer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/app/theme/NVTheme;->getThemeObserverList()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    instance-of v0, p1, Landroid/view/View;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Landroid/view/View;

    .line 19
    .line 20
    sget v0, Lcom/narvii/lib/R$id;->_theme_tag:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    instance-of v2, v1, Lcom/narvii/app/theme/NVTheme;

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/app/theme/NVTheme;

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v1, v3

    .line 34
    .line 35
    :goto_0
    if-eqz v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {v1, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 45
    :cond_1
    return-void
.end method

.method public final setThemeValue(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/app/theme/NVTheme;->themeValue:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVTheme;->notifyThemeChanged()V

    .line 11
    return-void
.end method
