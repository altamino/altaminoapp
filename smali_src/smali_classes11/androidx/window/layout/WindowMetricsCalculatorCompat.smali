.class public final Landroidx/window/layout/WindowMetricsCalculatorCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/WindowMetricsCalculator;


# static fields
.field public static final INSTANCE:Landroidx/window/layout/WindowMetricsCalculatorCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/window/layout/WindowMetricsCalculatorCompat;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->INSTANCE:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 8
    .line 9
    const-class v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "WindowMetricsCalculatorC\u2026at::class.java.simpleName"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    sput-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final f(Landroid/view/Display;)Landroid/view/DisplayCutout;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "android.view.DisplayInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 18
    .line 19
    new-array v3, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    const-string v4, "getDisplayInfo"

    .line 30
    .line 31
    new-array v5, v2, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    move-result-object v6

    .line 36
    .line 37
    aput-object v6, v5, v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 45
    .line 46
    new-array v4, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v0, v4, v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    const-string v1, "displayCutout"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Landroidx/window/layout/i;->a(Ljava/lang/Object;)Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Landroidx/window/layout/j;->a(Ljava/lang/Object;)Landroid/view/DisplayCutout;

    .line 78
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_7

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_0

    .line 82
    :catch_1
    move-exception p1

    .line 83
    goto :goto_1

    .line 84
    :catch_2
    move-exception p1

    .line 85
    goto :goto_2

    .line 86
    :catch_3
    move-exception p1

    .line 87
    goto :goto_3

    .line 88
    :catch_4
    move-exception p1

    .line 89
    goto :goto_4

    .line 90
    :catch_5
    move-exception p1

    .line 91
    goto :goto_5

    .line 92
    .line 93
    :goto_0
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    goto :goto_6

    .line 98
    .line 99
    :goto_1
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    goto :goto_6

    .line 104
    .line 105
    :goto_2
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    goto :goto_6

    .line 110
    .line 111
    :goto_3
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    goto :goto_6

    .line 116
    .line 117
    :goto_4
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    goto :goto_6

    .line 122
    .line 123
    :goto_5
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :cond_0
    :goto_6
    const/4 p1, 0x0

    .line 128
    :goto_7
    return-object p1
.end method

