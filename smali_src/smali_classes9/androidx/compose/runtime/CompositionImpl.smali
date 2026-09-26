.class public final Landroidx/compose/runtime/CompositionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/ControlledComposition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 6 IdentityScopeMap.kt\nandroidx/compose/runtime/collection/IdentityScopeMap\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 8 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n+ 9 Composition.kt\nandroidx/compose/runtime/CompositionKt\n+ 10 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 11 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1132:1\n963#1,3:1146\n966#1,7:1150\n963#1,10:1323\n963#1,10:1342\n66#2:1133\n66#2:1135\n66#2:1149\n66#2:1157\n66#2:1166\n66#2:1167\n66#2:1315\n66#2:1322\n66#2:1428\n66#2:1429\n66#2:1430\n66#2:1431\n66#2:1434\n66#2:1435\n1#3:1134\n1#3:1446\n89#4,2:1136\n32#4,4:1138\n91#4,2:1142\n37#4:1144\n93#4:1145\n105#4,2:1333\n32#4,6:1335\n107#4:1341\n32#4,6:1367\n32#4,6:1449\n162#5,8:1158\n162#5,8:1352\n162#5,4:1363\n167#5,2:1373\n166#5,4:1375\n89#6,3:1168\n93#6:1173\n220#6:1174\n236#6,5:1175\n221#6:1180\n222#6:1197\n241#6,17:1198\n223#6:1215\n220#6:1216\n236#6,5:1217\n221#6:1222\n222#6:1239\n241#6,17:1240\n223#6:1257\n220#6:1258\n236#6,5:1259\n221#6:1264\n222#6:1281\n241#6,17:1282\n223#6:1299\n89#6,3:1309\n93#6:1314\n89#6,3:1316\n93#6:1321\n220#6:1384\n236#6,5:1385\n221#6:1390\n222#6:1407\n241#6,17:1408\n223#6:1425\n89#6,3:1455\n93#6:1460\n1849#7,2:1171\n1849#7,2:1307\n1849#7,2:1312\n1849#7,2:1319\n1849#7,2:1458\n146#8,16:1181\n146#8,16:1223\n146#8,16:1265\n146#8,16:1391\n1126#9,7:1300\n46#10,3:1360\n50#10:1379\n49#10:1380\n46#10,3:1381\n50#10:1426\n49#10:1427\n13536#11,2:1432\n11646#11,9:1436\n13536#11:1445\n13537#11:1447\n11655#11:1448\n*S KotlinDebug\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl\n*L\n581#1:1146,3\n581#1:1150,7\n745#1:1323,10\n757#1:1342,10\n514#1:1133\n523#1:1135\n582#1:1149\n590#1:1157\n612#1:1166\n633#1:1167\n733#1:1315\n743#1:1322\n812#1:1428\n819#1:1429\n827#1:1430\n838#1:1431\n844#1:1434\n888#1:1435\n950#1:1446\n530#1:1136,2\n530#1:1138,4\n530#1:1142,2\n530#1:1144\n530#1:1145\n756#1:1333,2\n756#1:1335,6\n756#1:1341\n781#1:1367,6\n951#1:1449,6\n598#1:1158,8\n765#1:1352,8\n779#1:1363,4\n779#1:1373,2\n779#1:1375,4\n678#1:1168,3\n678#1:1173\n685#1:1174\n685#1:1175,5\n685#1:1180\n685#1:1197\n685#1:1198,17\n685#1:1215\n692#1:1216\n692#1:1217,5\n692#1:1222\n692#1:1239\n692#1:1240,17\n692#1:1257\n699#1:1258\n699#1:1259,5\n699#1:1264\n699#1:1281\n699#1:1282,17\n699#1:1299\n725#1:1309,3\n725#1:1314\n738#1:1316,3\n738#1:1321\n799#1:1384\n799#1:1385,5\n799#1:1390\n799#1:1407\n799#1:1408,17\n799#1:1425\n655#1:1455,3\n655#1:1460\n678#1:1171,2\n713#1:1307,2\n725#1:1312,2\n738#1:1319,2\n655#1:1458,2\n685#1:1181,16\n692#1:1223,16\n699#1:1265,16\n799#1:1391,16\n700#1:1300,7\n775#1:1360,3\n775#1:1379\n775#1:1380\n797#1:1381,3\n797#1:1426\n797#1:1427\n839#1:1432,2\n950#1:1436,9\n950#1:1445\n950#1:1447\n950#1:1448\n*E\n"
.end annotation


# instance fields
.field private final _recomposeContext:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final abandonSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final applier:Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/q<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private composable:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final composer:Landroidx/compose/runtime/ComposerImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final conditionallyInvalidatedScopes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final derivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityScopeMap<",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private disposed:Z

