.class public final Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;
.super Landroidx/compose/ui/input/pointer/PointerInputFilter;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputModifier;
.implements Landroidx/compose/ui/input/pointer/PointerInputScope;
.implements Landroidx/compose/ui/unit/Density;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;,
        Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuspendingPointerInputFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuspendingPointerInputFilter.kt\nandroidx/compose/ui/input/pointer/SuspendingPointerInputFilter\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 JvmActuals.jvm.kt\nandroidx/compose/ui/platform/JvmActuals_jvmKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 6 TempListUtils.kt\nandroidx/compose/ui/TempListUtilsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,640:1\n431#1:671\n432#1:673\n434#1,4:675\n439#1:690\n442#1,2:702\n441#1,4:704\n1182#2:641\n1161#2,2:642\n1182#2:644\n1161#2,2:645\n34#3:647\n34#3:672\n34#3:747\n146#4:648\n460#4,11:649\n492#4,11:660\n146#4:674\n460#4,11:679\n492#4,11:691\n728#4,2:748\n65#5,2:708\n32#5,6:710\n67#5:716\n65#5,2:717\n32#5,6:719\n67#5:725\n32#5,4:729\n37#5:736\n130#6,3:726\n133#6:733\n134#6:735\n135#6:737\n1#7:734\n314#8,9:738\n323#8,2:750\n*S KotlinDebug\n*F\n+ 1 SuspendingPointerInputFilter.kt\nandroidx/compose/ui/input/pointer/SuspendingPointerInputFilter\n*L\n454#1:671\n454#1:673\n454#1:675,4\n454#1:690\n454#1:702,2\n454#1:704,4\n375#1:641\n375#1:642,2\n383#1:644\n383#1:645,2\n431#1:647\n454#1:672\n512#1:747\n432#1:648\n437#1:649,11\n439#1:660,11\n454#1:674\n454#1:679,11\n454#1:691,11\n513#1:748,2\n471#1:708,2\n471#1:710,6\n471#1:716\n481#1:717,2\n481#1:719,6\n481#1:725\n484#1:729,4\n484#1:736\n484#1:726,3\n484#1:733\n484#1:735\n484#1:737\n484#1:734\n510#1:738,9\n510#1:750,2\n*E\n"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/ui/unit/Density;

.field private boundsSize:J

.field private coroutineScope:Lkotlinx/coroutines/o0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dispatchingPointerHandlers:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private interceptOutOfBoundsChildEvents:Z

