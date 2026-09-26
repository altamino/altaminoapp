.class public final Landroidx/compose/runtime/Recomposer;
.super Landroidx/compose/runtime/CompositionContext;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Recomposer$State;,
        Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;,
        Landroidx/compose/runtime/Recomposer$HotReloadable;,
        Landroidx/compose/runtime/Recomposer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 7 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 8 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,1200:1\n942#1,5:1249\n948#1:1259\n947#1:1260\n942#1,5:1273\n948#1:1283\n947#1:1284\n942#1,5:1305\n948#1:1327\n947#1:1328\n66#2:1201\n66#2:1232\n66#2:1234\n66#2:1244\n66#2:1247\n66#2:1248\n66#2:1261\n66#2:1262\n66#2:1313\n66#2:1329\n66#2:1352\n66#2:1353\n66#2:1354\n66#2:1355\n66#2:1356\n66#2:1357\n66#2:1358\n66#2:1359\n66#2:1360\n1224#3,2:1202\n32#4,4:1204\n32#4,6:1208\n37#4:1214\n32#4,4:1215\n32#4,6:1219\n37#4:1225\n32#4,6:1226\n89#4,2:1263\n32#4,4:1265\n91#4,2:1269\n37#4:1271\n93#4:1272\n114#4,3:1285\n32#4,4:1288\n117#4,2:1292\n119#4,2:1301\n37#4:1303\n121#4:1304\n79#4,3:1314\n32#4,4:1317\n82#4,2:1321\n37#4:1323\n84#4:1324\n79#4,3:1330\n32#4,4:1333\n82#4,2:1337\n37#4:1339\n84#4:1340\n32#4,6:1341\n1#5:1233\n314#6,9:1235\n323#6,2:1245\n122#7,5:1254\n122#7,5:1278\n122#7,3:1310\n126#7:1325\n125#7:1326\n122#7,5:1347\n357#8,7:1294\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n*L\n810#1:1249,5\n810#1:1259\n810#1:1260\n868#1:1273,5\n868#1:1283\n868#1:1284\n888#1:1305,5\n888#1:1327\n888#1:1328\n296#1:1201\n400#1:1232\n692#1:1234\n701#1:1244\n776#1:1247\n792#1:1248\n818#1:1261\n838#1:1262\n892#1:1313\n905#1:1329\n972#1:1352\n1016#1:1353\n1024#1:1354\n1033#1:1355\n1040#1:1356\n1047#1:1357\n1056#1:1358\n1064#1:1359\n844#1:1360\n297#1:1202,2\n369#1:1204,4\n370#1:1208,6\n369#1:1214\n385#1:1215,4\n386#1:1219,6\n385#1:1225\n392#1:1226,6\n839#1:1263,2\n839#1:1265,4\n839#1:1269,2\n839#1:1271\n839#1:1272\n885#1:1285,3\n885#1:1288,4\n885#1:1292,2\n885#1:1301,2\n885#1:1303\n885#1:1304\n893#1:1314,3\n893#1:1317,4\n893#1:1321,2\n893#1:1323\n893#1:1324\n909#1:1330,3\n909#1:1333,4\n909#1:1337,2\n909#1:1339\n909#1:1340\n916#1:1341,6\n700#1:1235,9\n700#1:1245,2\n810#1:1254,5\n868#1:1278,5\n888#1:1310,3\n888#1:1325\n888#1:1326\n946#1:1347,5\n885#1:1294,7\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/Recomposer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final _runningRecomposers:Lkotlinx/coroutines/flow/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/x<",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/x<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private changeCount:J

.field private closeCause:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final compositionInvalidations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final compositionValueStatesAvailable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final compositionValuesAwaitingInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final compositionValuesRemoved:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/MovableContent<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final compositionsAwaitingApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private concurrentCompositionsOutstanding:I

.field private final effectCoroutineContext:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final effectJob:Lkotlinx/coroutines/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isClosed:Z