.field private invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private invalidationDelegateGroup:I

.field private invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isRoot:Z

.field private final lateChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/q<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observations:Landroidx/compose/runtime/collection/IdentityScopeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityScopeMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observationsProcessed:Landroidx/compose/runtime/collection/IdentityScopeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityScopeMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Landroidx/compose/runtime/CompositionContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingInvalidScopes:Z

.field private final pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final slotTable:Landroidx/compose/runtime/SlotTable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/g;)V
    .locals 10
    .param p1    # Landroidx/compose/runtime/CompositionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionContext;",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Lkotlin/coroutines/g;",
            ")V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 4
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 5
    new-instance v5, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v5}, Landroidx/compose/runtime/SlotTable;-><init>()V

    iput-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 6
    new-instance v0, Landroidx/compose/runtime/collection/IdentityScopeMap;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    .line 8
    new-instance v0, Landroidx/compose/runtime/collection/IdentityScopeMap;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Ljava/util/List;

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Ljava/util/List;

    .line 11
    new-instance v0, Landroidx/compose/runtime/collection/IdentityScopeMap;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 12
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArrayMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;-><init>(IILkotlin/jvm/internal/k;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 13
    new-instance v0, Landroidx/compose/runtime/ComposerImpl;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/runtime/ComposerImpl;-><init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ControlledComposition;)V

    .line 14
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/CompositionContext;->n(Landroidx/compose/runtime/Composer;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iput-object p3, p0, Landroidx/compose/runtime/CompositionImpl;->_recomposeContext:Lkotlin/coroutines/g;

    .line 15
    instance-of p1, p1, Landroidx/compose/runtime/Recomposer;

    iput-boolean p1, p0, Landroidx/compose/runtime/CompositionImpl;->isRoot:Z

    sget-object p1, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->a()Le8/p;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Le8/p;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/g;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionImpl;-><init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/g;)V

    return-void
.end method