.method private final g(Landroid/content/Context;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "dimen"

    .line 7
    .line 8
    const-string v1, "android"

    .line 9
    .line 10
    const-string v2, "navigation_bar_height"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method private final i(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroidx/window/layout/WindowMetrics;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1e

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/window/layout/ActivityCompatHelperApi30;->INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi30;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/window/layout/ActivityCompatHelperApi30;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const/16 v1, 0x1d

    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->e(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    const/16 v1, 0x1c

    .line 30
    .line 31
    if-lt v0, v1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->d(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    const/16 v1, 0x18

    .line 39
    .line 40
    if-lt v0, v1, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->c(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->b(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    :goto_0
    new-instance v0, Landroidx/window/layout/WindowMetrics;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p1}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;)V

    .line 55
    return-object v0
.end method

.method public final b(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string v0, "defaultDisplay"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->h(Landroid/view/Display;)Landroid/graphics/Point;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 39
    .line 40
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 45
    :goto_1
    return-object v1
.end method

.method public final c(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 22
    .line 23
    sget-object v2, Landroidx/window/layout/ActivityCompatHelperApi24;->INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi24;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroidx/window/layout/ActivityCompatHelperApi24;->a(Landroid/app/Activity;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    const-string v2, "defaultDisplay"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->h(Landroid/view/Display;)Landroid/graphics/Point;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->g(Landroid/content/Context;)I

    .line 42
    move-result p1

    .line 43
    .line 44
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    add-int v3, v2, p1

    .line 47
    .line 48
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 49
    .line 50
    if-ne v3, v4, :cond_0

    .line 51
    add-int/2addr v2, p1

    .line 52
    .line 53
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 57
    .line 58
    add-int v3, v2, p1

    .line 59
    .line 60
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 61
    .line 62
    if-ne v3, v1, :cond_1

    .line 63
    add-int/2addr v2, p1

    .line 64
    .line 65
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 66
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final d(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection",
            "BlockedPrivateApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    :try_start_0
    const-class v3, Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    const-string/jumbo v4, "windowConfiguration"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    sget-object v3, Landroidx/window/layout/ActivityCompatHelperApi24;->INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi24;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p1}, Landroidx/window/layout/ActivityCompatHelperApi24;->a(Landroid/app/Activity;)Z

    .line 42
    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    const-string/jumbo v4, "null cannot be cast to non-null type android.graphics.Rect"

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    const-string v5, "getBounds"

    .line 54
    .line 55
    new-array v6, v2, [Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    new-array v5, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    check-cast v1, Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 73
    goto :goto_4

    .line 74
    :catch_0
    move-exception v1

    .line 75
    goto :goto_0

    .line 76
    :catch_1
    move-exception v1

    .line 77
    goto :goto_1

    .line 78
    :catch_2
    move-exception v1

    .line 79
    goto :goto_2

    .line 80
    :catch_3
    move-exception v1

    .line 81
    goto :goto_3

    .line 82
    .line 83
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 87
    throw v1

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    const-string v5, "getAppBounds"

    .line 94
    .line 95
    new-array v6, v2, [Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    new-array v5, v2, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    check-cast v1, Landroid/graphics/Rect;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    goto :goto_4

    .line 114
    .line 115
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 119
    throw v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .line 121
    :goto_0
    sget-object v3, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, p1, v0}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->i(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 128
    goto :goto_4

    .line 129
    .line 130
    :goto_1
    sget-object v3, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p1, v0}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->i(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 137
    goto :goto_4

    .line 138
    .line 139
    :goto_2
    sget-object v3, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, p1, v0}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->i(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 146
    goto :goto_4

    .line 147
    .line 148
    :goto_3
    sget-object v3, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1, v0}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->i(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 155
    .line 156
    .line 157
    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    .line 161
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    new-instance v3, Landroid/graphics/Point;

    .line 165
    .line 166
    .line 167
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 168
    .line 169
    sget-object v4, Landroidx/window/layout/DisplayCompatHelperApi17;->INSTANCE:Landroidx/window/layout/DisplayCompatHelperApi17;

    .line 170
    .line 171
    const-string v5, "currentDisplay"

    .line 172
    .line 173
    .line 174
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v1, v3}, Landroidx/window/layout/DisplayCompatHelperApi17;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 178
    .line 179
    sget-object v4, Landroidx/window/layout/ActivityCompatHelperApi24;->INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi24;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, p1}, Landroidx/window/layout/ActivityCompatHelperApi24;->a(Landroid/app/Activity;)Z

    .line 183
    move-result v5

    .line 184
    .line 185
    if-nez v5, :cond_5

    .line 186
    .line 187
    .line 188
    invoke-direct {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->g(Landroid/content/Context;)I

    .line 189
    move-result v5

    .line 190
    .line 191
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 192
    .line 193
    add-int v7, v6, v5

    .line 194
    .line 195
    iget v8, v3, Landroid/graphics/Point;->y:I

    .line 196
    .line 197
    if-ne v7, v8, :cond_3

    .line 198
    add-int/2addr v6, v5

    .line 199
    .line 200
    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 201
    goto :goto_5

    .line 202
    .line 203
    :cond_3
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 204
    .line 205
    add-int v7, v6, v5

    .line 206
    .line 207
    iget v8, v3, Landroid/graphics/Point;->x:I

    .line 208
    .line 209
    if-ne v7, v8, :cond_4

    .line 210
    add-int/2addr v6, v5

    .line 211
    .line 212
    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 213
    goto :goto_5

    .line 214
    .line 215
    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 216
    .line 217
    if-ne v6, v5, :cond_5

    .line 218
    .line 219
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 220
    .line 221
    .line 222
    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 223
    move-result v5

    .line 224
    .line 225
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 226
    .line 227
    if-lt v5, v6, :cond_6

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 231
    move-result v5

    .line 232
    .line 233
    iget v6, v3, Landroid/graphics/Point;->y:I

    .line 234
    .line 235
    if-ge v5, v6, :cond_a

    .line 236
    .line 237
    .line 238
    :cond_6
    invoke-virtual {v4, p1}, Landroidx/window/layout/ActivityCompatHelperApi24;->a(Landroid/app/Activity;)Z

    .line 239
    move-result p1

    .line 240
    .line 241
    if-nez p1, :cond_a

    .line 242
    .line 243
    .line 244
    invoke-direct {p0, v1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->f(Landroid/view/Display;)Landroid/view/DisplayCutout;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    if-eqz p1, :cond_a

    .line 248
    .line 249
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 250
    .line 251
    sget-object v4, Landroidx/window/layout/DisplayCompatHelperApi28;->INSTANCE:Landroidx/window/layout/DisplayCompatHelperApi28;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->b(Landroid/view/DisplayCutout;)I

    .line 255
    move-result v5

    .line 256
    .line 257
    if-ne v1, v5, :cond_7

    .line 258
    .line 259
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 260
    .line 261
    :cond_7
    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 262
    .line 263
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 264
    sub-int/2addr v1, v5

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->c(Landroid/view/DisplayCutout;)I

    .line 268
    move-result v5

    .line 269
    .line 270
    if-ne v1, v5, :cond_8

    .line 271
    .line 272
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->c(Landroid/view/DisplayCutout;)I

    .line 276
    move-result v5

    .line 277
    add-int/2addr v1, v5

    .line 278
    .line 279
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 280
    .line 281
    :cond_8
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->d(Landroid/view/DisplayCutout;)I

    .line 285
    move-result v5

    .line 286
    .line 287
    if-ne v1, v5, :cond_9

    .line 288
    .line 289
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 290
    .line 291
    :cond_9
    iget v1, v3, Landroid/graphics/Point;->y:I

    .line 292
    .line 293
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 294
    sub-int/2addr v1, v2

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->a(Landroid/view/DisplayCutout;)I

    .line 298
    move-result v2

    .line 299
    .line 300
    if-ne v1, v2, :cond_a

    .line 301
    .line 302
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->a(Landroid/view/DisplayCutout;)I

    .line 306
    move-result p1

    .line 307
    add-int/2addr v1, p1

    .line 308
    .line 309
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 310
    :cond_a
    return-object v0
.end method

.method public final e(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection",
            "BlockedPrivateApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    :try_start_0
    const-class v1, Landroid/content/res/Configuration;

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "windowConfiguration"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "getBounds"

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    new-array v4, v3, [Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    new-instance v2, Landroid/graphics/Rect;

    .line 46
    .line 47
    new-array v3, v3, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    check-cast v0, Landroid/graphics/Rect;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 59
    goto :goto_4

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :catch_2
    move-exception v0

    .line 65
    goto :goto_2

    .line 66
    :catch_3
    move-exception v0

    .line 67
    goto :goto_3

    .line 68
    .line 69
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 70
    .line 71
    .line 72
    const-string/jumbo v1, "null cannot be cast to non-null type android.graphics.Rect"

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    :goto_0
    sget-object v1, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->d(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 85
    move-result-object v2

    .line 86
    goto :goto_4

    .line 87
    .line 88
    :goto_1
    sget-object v1, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->d(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 95
    move-result-object v2

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :goto_2
    sget-object v1, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->d(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 105
    move-result-object v2

    .line 106
    goto :goto_4

    .line 107
    .line 108
    :goto_3
    sget-object v1, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->d(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 115
    move-result-object v2

    .line 116
    :goto_4
    return-object v2
.end method

.method public final h(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 2
    .param p1    # Landroid/view/Display;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "display"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Point;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 11
    .line 12
    sget-object v1, Landroidx/window/layout/DisplayCompatHelperApi17;->INSTANCE:Landroidx/window/layout/DisplayCompatHelperApi17;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, v0}, Landroidx/window/layout/DisplayCompatHelperApi17;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 16
    return-object v0
.end method