.field private final knownCompositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private runnerJob:Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final snapshotInvalidations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stateLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private workContinuation:Lkotlinx/coroutines/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/o<",
            "-",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/Recomposer$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/runtime/Recomposer$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    sput v0, Landroidx/compose/runtime/Recomposer;->$stable:I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->c()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/flow/n0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/x;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sput-object v0, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/x;

    .line 23
    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/g;)V
    .locals 3
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "effectCoroutineContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionContext;-><init>()V

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/runtime/BroadcastFrameClock;

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;-><init>(Landroidx/compose/runtime/Recomposer;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Le8/a;)V

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 21
    .line 22
    sget-object v1, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lkotlinx/coroutines/b2;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlinx/coroutines/f2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    new-instance v2, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(Landroidx/compose/runtime/Recomposer;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 41
    .line 42
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/a0;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->effectCoroutineContext:Lkotlin/coroutines/g;

    .line 53
    .line 54
    new-instance p1, Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 60
    .line 61
    new-instance p1, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->knownCompositions:Ljava/util/List;

    .line 67
    .line 68
    new-instance p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Ljava/util/List;

    .line 74
    .line 75
    new-instance p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 81
    .line 82
    new-instance p1, Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 88
    .line 89
    new-instance p1, Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .line 95
    .line 96
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    .line 99
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 100
    .line 101
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    .line 102
    .line 103
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 107
    .line 108
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    .line 109
    .line 110
    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lkotlinx/coroutines/flow/n0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/x;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/x;

    .line 117
    .line 118
    new-instance p1, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, p0}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;-><init>(Landroidx/compose/runtime/Recomposer;)V

    .line 122
    .line 123
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 124
    return-void
.end method

