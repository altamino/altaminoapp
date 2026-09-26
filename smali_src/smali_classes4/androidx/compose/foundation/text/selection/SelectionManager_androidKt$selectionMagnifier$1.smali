.class final Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionManager_androidKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nSelectionManager.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionManager.android.kt\nandroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,67:1\n76#2:68\n25#3:69\n1057#4,6:70\n76#5:76\n102#5,2:77\n*S KotlinDebug\n*F\n+ 1 SelectionManager.android.kt\nandroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1\n*L\n47#1:68\n48#1:69\n48#1:70,6\n48#1:76\n48#1:77,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $manager:Landroidx/compose/foundation/text/selection/SelectionManager;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/MutableState;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1;->d(Landroidx/compose/runtime/MutableState;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic b(Landroidx/compose/runtime/MutableState;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1;->e(Landroidx/compose/runtime/MutableState;J)V

    .line 4
    return-void
.end method

.method private static final d(Landroidx/compose/runtime/MutableState;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;)J"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private static final e(Landroidx/compose/runtime/MutableState;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;J)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
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
    const p3, -0x721d4498

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 15
    move-result-object p3

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    check-cast p3, Landroidx/compose/ui/unit/Density;

    .line 22
    .line 23
    .line 24
    const v0, -0x1d58f75c

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    if-ne v0, v1, :cond_0

    .line 40
    .line 41
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 45
    move-result-wide v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x2

    .line 51
    const/4 v2, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 62
    .line 63
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 64
    .line 65
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1$1;

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/runtime/MutableState;)V

    .line 71
    .line 72
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1$2;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, p3, v0}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1$2;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->e(Landroidx/compose/ui/Modifier;Le8/a;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 83
    return-object p1
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