.field private lastPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pointerHandlers:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ViewConfiguration;Landroidx/compose/ui/unit/Density;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/platform/ViewConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    .line 4
    invoke-static {}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 5
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 p2, 0x10

    new-array v0, p2, [Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->pointerHandlers:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array p2, p2, [Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;

    invoke-direct {p1, p2, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->dispatchingPointerHandlers:Landroidx/compose/runtime/collection/MutableVector;

    .line 7
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->boundsSize:J

    .line 8
    sget-object p1, Lkotlinx/coroutines/t1;->INSTANCE:Lkotlinx/coroutines/t1;

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->coroutineScope:Lkotlinx/coroutines/o0;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/platform/ViewConfiguration;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/internal/k;)V
    .locals 1

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0, p2, p4, p3}, Landroidx/compose/ui/unit/DensityKt;->b(FFILjava/lang/Object;)Landroidx/compose/ui/unit/Density;

    move-result-object p2

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;-><init>(Landroidx/compose/ui/platform/ViewConfiguration;Landroidx/compose/ui/unit/Density;)V

    return-void
.end method

.method public static final synthetic g0(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->boundsSize:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic l0(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)Landroidx/compose/ui/input/pointer/PointerEvent;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 3
    return-object p0
.end method

.method public static final synthetic r0(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->pointerHandlers:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    return-object p0
.end method

.method private final w0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->pointerHandlers:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->dispatchingPointerHandlers:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->pointerHandlers:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 11
    move-result v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->c(ILandroidx/compose/runtime/collection/MutableVector;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    monitor-exit v0

    .line 16
    .line 17
    :try_start_1
    sget-object v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v1

    .line 22
    .line 23
    aget v0, v0, v1

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    const/4 v2, 0x2

    .line 28
    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    const/4 v2, 0x3

    .line 31
    .line 32
    if-eq v0, v2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->dispatchingPointerHandlers:Landroidx/compose/runtime/collection/MutableVector;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 39
    move-result v2

    .line 40
    .line 41
    if-lez v2, :cond_4

    .line 42
    sub-int/2addr v2, v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    :cond_1
    aget-object v1, v0, v2

    .line 49
    .line 50
    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->I(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 54
    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    if-gez v2, :cond_1

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->dispatchingPointerHandlers:Landroidx/compose/runtime/collection/MutableVector;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 66
    move-result v1

    .line 67
    .line 68
    if-lez v1, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    const/4 v2, 0x0

    .line 74
    .line 75
    :cond_3
    aget-object v3, v0, v2

    .line 76
    .line 77
    check-cast v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->I(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    if-lt v2, v1, :cond_3

    .line 85
    .line 86
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->dispatchingPointerHandlers:Landroidx/compose/runtime/collection/MutableVector;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->h()V

    .line 90
    return-void

    .line 91
    .line 92
    :goto_1
    iget-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->dispatchingPointerHandlers:Landroidx/compose/runtime/collection/MutableVector;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->h()V

    .line 96
    throw p1

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    monitor-exit v0

    .line 99
    throw p1
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public B0()Landroidx/compose/ui/input/pointer/PointerInputFilter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public E0()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->E0()F

    move-result v0

    return v0
.end method

.method public H0(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    move-result p1

    return p1
.end method

.method public I()V
    .locals 25

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->lastPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    move v5, v4

    .line 18
    .line 19
    :goto_0
    if-ge v5, v3, :cond_3

    .line 20
    .line 21
    .line 22
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v6

    .line 24
    .line 25
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 29
    move-result v6

    .line 30
    .line 31
    xor-int/lit8 v6, v6, 0x1

    .line 32
    .line 33
    if-nez v6, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 43
    move-result v3

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    move-result v3

    .line 51
    .line 52
    :goto_1
    if-ge v4, v3, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 62
    move-result-wide v7

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 66
    move-result-wide v11

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->l()J

    .line 70
    move-result-wide v9

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 74
    move-result-wide v16

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->l()J

    .line 78
    move-result-wide v14

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 82
    move-result v18

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 86
    move-result v19

    .line 87
    .line 88
    new-instance v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 89
    move-object v6, v5

    .line 90
    const/4 v13, 0x0

    .line 91
    .line 92
    const/16 v20, 0x0

    .line 93
    .line 94
    const-wide/16 v21, 0x0

    .line 95
    .line 96
    const/16 v23, 0x300

    .line 97
    .line 98
    const/16 v24, 0x0

    .line 99
    .line 100
    .line 101
    invoke-direct/range {v6 .. v24}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJILkotlin/jvm/internal/k;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    add-int/lit8 v4, v4, 0x1

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_1
    new-instance v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v2}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;)V

    .line 113
    .line 114
    iput-object v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 115
    .line 116
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->w0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 120
    .line 121
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->w0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 125
    .line 126
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->w0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 130
    const/4 v1, 0x0

    .line 131
    .line 132
    iput-object v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->lastPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 133
    return-void

    .line 134
    .line 135
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 136
    goto :goto_0

    .line 137
    :cond_3
    return-void
.end method

.method public J(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 14
    .line 15
    new-instance v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;Lkotlin/coroutines/d;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->r0(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    move-result-object v2

    .line 23
    monitor-enter v2

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->r0(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1, v1}, Lkotlin/coroutines/f;->a(Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    sget-object v3, Lw7/v;->Companion:Lw7/v$a;

    .line 37
    .line 38
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v3}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v2

    .line 47
    .line 48
    new-instance p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$awaitPointerEventScope$2$2;

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$awaitPointerEventScope$2$2;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, p1}, Lkotlinx/coroutines/o;->S(Le8/l;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    if-ne p1, v0, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 68
    :cond_0
    return-object p1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit v2

    .line 71
    throw p1
.end method

.method public final J0(Lkotlinx/coroutines/o0;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->coroutineScope:Lkotlinx/coroutines/o0;

    return-void
.end method

.method public L0(J)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->L0(J)I

    move-result p1

    return p1
.end method

.method public P(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->P(F)F

    move-result p1

    return p1
.end method

.method public U(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 3
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerEventPass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "pointerEvent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "pass"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-wide p3, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->boundsSize:J

    .line 13
    .line 14
    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 15
    .line 16
    if-ne p2, p3, :cond_0

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->w0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 29
    move-result p3

    .line 30
    const/4 p4, 0x0

    .line 31
    move v0, p4

    .line 32
    :goto_0
    const/4 v1, 0x1

    .line 33
    .line 34
    if-ge v0, p3, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move p4, v1

    .line 52
    .line 53
    :goto_1
    xor-int/lit8 p2, p4, 0x1

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    const/4 p1, 0x0

    .line 58
    .line 59
    :goto_2
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->lastPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 60
    return-void
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public X(J)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->X(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    return v0
.end method

.method public getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    return-object v0
.end method

.method public i0()J
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->e()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->X(J)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->a()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 20
    move-result v4

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 24
    move-result v5

    .line 25
    int-to-float v5, v5

    .line 26
    sub-float/2addr v4, v5

    .line 27
    const/4 v5, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    .line 31
    move-result v4

    .line 32
    .line 33
    const/high16 v6, 0x40000000    # 2.0f

    .line 34
    div-float/2addr v4, v6

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 42
    move-result v1

    .line 43
    int-to-float v1, v1

    .line 44
    sub-float/2addr v0, v1

    .line 45
    .line 46
    .line 47
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    .line 48
    move-result v0

    .line 49
    div-float/2addr v0, v6

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v0}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 53
    move-result-wide v0

    .line 54
    return-wide v0
.end method

.method public j(I)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->j(I)F

    move-result p1

    return p1
.end method

.method public j0(F)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    move-result p1

    return p1
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->interceptOutOfBoundsChildEvents:Z

    return v0
.end method

.method public p0(J)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->p0(J)F

    move-result p1

    return p1
.end method

.method public q(J)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->q(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public s(J)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->s(J)F

    move-result p1

    return p1
.end method

.method public t0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->interceptOutOfBoundsChildEvents:Z

    return-void
.end method

.method public final y0()Lkotlinx/coroutines/o0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->coroutineScope:Lkotlinx/coroutines/o0;

    return-object v0
.end method