.method public static final synthetic A(Landroidx/compose/runtime/Recomposer;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->f0()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic B(Landroidx/compose/runtime/Recomposer;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->g0()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic C(Landroidx/compose/runtime/Recomposer;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->h0()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic D(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->knownCompositions:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic E(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 3
    return-object p0
.end method

.method public static final synthetic F(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/b2;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/b2;

    .line 3
    return-object p0
.end method

.method public static final synthetic G(Landroidx/compose/runtime/Recomposer;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->i0()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic H(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static final synthetic J(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/o;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/o;

    .line 3
    return-object p0
.end method

.method public static final synthetic K()Lkotlinx/coroutines/flow/x;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/x;

    return-object v0
.end method

.method public static final synthetic L(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/flow/x;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/x;

    .line 3
    return-object p0
.end method

.method public static final synthetic M(Landroidx/compose/runtime/Recomposer;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z

    .line 3
    return p0
.end method

.method public static final synthetic N(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->m0(Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic O(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->n0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic P(Landroidx/compose/runtime/Recomposer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->q0()V

    .line 4
    return-void
.end method

.method public static final synthetic Q(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/b2;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->r0(Lkotlinx/coroutines/b2;)V

    .line 4
    return-void
.end method

.method public static final synthetic R(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer;->s0(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Landroidx/compose/runtime/Recomposer;J)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/compose/runtime/Recomposer;->changeCount:J

    .line 3
    return-void
.end method

.method public static final synthetic T(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 3
    return-void
.end method

.method public static final synthetic U(Landroidx/compose/runtime/Recomposer;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    .line 3
    return-void
.end method

.method public static final synthetic V(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/b2;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/b2;

    .line 3
    return-void
.end method

.method public static final synthetic W(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/o;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/o;

    .line 3
    return-void
.end method

.method private final X(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->C()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->d()V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition."

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->d()V

    .line 29
    throw v0
.end method

.method private final Y(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->h0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    new-instance v0, Lkotlinx/coroutines/p;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    monitor-enter v1

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->C(Landroidx/compose/runtime/Recomposer;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 33
    .line 34
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {p0, v0}, Landroidx/compose/runtime/Recomposer;->W(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/o;)V

    .line 48
    .line 49
    :goto_0
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    if-ne v0, v1, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    if-ne v0, p1, :cond_2

    .line 70
    return-object v0

    .line 71
    .line 72
    :cond_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 73
    return-object p1

    .line 74
    :goto_1
    monitor-exit v1

    .line 75
    throw p1

    .line 76
    .line 77
    :cond_3
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 78
    return-object p1
.end method

.method private final b0()Lkotlinx/coroutines/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/o<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/x;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/flow/x;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/runtime/Recomposer$State;

    .line 9
    .line 10
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-gtz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->knownCompositions:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/o;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/o$a;->a(Lkotlinx/coroutines/o;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 51
    .line 52
    :cond_0
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/o;

    .line 53
    return-object v2

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/b2;

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    .line 69
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/compose/runtime/BroadcastFrameClock;->t()Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->InactivePendingWork:Landroidx/compose/runtime/Recomposer$State;

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_2
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 84
    .line 85
    check-cast v0, Ljava/util/Collection;

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 89
    move-result v0

    .line 90
    xor-int/2addr v0, v1

    .line 91
    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Ljava/util/List;

    .line 95
    .line 96
    check-cast v0, Ljava/util/Collection;

    .line 97
    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 100
    move-result v0

    .line 101
    xor-int/2addr v0, v1

    .line 102
    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 106
    .line 107
    check-cast v0, Ljava/util/Collection;

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 111
    move-result v0

    .line 112
    xor-int/2addr v0, v1

    .line 113
    .line 114
    if-nez v0, :cond_5

    .line 115
    .line 116
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .line 117
    .line 118
    check-cast v0, Ljava/util/Collection;

    .line 119
    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 122
    move-result v0

    .line 123
    xor-int/2addr v0, v1

    .line 124
    .line 125
    if-nez v0, :cond_5

    .line 126
    .line 127
    iget v0, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    .line 128
    .line 129
    if-gtz v0, :cond_5

    .line 130
    .line 131
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/compose/runtime/BroadcastFrameClock;->t()Z

    .line 135
    move-result v0

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_4
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    .line 141
    goto :goto_1

    .line 142
    .line 143
    :cond_5
    :goto_0
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->PendingWork:Landroidx/compose/runtime/Recomposer$State;

    .line 144
    .line 145
    :goto_1
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/x;

    .line 146
    .line 147
    .line 148
    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/x;->setValue(Ljava/lang/Object;)V

    .line 149
    .line 150
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->PendingWork:Landroidx/compose/runtime/Recomposer$State;

    .line 151
    .line 152
    if-ne v0, v1, :cond_6

    .line 153
    .line 154
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/o;

    .line 155
    .line 156
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/o;

    .line 157
    move-object v2, v0

    .line 158
    :cond_6
    return-object v2
.end method

.method private final c0()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Iterable;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/collections/t;->z(Ljava/lang/Iterable;)Ljava/util/List;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 32
    .line 33
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    move-result v4

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 44
    move-result v4

    .line 45
    move v5, v2

    .line 46
    .line 47
    :goto_0
    if-ge v5, v4, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v6

    .line 52
    .line 53
    check-cast v6, Landroidx/compose/runtime/MovableContentStateReference;

    .line 54
    .line 55
    iget-object v7, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v7

    .line 60
    .line 61
    .line 62
    invoke-static {v6, v7}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 63
    move-result-object v6

    .line 64
    .line 65
    .line 66
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v1

    .line 71
    goto :goto_3

    .line 72
    .line 73
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 81
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_1
    monitor-exit v0

    .line 83
    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 86
    move-result v0

    .line 87
    .line 88
    :goto_2
    if-ge v2, v0, :cond_3

    .line 89
    .line 90
    .line 91
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    check-cast v1, Lw7/u;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lw7/u;->a()Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    check-cast v1, Landroidx/compose/runtime/MovableContentState;

    .line 107
    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Landroidx/compose/runtime/MovableContentStateReference;->b()Landroidx/compose/runtime/ControlledComposition;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    .line 115
    invoke-interface {v4, v1}, Landroidx/compose/runtime/ControlledComposition;->b(Landroidx/compose/runtime/MovableContentState;)V

    .line 116
    .line 117
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    return-void

    .line 120
    :goto_3
    monitor-exit v0

    .line 121
    throw v1
.end method

.method private final f0()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/BroadcastFrameClock;->t()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :cond_1
    :goto_0
    return v1
.end method

.method private final g0()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/BroadcastFrameClock;->t()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :cond_1
    :goto_0
    return v1
.end method

.method private final h0()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Ljava/util/List;

    .line 6
    .line 7
    check-cast v1, Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    xor-int/2addr v1, v2

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 18
    .line 19
    check-cast v1, Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    move-result v1

    .line 24
    xor-int/2addr v1, v2

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/runtime/BroadcastFrameClock;->t()Z

    .line 32
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    monitor-exit v0

    .line 41
    return v2

    .line 42
    :goto_1
    monitor-exit v0

    .line 43
    throw v1
.end method

.method private final i0()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v2, 0x1

    .line 7
    xor-int/2addr v1, v2

    .line 8
    monitor-exit v0

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/a0;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lkotlinx/coroutines/b2;->getChildren()Lkotlin/sequences/g;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lkotlinx/coroutines/b2;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Lkotlinx/coroutines/b2;->isActive()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    :cond_2
    :goto_0
    return v2

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    monitor-exit v0

    .line 44
    throw v1
.end method

.method private final k0(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v3, v2, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Landroidx/compose/runtime/MovableContentStateReference;->b()Landroidx/compose/runtime/ControlledComposition;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    invoke-static {v4, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v4

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p0, p1}, Landroidx/compose/runtime/Recomposer;->l0(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    xor-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/Recomposer;->m0(Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p0, p1}, Landroidx/compose/runtime/Recomposer;->l0(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_2
    monitor-exit v0

    .line 65
    throw p1
.end method

.method private static final l0(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/compose/runtime/Recomposer;",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    .line 8
    :try_start_0
    iget-object p1, p1, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->b()Landroidx/compose/runtime/ControlledComposition;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-static {v2, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0

    .line 49
    throw p0
.end method

.method private final m0(Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    .line 17
    :goto_0
    if-ge v3, v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    move-object v5, v4

    .line 23
    .line 24
    check-cast v5, Landroidx/compose/runtime/MovableContentStateReference;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Landroidx/compose/runtime/MovableContentStateReference;->b()Landroidx/compose/runtime/ControlledComposition;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 33
    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    new-instance v6, Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    :cond_0
    check-cast v6, Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    check-cast v3, Landroidx/compose/runtime/ControlledComposition;

    .line 77
    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    check-cast v1, Ljava/util/List;

    .line 83
    .line 84
    .line 85
    invoke-interface {v3}, Landroidx/compose/runtime/ControlledComposition;->m()Z

    .line 86
    move-result v4

    .line 87
    .line 88
    xor-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    .line 91
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->X(Z)V

    .line 92
    .line 93
    sget-object v4, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v3}, Landroidx/compose/runtime/Recomposer;->o0(Landroidx/compose/runtime/ControlledComposition;)Le8/l;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v3, p2}, Landroidx/compose/runtime/Recomposer;->u0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Le8/l;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->h(Le8/l;Le8/l;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 105
    move-result-object v4

    .line 106
    .line 107
    .line 108
    :try_start_0
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 109
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    .line 111
    :try_start_1
    iget-object v6, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 112
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 113
    .line 114
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 118
    move-result v8

    .line 119
    .line 120
    .line 121
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 125
    move-result v8

    .line 126
    move v9, v2

    .line 127
    .line 128
    :goto_2
    if-ge v9, v8, :cond_2

    .line 129
    .line 130
    .line 131
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v10

    .line 133
    .line 134
    check-cast v10, Landroidx/compose/runtime/MovableContentStateReference;

    .line 135
    .line 136
    iget-object v11, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10}, Landroidx/compose/runtime/MovableContentStateReference;->c()Landroidx/compose/runtime/MovableContent;

    .line 140
    move-result-object v12

    .line 141
    .line 142
    .line 143
    invoke-static {v11, v12}, Landroidx/compose/runtime/RecomposerKt;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object v11

    .line 145
    .line 146
    .line 147
    invoke-static {v10, v11}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 148
    move-result-object v10

    .line 149
    .line 150
    .line 151
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .line 153
    add-int/lit8 v9, v9, 0x1

    .line 154
    goto :goto_2

    .line 155
    :catchall_0
    move-exception p1

    .line 156
    goto :goto_3

    .line 157
    :cond_2
    :try_start_3
    monitor-exit v6

    .line 158
    .line 159
    .line 160
    invoke-interface {v3, v7}, Landroidx/compose/runtime/ControlledComposition;->g(Ljava/util/List;)V

    .line 161
    .line 162
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 163
    .line 164
    .line 165
    :try_start_4
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, v4}, Landroidx/compose/runtime/Recomposer;->X(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 169
    goto :goto_1

    .line 170
    :catchall_1
    move-exception p1

    .line 171
    goto :goto_5

    .line 172
    :catchall_2
    move-exception p1

    .line 173
    goto :goto_4

    .line 174
    :goto_3
    :try_start_5
    monitor-exit v6

    .line 175
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 176
    .line 177
    .line 178
    :goto_4
    :try_start_6
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 179
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 180
    .line 181
    .line 182
    :goto_5
    invoke-direct {p0, v4}, Landroidx/compose/runtime/Recomposer;->X(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 183
    throw p1

    .line 184
    .line 185
    .line 186
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    .line 190
    invoke-static {p1}, Lkotlin/collections/t;->U0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 191
    move-result-object p1

    .line 192
    return-object p1
.end method

.method private final n0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/runtime/ControlledComposition;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->m()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/compose/runtime/Composition;->u()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_4

    .line 15
    .line 16
    :cond_0
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->o0(Landroidx/compose/runtime/ControlledComposition;)Le8/l;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->u0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Le8/l;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->h(Le8/l;Le8/l;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 32
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    .line 37
    :try_start_1
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/IdentityArraySet;->f()Z

    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    .line 41
    if-ne v3, v4, :cond_1

    .line 42
    .line 43
    new-instance v3, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, p2, p1}, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;-><init>(Landroidx/compose/runtime/collection/IdentityArraySet;Landroidx/compose/runtime/ControlledComposition;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v3}, Landroidx/compose/runtime/ControlledComposition;->i(Le8/a;)V

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->h()Z

    .line 56
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_2
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Landroidx/compose/runtime/Recomposer;->X(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object p1, v1

    .line 67
    :goto_1
    return-object p1

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    goto :goto_3

    .line 70
    .line 71
    .line 72
    :goto_2
    :try_start_3
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 73
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    .line 75
    .line 76
    :goto_3
    invoke-direct {p0, v0}, Landroidx/compose/runtime/Recomposer;->X(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 77
    throw p1

    .line 78
    :cond_3
    :goto_4
    return-object v1
.end method

.method private final o0(Landroidx/compose/runtime/ControlledComposition;)Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/Recomposer$readObserverOf$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/compose/runtime/Recomposer$readObserverOf$1;-><init>(Landroidx/compose/runtime/ControlledComposition;)V

    .line 6
    return-object v0
.end method

.method private final p0(Le8/q;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/g;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 11
    .line 12
    new-instance v2, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, p0, p1, v0, v3}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;-><init>(Landroidx/compose/runtime/Recomposer;Le8/q;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/d;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    if-ne p1, p2, :cond_0

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 30
    return-object p1
.end method

.method private final q0()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    xor-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    .line 22
    :goto_0
    if-ge v3, v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Ljava/util/Set;

    .line 29
    .line 30
    iget-object v5, p0, Landroidx/compose/runtime/Recomposer;->knownCompositions:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 34
    move-result v6

    .line 35
    move v7, v2

    .line 36
    .line 37
    :goto_1
    if-ge v7, v6, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v8

    .line 42
    .line 43
    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    .line 44
    .line 45
    .line 46
    invoke-interface {v8, v4}, Landroidx/compose/runtime/ControlledComposition;->k(Ljava/util/Set;)V

    .line 47
    .line 48
    add-int/lit8 v7, v7, 0x1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Ljava/util/List;

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->b0()Lkotlinx/coroutines/o;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "called outside of runRecomposeAndApplyChanges"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v0

    .line 77
    :cond_3
    :goto_2
    return-void
.end method

.method public static final synthetic r(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->Y(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final r0(Lkotlinx/coroutines/b2;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/x;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lkotlinx/coroutines/flow/x;->getValue()Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/runtime/Recomposer$State;

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-lez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/b2;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/b2;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->b0()Lkotlinx/coroutines/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v1, "Recomposer already running"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v1, "Recomposer shut down"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1

    .line 61
    :cond_2
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_0
    monitor-exit v0

    .line 63
    throw p1
.end method

.method public static final synthetic s(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/o;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->b0()Lkotlinx/coroutines/o;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final s0(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Landroidx/compose/runtime/ProduceFrameSignal;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p3}, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v4, :cond_3

    .line 39
    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    iget-object p1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Ljava/util/List;

    .line 45
    .line 46
    iget-object p2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p2, Ljava/util/List;

    .line 49
    .line 50
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Landroidx/compose/runtime/ProduceFrameSignal;

    .line 53
    .line 54
    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 57
    .line 58
    iget-object v6, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v6, Landroidx/compose/runtime/Recomposer;

    .line 61
    .line 62
    .line 63
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    :cond_1
    move-object p3, p2

    .line 65
    move-object p2, v2

    .line 66
    move-object v2, p1

    .line 67
    move-object p1, v5

    .line 68
    move-object v5, v6

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    .line 79
    :cond_3
    iget-object p1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p1, Ljava/util/List;

    .line 82
    .line 83
    iget-object p2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p2, Ljava/util/List;

    .line 86
    .line 87
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Landroidx/compose/runtime/ProduceFrameSignal;

    .line 90
    .line 91
    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v5, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 94
    .line 95
    iget-object v6, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v6, Landroidx/compose/runtime/Recomposer;

    .line 98
    .line 99
    .line 100
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 105
    .line 106
    new-instance p3, Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    new-instance v2, Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    move-object v5, p0

    .line 116
    .line 117
    :goto_1
    iget-object v6, v5, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 118
    .line 119
    iput-object v5, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object p2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object p3, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    .line 128
    .line 129
    iput v4, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v6, v0}, Landroidx/compose/runtime/ProduceFrameSignal;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 133
    move-result-object v6

    .line 134
    .line 135
    if-ne v6, v1, :cond_5

    .line 136
    return-object v1

    .line 137
    :cond_5
    move-object v6, v5

    .line 138
    move-object v5, p1

    .line 139
    move-object p1, v2

    .line 140
    move-object v2, p2

    .line 141
    move-object p2, p3

    .line 142
    .line 143
    :goto_2
    new-instance p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;

    .line 144
    .line 145
    .line 146
    invoke-direct {p3, v6, p2, p1, v2}, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;-><init>(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ProduceFrameSignal;)V

    .line 147
    .line 148
    iput-object v6, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v5, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object p2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    .line 157
    .line 158
    iput v3, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    .line 159
    .line 160
    .line 161
    invoke-interface {v5, p3, v0}, Landroidx/compose/runtime/MonotonicFrameClock;->k(Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 162
    move-result-object p3

    .line 163
    .line 164
    if-ne p3, v1, :cond_1

    .line 165
    return-object v1
.end method

.method public static final synthetic t(Landroidx/compose/runtime/Recomposer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->c0()V

    .line 4
    return-void
.end method

.method public static final synthetic u(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 3
    return-object p0
.end method

.method private final u0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;)",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/Recomposer$writeObserverOf$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/Recomposer$writeObserverOf$1;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)V

    .line 6
    return-object v0
.end method

.method public static final synthetic v(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 3
    return-object p0
.end method

.method public static final synthetic w(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic x(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic y(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic z(Landroidx/compose/runtime/Recomposer;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    .line 3
    return p0
.end method


# virtual methods
.method public final Z()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/x;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Lkotlinx/coroutines/flow/x;->getValue()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Landroidx/compose/runtime/Recomposer$State;

    .line 12
    .line 13
    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-ltz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/x;

    .line 22
    .line 23
    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/x;->setValue(Ljava/lang/Object;)V

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    :goto_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/a0;

    .line 35
    const/4 v1, 0x1

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw v1
.end method

.method public a(Landroidx/compose/runtime/ControlledComposition;Le8/p;)V
    .locals 4
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "composition"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->m()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->o0(Landroidx/compose/runtime/ControlledComposition;)Le8/l;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v3}, Landroidx/compose/runtime/Recomposer;->u0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Le8/l;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->h(Le8/l;Le8/l;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 33
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-interface {p1, p2}, Landroidx/compose/runtime/ControlledComposition;->a(Le8/p;)V

    .line 37
    .line 38
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 39
    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v2}, Landroidx/compose/runtime/Recomposer;->X(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->c()V

    .line 50
    .line 51
    :cond_0
    iget-object p2, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 52
    monitor-enter p2

    .line 53
    .line 54
    :try_start_3
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/x;

    .line 55
    .line 56
    .line 57
    invoke-interface {v2}, Lkotlinx/coroutines/flow/x;->getValue()Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    check-cast v2, Landroidx/compose/runtime/Recomposer$State;

    .line 61
    .line 62
    sget-object v3, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 66
    move-result v2

    .line 67
    .line 68
    if-lez v2, :cond_1

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->knownCompositions:Ljava/util/List;

    .line 71
    .line 72
    .line 73
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 74
    move-result v2

    .line 75
    .line 76
    if-nez v2, :cond_1

    .line 77
    .line 78
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->knownCompositions:Ljava/util/List;

    .line 79
    .line 80
    check-cast v2, Ljava/util/Collection;

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    monitor-exit p2

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->k0(Landroidx/compose/runtime/ControlledComposition;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->l()V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->f()V

    .line 97
    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->c()V

    .line 102
    :cond_2
    return-void

    .line 103
    :goto_1
    monitor-exit p2

    .line 104
    throw p1

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    goto :goto_2

    .line 107
    :catchall_2
    move-exception p1

    .line 108
    .line 109
    .line 110
    :try_start_4
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 111
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-direct {p0, v2}, Landroidx/compose/runtime/Recomposer;->X(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 115
    throw p1
.end method

.method public final a0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/a0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/a0;->complete()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    :try_start_0
    iput-boolean v1, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z

    .line 15
    .line 16
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1

    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public b(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 3
    .param p1    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "reference"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->c()Landroidx/compose/runtime/MovableContent;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/RecomposerKt;->c(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0

    .line 22
    throw p1
.end method

.method public d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final d0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/runtime/Recomposer;->changeCount:J

    return-wide v0
.end method

.method public final e0()Lkotlinx/coroutines/flow/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/l0<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/x;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    return v0
.end method

.method public g()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectCoroutineContext:Lkotlin/coroutines/g;

    return-object v0
.end method

.method public h()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 3
    return-object v0
.end method

.method public i(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "reference"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .line 11
    .line 12
    check-cast v1, Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->b0()Lkotlinx/coroutines/o;

    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 25
    .line 26
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0

    .line 37
    throw p1
.end method

.method public j(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "composition"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 19
    .line 20
    check-cast v1, Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->b0()Lkotlinx/coroutines/o;

    .line 27
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    monitor-exit v0

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 37
    .line 38
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 46
    :cond_1
    return-void

    .line 47
    :goto_1
    monitor-exit v0

    .line 48
    throw p1
.end method

.method public final j0(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->e0()Lkotlinx/coroutines/flow/l0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Landroidx/compose/runtime/Recomposer$join$2;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(Lkotlin/coroutines/d;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/flow/i;->u(Lkotlinx/coroutines/flow/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    return-object p1

    .line 22
    .line 23
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 24
    return-object p1
.end method

.method public k(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/MovableContentState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "reference"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "data"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    .line 15
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0

    .line 25
    throw p1
.end method

.method public l(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 2
    .param p1    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "reference"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/runtime/MovableContentState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0

    .line 21
    throw p1
.end method

.method public m(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public q(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "composition"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->knownCompositions:Ljava/util/List;

    .line 11
    .line 12
    check-cast v1, Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 18
    .line 19
    check-cast v1, Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 25
    .line 26
    check-cast v1, Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0

    .line 36
    throw p1
.end method

.method public final t0(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/Recomposer;->p0(Le8/q;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p1
.end method