.method private final D(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 11
    .line 12
    iget v4, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v4, p2}, Landroidx/compose/runtime/SlotTable;->r(ILandroidx/compose/runtime/Anchor;)Z

    .line 16
    move-result v3

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    move-object v1, v2

    .line 23
    .line 24
    :goto_0
    if-nez v1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->m()Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p1, p3}, Landroidx/compose/runtime/ComposerImpl;->F1(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    .line 42
    return-object p1

    .line 43
    .line 44
    :cond_1
    if-nez p3, :cond_2

    .line 45
    .line 46
    :try_start_1
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1, v2}, Landroidx/compose/runtime/collection/IdentityArrayMap;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 53
    .line 54
    .line 55
    invoke-static {v2, p1, p3}, Landroidx/compose/runtime/CompositionKt;->b(Landroidx/compose/runtime/collection/IdentityArrayMap;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :cond_3
    :goto_1
    monitor-exit v0

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/runtime/CompositionImpl;->D(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    .line 65
    :cond_4
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/CompositionContext;->j(Landroidx/compose/runtime/ControlledComposition;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->m()Z

    .line 72
    move-result p1

    .line 73
    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->DEFERRED:Landroidx/compose/runtime/InvalidationResult;

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_5
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->SCHEDULED:Landroidx/compose/runtime/InvalidationResult;

    .line 80
    :goto_2
    return-object p1

    .line 81
    :goto_3
    monitor-exit v0

    .line 82
    throw p1
.end method

.method private final E(Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->a(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-ltz v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->b(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->t(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    sget-object v3, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    .line 35
    .line 36
    if-ne v2, v3, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1, v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method private final I()Landroidx/compose/runtime/collection/IdentityArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 3
    .line 4
    new-instance v1, Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v4, v2, v3}, Landroidx/compose/runtime/collection/IdentityArrayMap;-><init>(IILkotlin/jvm/internal/k;)V

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 13
    return-object v0
.end method

.method private final p(Ljava/util/Set;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    .line 6
    new-instance v2, Lkotlin/jvm/internal/p0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x0

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    instance-of v6, v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 27
    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    check-cast v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/RecomposeScopeImpl;->t(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/CompositionImpl;->q(Landroidx/compose/runtime/CompositionImpl;ZLkotlin/jvm/internal/p0;Ljava/lang/Object;)V

    .line 38
    .line 39
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 40
    .line 41
    .line 42
    invoke-static {v5, v4}, Landroidx/compose/runtime/collection/IdentityScopeMap;->a(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    .line 43
    move-result v4

    .line 44
    .line 45
    if-ltz v4, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-static {v5, v4}, Landroidx/compose/runtime/collection/IdentityScopeMap;->b(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v5

    .line 58
    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v5

    .line 64
    .line 65
    check-cast v5, Landroidx/compose/runtime/DerivedState;

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1, v2, v5}, Landroidx/compose/runtime/CompositionImpl;->q(Landroidx/compose/runtime/CompositionImpl;ZLkotlin/jvm/internal/p0;Ljava/lang/Object;)V

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    const-string v3, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    .line 72
    .line 73
    if-eqz v1, :cond_d

    .line 74
    .line 75
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 79
    move-result v1

    .line 80
    const/4 v6, 0x1

    .line 81
    xor-int/2addr v1, v6

    .line 82
    .line 83
    if-eqz v1, :cond_d

    .line 84
    .line 85
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 89
    move-result v7

    .line 90
    const/4 v8, 0x0

    .line 91
    const/4 v9, 0x0

    .line 92
    .line 93
    :goto_2
    if-ge v8, v7, :cond_b

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 97
    move-result-object v10

    .line 98
    .line 99
    aget v10, v10, v8

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->i()[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 103
    move-result-object v11

    .line 104
    .line 105
    aget-object v11, v11, v10

    .line 106
    .line 107
    .line 108
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 112
    move-result v12

    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v14, 0x0

    .line 115
    .line 116
    :goto_3
    if-ge v13, v12, :cond_7

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 120
    move-result-object v15

    .line 121
    .line 122
    aget-object v15, v15, v13

    .line 123
    .line 124
    if-eqz v15, :cond_6

    .line 125
    move-object v4, v15

    .line 126
    .line 127
    check-cast v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 128
    .line 129
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 133
    move-result v5

    .line 134
    .line 135
    if-nez v5, :cond_5

    .line 136
    .line 137
    iget-object v5, v2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v5, Ljava/util/HashSet;

    .line 140
    .line 141
    if-eqz v5, :cond_3

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 145
    move-result v4

    .line 146
    .line 147
    if-ne v4, v6, :cond_3

    .line 148
    goto :goto_4

    .line 149
    .line 150
    :cond_3
    if-eq v14, v13, :cond_4

    .line 151
    .line 152
    .line 153
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 154
    move-result-object v4

    .line 155
    .line 156
    aput-object v15, v4, v14

    .line 157
    .line 158
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 159
    .line 160
    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 161
    const/4 v5, 0x0

    .line 162
    goto :goto_3

    .line 163
    .line 164
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    .line 165
    .line 166
    .line 167
    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 168
    throw v1

    .line 169
    .line 170
    .line 171
    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 172
    move-result v4

    .line 173
    move v5, v14

    .line 174
    .line 175
    :goto_5
    if-ge v5, v4, :cond_8

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 179
    move-result-object v12

    .line 180
    const/4 v13, 0x0

    .line 181
    .line 182
    aput-object v13, v12, v5

    .line 183
    .line 184
    add-int/lit8 v5, v5, 0x1

    .line 185
    goto :goto_5

    .line 186
    .line 187
    .line 188
    :cond_8
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/collection/IdentityArraySet;->g(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 192
    move-result v4

    .line 193
    .line 194
    if-lez v4, :cond_a

    .line 195
    .line 196
    if-eq v9, v8, :cond_9

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 200
    move-result-object v4

    .line 201
    .line 202
    aget v4, v4, v9

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 206
    move-result-object v5

    .line 207
    .line 208
    aput v10, v5, v9

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 212
    move-result-object v5

    .line 213
    .line 214
    aput v4, v5, v8

    .line 215
    .line 216
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 217
    .line 218
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 219
    const/4 v5, 0x0

    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    .line 224
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 225
    move-result v2

    .line 226
    move v3, v9

    .line 227
    .line 228
    :goto_6
    if-ge v3, v2, :cond_c

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->l()[Ljava/lang/Object;

    .line 232
    move-result-object v4

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 236
    move-result-object v5

    .line 237
    .line 238
    aget v5, v5, v3

    .line 239
    const/4 v6, 0x0

    .line 240
    .line 241
    aput-object v6, v4, v5

    .line 242
    .line 243
    add-int/lit8 v3, v3, 0x1

    .line 244
    goto :goto_6

    .line 245
    .line 246
    .line 247
    :cond_c
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/collection/IdentityScopeMap;->p(I)V

    .line 248
    .line 249
    .line 250
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->s()V

    .line 251
    .line 252
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 256
    .line 257
    goto/16 :goto_b

    .line 258
    .line 259
    :cond_d
    iget-object v1, v2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v1, Ljava/util/HashSet;

    .line 262
    .line 263
    if-eqz v1, :cond_17

    .line 264
    .line 265
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 269
    move-result v4

    .line 270
    const/4 v5, 0x0

    .line 271
    const/4 v6, 0x0

    .line 272
    .line 273
    :goto_7
    if-ge v5, v4, :cond_15

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 277
    move-result-object v7

    .line 278
    .line 279
    aget v7, v7, v5

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->i()[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 283
    move-result-object v8

    .line 284
    .line 285
    aget-object v8, v8, v7

    .line 286
    .line 287
    .line 288
    invoke-static {v8}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 292
    move-result v9

    .line 293
    const/4 v10, 0x0

    .line 294
    const/4 v11, 0x0

    .line 295
    .line 296
    :goto_8
    if-ge v10, v9, :cond_11

    .line 297
    .line 298
    .line 299
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 300
    move-result-object v12

    .line 301
    .line 302
    aget-object v12, v12, v10

    .line 303
    .line 304
    if-eqz v12, :cond_10

    .line 305
    move-object v13, v12

    .line 306
    .line 307
    check-cast v13, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 311
    move-result v13

    .line 312
    .line 313
    if-nez v13, :cond_f

    .line 314
    .line 315
    if-eq v11, v10, :cond_e

    .line 316
    .line 317
    .line 318
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 319
    move-result-object v13

    .line 320
    .line 321
    aput-object v12, v13, v11

    .line 322
    .line 323
    :cond_e
    add-int/lit8 v11, v11, 0x1

    .line 324
    .line 325
    :cond_f
    add-int/lit8 v10, v10, 0x1

    .line 326
    goto :goto_8

    .line 327
    .line 328
    :cond_10
    new-instance v1, Ljava/lang/NullPointerException;

    .line 329
    .line 330
    .line 331
    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 332
    throw v1

    .line 333
    .line 334
    .line 335
    :cond_11
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 336
    move-result v9

    .line 337
    move v10, v11

    .line 338
    .line 339
    :goto_9
    if-ge v10, v9, :cond_12

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 343
    move-result-object v12

    .line 344
    const/4 v13, 0x0

    .line 345
    .line 346
    aput-object v13, v12, v10

    .line 347
    .line 348
    add-int/lit8 v10, v10, 0x1

    .line 349
    goto :goto_9

    .line 350
    .line 351
    .line 352
    :cond_12
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/collection/IdentityArraySet;->g(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 356
    move-result v8

    .line 357
    .line 358
    if-lez v8, :cond_14

    .line 359
    .line 360
    if-eq v6, v5, :cond_13

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 364
    move-result-object v8

    .line 365
    .line 366
    aget v8, v8, v6

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 370
    move-result-object v9

    .line 371
    .line 372
    aput v7, v9, v6

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 376
    move-result-object v7

    .line 377
    .line 378
    aput v8, v7, v5

    .line 379
    .line 380
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 381
    .line 382
    :cond_14
    add-int/lit8 v5, v5, 0x1

    .line 383
    goto :goto_7

    .line 384
    .line 385
    .line 386
    :cond_15
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 387
    move-result v1

    .line 388
    move v3, v6

    .line 389
    .line 390
    :goto_a
    if-ge v3, v1, :cond_16

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->l()[Ljava/lang/Object;

    .line 394
    move-result-object v4

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 398
    move-result-object v5

    .line 399
    .line 400
    aget v5, v5, v3

    .line 401
    const/4 v7, 0x0

    .line 402
    .line 403
    aput-object v7, v4, v5

    .line 404
    .line 405
    add-int/lit8 v3, v3, 0x1

    .line 406
    goto :goto_a

    .line 407
    .line 408
    .line 409
    :cond_16
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/collection/IdentityScopeMap;->p(I)V

    .line 410
    .line 411
    .line 412
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->s()V

    .line 413
    :cond_17
    :goto_b
    return-void
.end method

.method private static final q(Landroidx/compose/runtime/CompositionImpl;ZLkotlin/jvm/internal/p0;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionImpl;",
            "Z",
            "Lkotlin/jvm/internal/p0<",
            "Ljava/util/HashSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p3}, Landroidx/compose/runtime/collection/IdentityScopeMap;->a(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-ltz v1, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->b(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p3, v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p3}, Landroidx/compose/runtime/RecomposeScopeImpl;->t(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    sget-object v3, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 43
    .line 44
    if-eq v2, v3, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->u()Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iget-object v2, p2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Ljava/util/HashSet;

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    new-instance v2, Ljava/util/HashSet;

    .line 67
    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 70
    .line 71
    iput-object v2, p2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-void
.end method

.method private final r(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/q<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->d()V

    .line 25
    :cond_0
    return-void

    .line 26
    .line 27
    :cond_1
    :try_start_1
    const-string v1, "Compose:applyChanges"

    .line 28
    .line 29
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Trace;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 34
    .line 35
    :try_start_2
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Landroidx/compose/runtime/Applier;->d()V

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->t()Landroidx/compose/runtime/SlotWriter;

    .line 44
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 45
    .line 46
    :try_start_3
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    move v6, v5

    .line 53
    .line 54
    :goto_0
    if-ge v6, v4, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v7

    .line 59
    .line 60
    check-cast v7, Le8/q;

    .line 61
    .line 62
    .line 63
    invoke-interface {v7, v3, v2, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    add-int/lit8 v6, v6, 0x1

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    .line 69
    goto/16 :goto_8

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 73
    .line 74
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    .line 77
    :try_start_4
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 78
    .line 79
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Landroidx/compose/runtime/Applier;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 83
    .line 84
    :try_start_5
    sget-object p1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->e()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->f()V

    .line 94
    .line 95
    iget-boolean v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    .line 96
    .line 97
    if-eqz v1, :cond_c

    .line 98
    .line 99
    const-string v1, "Compose:unobserve"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/Trace;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 104
    .line 105
    :try_start_6
    iput-boolean v5, p0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    .line 106
    .line 107
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 111
    move-result v2

    .line 112
    move v3, v5

    .line 113
    move v4, v3

    .line 114
    :goto_1
    const/4 v6, 0x0

    .line 115
    .line 116
    if-ge v3, v2, :cond_a

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 120
    move-result-object v7

    .line 121
    .line 122
    aget v7, v7, v3

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->i()[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 126
    move-result-object v8

    .line 127
    .line 128
    aget-object v8, v8, v7

    .line 129
    .line 130
    .line 131
    invoke-static {v8}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 135
    move-result v9

    .line 136
    move v10, v5

    .line 137
    move v11, v10

    .line 138
    .line 139
    :goto_2
    if-ge v10, v9, :cond_6

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 143
    move-result-object v12

    .line 144
    .line 145
    aget-object v12, v12, v10

    .line 146
    .line 147
    if-eqz v12, :cond_5

    .line 148
    move-object v13, v12

    .line 149
    .line 150
    check-cast v13, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13}, Landroidx/compose/runtime/RecomposeScopeImpl;->s()Z

    .line 154
    move-result v13

    .line 155
    .line 156
    xor-int/lit8 v13, v13, 0x1

    .line 157
    .line 158
    if-nez v13, :cond_4

    .line 159
    .line 160
    if-eq v11, v10, :cond_3

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 164
    move-result-object v13

    .line 165
    .line 166
    aput-object v12, v13, v11

    .line 167
    goto :goto_3

    .line 168
    :catchall_1
    move-exception v1

    .line 169
    goto :goto_6

    .line 170
    .line 171
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 172
    .line 173
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 174
    goto :goto_2

    .line 175
    .line 176
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    .line 177
    .line 178
    const-string v2, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 182
    throw v1

    .line 183
    .line 184
    .line 185
    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 186
    move-result v9

    .line 187
    move v10, v11

    .line 188
    .line 189
    :goto_4
    if-ge v10, v9, :cond_7

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 193
    move-result-object v12

    .line 194
    .line 195
    aput-object v6, v12, v10

    .line 196
    .line 197
    add-int/lit8 v10, v10, 0x1

    .line 198
    goto :goto_4

    .line 199
    .line 200
    .line 201
    :cond_7
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/collection/IdentityArraySet;->g(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 205
    move-result v6

    .line 206
    .line 207
    if-lez v6, :cond_9

    .line 208
    .line 209
    if-eq v4, v3, :cond_8

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 213
    move-result-object v6

    .line 214
    .line 215
    aget v6, v6, v4

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 219
    move-result-object v8

    .line 220
    .line 221
    aput v7, v8, v4

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 225
    move-result-object v7

    .line 226
    .line 227
    aput v6, v7, v3

    .line 228
    .line 229
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 230
    .line 231
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 232
    goto :goto_1

    .line 233
    .line 234
    .line 235
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 236
    move-result v2

    .line 237
    move v3, v4

    .line 238
    .line 239
    :goto_5
    if-ge v3, v2, :cond_b

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->l()[Ljava/lang/Object;

    .line 243
    move-result-object v5

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 247
    move-result-object v7

    .line 248
    .line 249
    aget v7, v7, v3

    .line 250
    .line 251
    aput-object v6, v5, v7

    .line 252
    .line 253
    add-int/lit8 v3, v3, 0x1

    .line 254
    goto :goto_5

    .line 255
    .line 256
    .line 257
    :cond_b
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/IdentityScopeMap;->p(I)V

    .line 258
    .line 259
    .line 260
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->s()V

    .line 261
    .line 262
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 263
    .line 264
    :try_start_7
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 268
    goto :goto_7

    .line 269
    :catchall_2
    move-exception p1

    .line 270
    goto :goto_a

    .line 271
    .line 272
    :goto_6
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 276
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 277
    .line 278
    :cond_c
    :goto_7
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Ljava/util/List;

    .line 279
    .line 280
    .line 281
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 282
    move-result p1

    .line 283
    .line 284
    if-eqz p1, :cond_d

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->d()V

    .line 288
    :cond_d
    return-void

    .line 289
    :catchall_3
    move-exception p1

    .line 290
    goto :goto_9

    .line 291
    .line 292
    .line 293
    :goto_8
    :try_start_8
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 294
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 295
    .line 296
    :goto_9
    :try_start_9
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 300
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 301
    .line 302
    :goto_a
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Ljava/util/List;

    .line 303
    .line 304
    .line 305
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 306
    move-result v1

    .line 307
    .line 308
    if-eqz v1, :cond_e

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->d()V

    .line 312
    :cond_e
    throw p1
.end method

.method private final s()V
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    const/4 v5, 0x0

    .line 11
    .line 12
    if-ge v3, v1, :cond_7

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 16
    move-result-object v6

    .line 17
    .line 18
    aget v6, v6, v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->i()[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 22
    move-result-object v7

    .line 23
    .line 24
    aget-object v7, v7, v6

    .line 25
    .line 26
    .line 27
    invoke-static {v7}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 31
    move-result v8

    .line 32
    move v9, v2

    .line 33
    move v10, v9

    .line 34
    .line 35
    :goto_1
    if-ge v9, v8, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 39
    move-result-object v11

    .line 40
    .line 41
    aget-object v11, v11, v9

    .line 42
    .line 43
    if-eqz v11, :cond_2

    .line 44
    move-object v12, v11

    .line 45
    .line 46
    check-cast v12, Landroidx/compose/runtime/DerivedState;

    .line 47
    .line 48
    iget-object v13, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->e(Ljava/lang/Object;)Z

    .line 52
    move-result v12

    .line 53
    .line 54
    xor-int/lit8 v12, v12, 0x1

    .line 55
    .line 56
    if-nez v12, :cond_1

    .line 57
    .line 58
    if-eq v10, v9, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 62
    move-result-object v12

    .line 63
    .line 64
    aput-object v11, v12, v10

    .line 65
    .line 66
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 67
    .line 68
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 72
    .line 73
    const-string v1, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 81
    move-result v8

    .line 82
    move v9, v10

    .line 83
    .line 84
    :goto_2
    if-ge v9, v8, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 88
    move-result-object v11

    .line 89
    .line 90
    aput-object v5, v11, v9

    .line 91
    .line 92
    add-int/lit8 v9, v9, 0x1

    .line 93
    goto :goto_2

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/collection/IdentityArraySet;->g(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 100
    move-result v5

    .line 101
    .line 102
    if-lez v5, :cond_6

    .line 103
    .line 104
    if-eq v4, v3, :cond_5

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 108
    move-result-object v5

    .line 109
    .line 110
    aget v5, v5, v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 114
    move-result-object v7

    .line 115
    .line 116
    aput v6, v7, v4

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 120
    move-result-object v6

    .line 121
    .line 122
    aput v5, v6, v3

    .line 123
    .line 124
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 127
    goto :goto_0

    .line 128
    .line 129
    .line 130
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 131
    move-result v1

    .line 132
    move v2, v4

    .line 133
    .line 134
    :goto_3
    if-ge v2, v1, :cond_8

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->l()[Ljava/lang/Object;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 142
    move-result-object v6

    .line 143
    .line 144
    aget v6, v6, v2

    .line 145
    .line 146
    aput-object v5, v3, v6

    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    goto :goto_3

    .line 150
    .line 151
    .line 152
    :cond_8
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/collection/IdentityScopeMap;->p(I)V

    .line 153
    .line 154
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    const-string v1, "iterator()"

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    move-result v1

    .line 168
    .line 169
    if-eqz v1, :cond_a

    .line 170
    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->u()Z

    .line 179
    move-result v1

    .line 180
    .line 181
    xor-int/lit8 v1, v1, 0x1

    .line 182
    .line 183
    if-eqz v1, :cond_9

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 187
    goto :goto_4

    .line 188
    :cond_a
    return-void
.end method

.method private final x()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->c()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->c()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    instance-of v1, v0, Ljava/util/Set;

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    check-cast v0, Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/CompositionImpl;->p(Ljava/util/Set;Z)V

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    check-cast v0, [Ljava/util/Set;

    .line 40
    array-length v1, v0

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    :goto_0
    if-ge v3, v1, :cond_3

    .line 44
    .line 45
    aget-object v4, v0, v3

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/CompositionImpl;->p(Ljava/util/Set;Z)V

    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v2, "corrupt pendingModifications drain: "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0

    .line 81
    .line 82
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v1, "pending composition has not been applied"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    throw v0

    .line 93
    :cond_3
    :goto_1
    return-void
.end method

.method private final y()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->c()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    instance-of v1, v0, Ljava/util/Set;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/CompositionImpl;->p(Ljava/util/Set;Z)V

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    check-cast v0, [Ljava/util/Set;

    .line 35
    array-length v1, v0

    .line 36
    move v3, v2

    .line 37
    .line 38
    :goto_0
    if-ge v3, v1, :cond_3

    .line 39
    .line 40
    aget-object v4, v0, v3

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/CompositionImpl;->p(Ljava/util/Set;Z)V

    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    if-nez v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v1, "calling recordModificationsOf and applyChanges concurrently is not supported"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0

    .line 61
    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    const-string v2, "corrupt pendingModifications drain: "

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    throw v0

    .line 90
    :cond_3
    :goto_1
    return-void
.end method

.method private final z()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->B0()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public final A()Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Le8/p;

    return-object v0
.end method

.method public final B()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->_recomposeContext:Lkotlin/coroutines/g;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->h()Lkotlin/coroutines/g;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public final C(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 2
    .param p1    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "scope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->m()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->C(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->j()Landroidx/compose/runtime/Anchor;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotTable;->u(Landroidx/compose/runtime/Anchor;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/Anchor;->b()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/Anchor;->b()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 45
    return-object p1

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->k()Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 54
    return-object p1

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-direct {p0, p1, v0, p2}, Landroidx/compose/runtime/CompositionImpl;->D(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    .line 61
    :cond_4
    :goto_0
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 62
    return-object p1
.end method

.method public final F(Landroidx/compose/runtime/DerivedState;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/DerivedState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "state"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->e(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->n(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method

.method public final G(Ljava/lang/Object;Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "instance"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "scope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public final H(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    return-void
.end method

.method public a(Le8/p;)V
    .locals 3
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    const-string v0, "content"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 8
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->x()V

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->I()Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2, p1}, Landroidx/compose/runtime/ComposerImpl;->m0(Landroidx/compose/runtime/collection/IdentityArrayMap;Le8/p;)V

    .line 21
    .line 22
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception p1

    .line 28
    monitor-exit v0

    .line 29
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    xor-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->d()V

    .line 50
    :cond_0
    throw p1
.end method

.method public b(Landroidx/compose/runtime/MovableContentState;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/MovableContentState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "state"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentState;->a()Landroidx/compose/runtime/SlotTable;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->t()Landroidx/compose/runtime/SlotWriter;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->U(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 24
    .line 25
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->e()V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 37
    throw v0
.end method

.method public c(Landroidx/compose/runtime/ControlledComposition;ILe8/a;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "I",
            "Le8/a<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    if-ltz p2, :cond_0

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 20
    .line 21
    iput p2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 22
    const/4 p1, 0x0

    .line 23
    const/4 p2, 0x0

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-interface {p3}, Le8/a;->invoke()Ljava/lang/Object;

    .line 27
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 30
    .line 31
    iput p1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p3

    .line 34
    .line 35
    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 36
    .line 37
    iput p1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 38
    throw p3

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-interface {p3}, Le8/a;->invoke()Ljava/lang/Object;

    .line 42
    move-result-object p3

    .line 43
    :goto_0
    return-object p3
.end method

.method public d(Ljava/util/Set;)Z
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "values"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->e(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->e(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public e()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->j0()V

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    xor-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->d()V

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    :goto_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0

    .line 37
    throw v1
.end method

.method public f()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Ljava/util/List;

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
    .line 13
    xor-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->r(Ljava/util/List;)V

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    :goto_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0

    .line 29
    throw v1
.end method

.method public g(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw7/u<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "references"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    const/4 v3, 0x1

    .line 13
    .line 14
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    check-cast v4, Lw7/u;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Lw7/u;->c()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Landroidx/compose/runtime/MovableContentStateReference;->b()Landroidx/compose/runtime/ControlledComposition;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    invoke-static {v4, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v1, v3

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->X(Z)V

    .line 45
    .line 46
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->G0(Ljava/util/List;)V

    .line 50
    .line 51
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 59
    move-result v0

    .line 60
    xor-int/2addr v0, v3

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->d()V

    .line 73
    :cond_2
    throw p1
.end method

.method public h()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    :try_start_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->I()Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->X0(Landroidx/compose/runtime/collection/IdentityArrayMap;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return v1

    .line 27
    .line 28
    :goto_1
    :try_start_2
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    xor-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    new-instance v2, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->d()V

    .line 47
    goto :goto_2

    .line 48
    :catchall_1
    move-exception v1

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    :goto_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_3
    monitor-exit v0

    .line 52
    throw v1
.end method

.method public i(Le8/a;)V
    .locals 1
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->Q0(Le8/a;)V

    .line 11
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->z()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->D0()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->G(Z)V

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1, v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    instance-of v1, p1, Landroidx/compose/runtime/DerivedState;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->n(Ljava/lang/Object;)V

    .line 38
    move-object v1, p1

    .line 39
    .line 40
    check-cast v1, Landroidx/compose/runtime/DerivedState;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Landroidx/compose/runtime/DerivedState;->i()Ljava/util/Set;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    check-cast v2, Landroidx/compose/runtime/snapshots/StateObject;

    .line 61
    .line 62
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->w(Ljava/lang/Object;)V

    .line 70
    :cond_1
    return-void
.end method

.method public k(Ljava/util/Set;)V
    .locals 4
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "values"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->c()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    :goto_0
    move-object v1, p1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_2
    instance-of v1, v0, Ljava/util/Set;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    const/4 v1, 0x2

    .line 32
    .line 33
    new-array v1, v1, [Ljava/util/Set;

    .line 34
    const/4 v2, 0x0

    .line 35
    move-object v3, v0

    .line 36
    .line 37
    check-cast v3, Ljava/util/Set;

    .line 38
    .line 39
    aput-object v3, v1, v2

    .line 40
    const/4 v2, 0x1

    .line 41
    .line 42
    aput-object p1, v1, v2

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_3
    instance-of v1, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    if-eqz v1, :cond_6

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    move-object v1, v0

    .line 51
    .line 52
    check-cast v1, [Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    invoke-static {v1, p1}, Lkotlin/collections/l;->w([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    :goto_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 69
    monitor-enter p1

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->y()V

    .line 73
    .line 74
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p1

    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    monitor-exit p1

    .line 79
    throw v0

    .line 80
    :cond_4
    :goto_2
    return-void

    .line 81
    .line 82
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 83
    .line 84
    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>"

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    .line 90
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    const-string v1, "corrupt pendingModifications: "

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p1
.end method

.method public l()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->r(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->y()V

    .line 12
    .line 13
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0

    .line 18
    throw v1
.end method

.method public m()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->M0()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public n(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->E(Ljava/lang/Object;)V

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->a(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    .line 17
    move-result p1

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {v1, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->b(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Landroidx/compose/runtime/DerivedState;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->E(Ljava/lang/Object;)V

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0

    .line 51
    throw p1
.end method

.method public o()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->j()[Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    :goto_0
    if-ge v3, v2, :cond_2

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    instance-of v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    check-cast v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    const/4 v4, 0x0

    .line 26
    .line 27
    :goto_1
    if-eqz v4, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidate()V

    .line 31
    .line 32
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_2
    monitor-exit v0

    .line 39
    throw v1
.end method

.method public t()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    .line 6
    .line 7
    if-nez v1, :cond_4

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    .line 11
    .line 12
    sget-object v2, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->b()Le8/p;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    iput-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Le8/p;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->g()I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-lez v2, :cond_0

    .line 27
    move v2, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    .line 31
    :goto_0
    if-nez v2, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 37
    move-result v3

    .line 38
    xor-int/2addr v1, v3

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_3

    .line 44
    .line 45
    :cond_1
    :goto_1
    new-instance v1, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v3}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->t()Landroidx/compose/runtime/SlotWriter;

    .line 58
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :try_start_1
    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposerKt;->U(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 62
    .line 63
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .line 65
    .line 66
    :try_start_2
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 67
    .line 68
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 69
    .line 70
    .line 71
    invoke-interface {v2}, Landroidx/compose/runtime/Applier;->clear()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->e()V

    .line 75
    goto :goto_2

    .line 76
    :catchall_1
    move-exception v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 80
    throw v1

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->d()V

    .line 84
    .line 85
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->r0()V

    .line 89
    .line 90
    :cond_4
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    monitor-exit v0

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/CompositionContext;->q(Landroidx/compose/runtime/ControlledComposition;)V

    .line 97
    return-void

    .line 98
    :goto_3
    monitor-exit v0

    .line 99
    throw v1
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    return v0
.end method

.method public v(Le8/p;)V
    .locals 1
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    const-string v0, "content"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Le8/p;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Landroidx/compose/runtime/CompositionContext;->a(Landroidx/compose/runtime/ControlledComposition;Le8/p;)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "The composition is disposed"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
.end method

.method public w()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->f()I

    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0

    .line 19
    throw v1
.end method
