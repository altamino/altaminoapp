.class public final Landroidx/window/layout/WindowInfoTracker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/WindowInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInfoTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInfoTracker.kt\nandroidx/window/layout/WindowInfoTracker$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static decorator:Landroidx/window/layout/WindowInfoTrackerDecorator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/window/layout/WindowInfoTracker$Companion;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/window/layout/WindowInfoTracker$Companion;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->$$INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion;

    .line 8
    .line 9
    const-class v0, Landroidx/window/layout/WindowInfoTracker;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v0, Landroidx/window/layout/EmptyDecorator;->INSTANCE:Landroidx/window/layout/EmptyDecorator;

    .line 22
    .line 23
    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->decorator:Landroidx/window/layout/WindowInfoTrackerDecorator;

    .line 24
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


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl;

    .line 8
    .line 9
    sget-object v1, Landroidx/window/layout/WindowMetricsCalculatorCompat;->INSTANCE:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowInfoTracker$Companion;->b(Landroid/content/Context;)Landroidx/window/layout/WindowBackend;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, p1}, Landroidx/window/layout/WindowInfoTrackerImpl;-><init>(Landroidx/window/layout/WindowMetricsCalculator;Landroidx/window/layout/WindowBackend;)V

    .line 17
    .line 18
    sget-object p1, Landroidx/window/layout/WindowInfoTracker$Companion;->decorator:Landroidx/window/layout/WindowInfoTrackerDecorator;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroidx/window/layout/WindowInfoTrackerDecorator;->a(Landroidx/window/layout/WindowInfoTracker;)Landroidx/window/layout/WindowInfoTracker;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final b(Landroid/content/Context;)Landroidx/window/layout/WindowBackend;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    :try_start_0
    sget-object v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->INSTANCE:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->m()Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v2, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v1}, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    move-object v0, v2

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :catchall_0
    sget-boolean v1, Landroidx/window/layout/WindowInfoTracker$Companion;->DEBUG:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Landroidx/window/layout/WindowInfoTracker$Companion;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "Failed to load WindowExtensions"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 36
    .line 37
    sget-object v0, Landroidx/window/layout/SidecarWindowBackend;->Companion:Landroidx/window/layout/SidecarWindowBackend$Companion;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroidx/window/layout/SidecarWindowBackend$Companion;->a(Landroid/content/Context;)Landroidx/window/layout/SidecarWindowBackend;

    .line 41
    move-result-object v0

    .line 42
    :cond_2
    return-object v0
.end method
