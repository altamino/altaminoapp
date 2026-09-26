.class public final Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/WindowInsetsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsets.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsets.android.kt\nandroidx/compose/foundation/layout/WindowInsetsHolder$Companion\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,696:1\n76#2:697\n357#3,7:698\n1#4:705\n*S KotlinDebug\n*F\n+ 1 WindowInsets.android.kt\nandroidx/compose/foundation/layout/WindowInsetsHolder$Companion\n*L\n556#1:697\n574#1:698,7\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->e(Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->f(Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Landroid/view/View;)Landroidx/compose/foundation/layout/WindowInsetsHolder;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a()Ljava/util/WeakHashMap;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a()Ljava/util/WeakHashMap;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3, p1, v3}, Landroidx/compose/foundation/layout/WindowInsetsHolder;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/View;Lkotlin/jvm/internal/k;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    :goto_0
    check-cast v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :goto_1
    monitor-exit v0

    .line 33
    throw p1
.end method

.method private final e(Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p2, p3}, Landroidx/compose/foundation/layout/AndroidWindowInsets;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->j(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 11
    :cond_0
    return-object v0
.end method

.method private final f(Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->g(I)Landroidx/core/graphics/Insets;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    :cond_0
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 11
    .line 12
    :cond_1
    const-string p2, "windowInsets?.getInsetsI\u2026e) ?: AndroidXInsets.NONE"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p3}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;Ljava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method


# virtual methods
.method public final c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsetsHolder;
    .locals 2
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p2, -0x5173c916

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->d(Landroid/view/View;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v0, p2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1;-><init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroid/view/View;)V

    .line 26
    .line 27
    const/16 p2, 0x8

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 34
    return-object v0
.end method
