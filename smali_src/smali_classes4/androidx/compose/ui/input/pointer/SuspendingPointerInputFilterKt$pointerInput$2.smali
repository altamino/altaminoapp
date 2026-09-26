.class final Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuspendingPointerInputFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuspendingPointerInputFilter.kt\nandroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$2\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,640:1\n76#2:641\n76#2:642\n36#3:643\n1057#4,6:644\n*S KotlinDebug\n*F\n+ 1 SuspendingPointerInputFilter.kt\nandroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$2\n*L\n238#1:641\n239#1:642\n240#1:643\n240#1:644,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $block:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $key1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Le8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$2;->$key1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$2;->$block:Le8/p;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "$this$composed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p1, -0x3602df6f

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    check-cast p3, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 32
    .line 33
    .line 34
    const v0, 0x44faf204

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    if-ne v1, v0, :cond_1

    .line 56
    .line 57
    :cond_0
    new-instance v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p3, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;-><init>(Landroidx/compose/ui/platform/ViewConfiguration;Landroidx/compose/ui/unit/Density;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$2;->$key1:Ljava/lang/Object;

    .line 69
    .line 70
    iget-object p3, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$2;->$block:Le8/p;

    .line 71
    .line 72
    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 73
    .line 74
    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$2$2$1;

    .line 75
    const/4 v2, 0x0

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, p3, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$2$2$1;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;Le8/p;Lkotlin/coroutines/d;)V

    .line 79
    .line 80
    const/16 p3, 0x40

    .line 81
    .line 82
    .line 83
    invoke-static {v1, p1, v0, p2, p3}, Landroidx/compose/runtime/EffectsKt;->e(Ljava/lang/Object;Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 87
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
