.class public final Landroidx/compose/runtime/ComposerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/Composer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;,
        Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 4 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 BitwiseOperators.kt\nandroidx/compose/runtime/BitwiseOperatorsKt\n+ 7 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 9 IdentityArrayMap.kt\nandroidx/compose/runtime/collection/IdentityArrayMap\n*L\n1#1,4249:1\n3039#1,4:4286\n3049#1,6:4306\n3039#1,6:4312\n3056#1,2:4318\n3055#1:4320\n3044#1:4328\n3043#1:4329\n1#2:4250\n146#3,8:4251\n146#3,8:4294\n146#3,4:4302\n151#3,2:4321\n150#3,4:4323\n46#4,5:4259\n46#4,3:4357\n50#4:4363\n49#4:4367\n4234#5,5:4264\n4234#5,5:4269\n297#5:4274\n4234#5,5:4276\n4234#5,5:4281\n4234#5,5:4337\n4234#5,5:4342\n4234#5,5:4347\n4234#5,5:4352\n4234#5,5:4368\n4234#5,5:4373\n4234#5,5:4378\n4234#5,5:4383\n4234#5,5:4388\n4234#5,5:4393\n4234#5,5:4398\n28#6:4275\n28#6:4403\n23#6:4404\n32#7,4:4290\n37#7:4327\n32#7,4:4330\n37#7:4336\n79#7,3:4405\n32#7,4:4408\n82#7,2:4412\n37#7:4414\n84#7:4415\n1849#8,2:4334\n1000#8,2:4365\n132#9,3:4360\n136#9:4364\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl\n*L\n2889#1:4286,4\n2992#1:4306,6\n2998#1:4312,6\n2992#1:4318,2\n2992#1:4320\n2889#1:4328\n2889#1:4329\n1229#1:4251,8\n2917#1:4294,8\n2991#1:4302,4\n2991#1:4321,2\n2991#1:4323,4\n1457#1:4259,5\n3159#1:4357,3\n3159#1:4363\n3159#1:4367\n1531#1:4264,5\n1558#1:4269,5\n1856#1:4274\n2634#1:4276,5\n2647#1:4281,5\n3118#1:4337,5\n3123#1:4342,5\n3138#1:4347,5\n3158#1:4352,5\n3225#1:4368,5\n3232#1:4373,5\n3369#1:4378,5\n3560#1:4383,5\n3576#1:4388,5\n3577#1:4393,5\n3601#1:4398,5\n2559#1:4275\n3796#1:4403\n3812#1:4404\n2891#1:4290,4\n2891#1:4327\n3075#1:4330,4\n3075#1:4336\n3453#1:4405,3\n3453#1:4408,4\n3453#1:4412,2\n3453#1:4414\n3453#1:4415\n3077#1:4334,2\n3167#1:4365,2\n3163#1:4360,3\n3163#1:4364\n*E\n"
.end annotation


# instance fields
.field private final abandonSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
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

.field private changes:Ljava/util/List;
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

.field private childrenComposing:I

.field private final composition:Landroidx/compose/runtime/ControlledComposition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private compositionToken:I

.field private compoundKeyHash:I

.field private downNodes:Landroidx/compose/runtime/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final entersStack:Landroidx/compose/runtime/IntStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private forceRecomposeScopes:Z

.field private forciblyRecompose:Z

.field private groupNodeCount:I

.field private groupNodeCountStack:Landroidx/compose/runtime/IntStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private implicitRootStart:Z

.field private insertAnchor:Landroidx/compose/runtime/Anchor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final insertFixups:Ljava/util/List;
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

.field private insertTable:Landroidx/compose/runtime/SlotTable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final insertUpFixups:Landroidx/compose/runtime/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Stack<",
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

.field private inserting:Z

.field private final invalidateStack:Landroidx/compose/runtime/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Stack<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final invalidations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isComposing:Z

.field private isDisposed:Z

.field private lateChanges:Ljava/util/List;
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

.field private nodeCountOverrides:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nodeCountVirtualOverrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nodeExpected:Z

.field private nodeIndex:I

.field private nodeIndexStack:Landroidx/compose/runtime/IntStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentContext:Landroidx/compose/runtime/CompositionContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pending:Landroidx/compose/runtime/Pending;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pendingStack:Landroidx/compose/runtime/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Stack<",
            "Landroidx/compose/runtime/Pending;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingUps:I

.field private previousCount:I

.field private previousMoveFrom:I

.field private previousMoveTo:I

.field private previousRemove:I

.field private providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final providerUpdates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private providersInvalid:Z

.field private final providersInvalidStack:Landroidx/compose/runtime/IntStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private reader:Landroidx/compose/runtime/SlotReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private reusing:Z

.field private reusingGroup:I

.field private final slotTable:Landroidx/compose/runtime/SlotTable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private snapshot:Landroidx/compose/runtime/snapshots/Snapshot;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startedGroup:Z

.field private final startedGroups:Landroidx/compose/runtime/IntStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private writer:Landroidx/compose/runtime/SlotWriter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private writerHasAProvider:Z

.field private writersReaderDelta:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/CompositionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Landroidx/compose/runtime/SlotTable;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;",
            "Ljava/util/List<",
            "Le8/q<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;>;",
            "Ljava/util/List<",
            "Le8/q<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;>;",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "applier"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "parentContext"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v0, "slotTable"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "abandonSet"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "changes"

    .line 23
    .line 24
    .line 25
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v0, "lateChanges"

    .line 28
    .line 29
    .line 30
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    const-string v0, "composition"

    .line 33
    .line 34
    .line 35
    invoke-static {p7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 41
    .line 42
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 43
    .line 44
    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 45
    .line 46
    iput-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    .line 47
    .line 48
    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 49
    .line 50
    iput-object p6, p0, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Ljava/util/List;

    .line 51
    .line 52
    iput-object p7, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    .line 53
    .line 54
    new-instance p1, Landroidx/compose/runtime/Stack;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1}, Landroidx/compose/runtime/Stack;-><init>()V

    .line 58
    .line 59
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 60
    .line 61
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 65
    .line 66
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    .line 67
    .line 68
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 72
    .line 73
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 74
    .line 75
    new-instance p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 81
    .line 82
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 83
    .line 84
    .line 85
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 86
    .line 87
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 94
    .line 95
    new-instance p1, Ljava/util/HashMap;

    .line 96
    .line 97
    .line 98
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 99
    .line 100
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    .line 101
    .line 102
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 103
    .line 104
    .line 105
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 106
    .line 107
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 108
    const/4 p1, -0x1

    .line 109
    .line 110
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 111
    .line 112
    .line 113
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->B()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    .line 117
    .line 118
    new-instance p2, Landroidx/compose/runtime/Stack;

    .line 119
    .line 120
    .line 121
    invoke-direct {p2}, Landroidx/compose/runtime/Stack;-><init>()V

    .line 122
    .line 123
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotTable;->s()Landroidx/compose/runtime/SlotReader;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->d()V

    .line 131
    .line 132
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 133
    .line 134
    new-instance p2, Landroidx/compose/runtime/SlotTable;

    .line 135
    .line 136
    .line 137
    invoke-direct {p2}, Landroidx/compose/runtime/SlotTable;-><init>()V

    .line 138
    .line 139
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotTable;->t()Landroidx/compose/runtime/SlotWriter;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 147
    .line 148
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 149
    .line 150
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotTable;->s()Landroidx/compose/runtime/SlotReader;

    .line 154
    move-result-object p2

    .line 155
    const/4 p3, 0x0

    .line 156
    .line 157
    .line 158
    :try_start_0
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/SlotReader;->a(I)Landroidx/compose/runtime/Anchor;

    .line 159
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->d()V

    .line 163
    .line 164
    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 165
    .line 166
    new-instance p2, Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 172
    .line 173
    new-instance p2, Landroidx/compose/runtime/Stack;

    .line 174
    .line 175
    .line 176
    invoke-direct {p2}, Landroidx/compose/runtime/Stack;-><init>()V

    .line 177
    .line 178
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 179
    const/4 p2, 0x1

    .line 180
    .line 181
    iput-boolean p2, p0, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    .line 182
    .line 183
    new-instance p2, Landroidx/compose/runtime/IntStack;

    .line 184
    .line 185
    .line 186
    invoke-direct {p2}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 187
    .line 188
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 189
    .line 190
    new-instance p2, Landroidx/compose/runtime/Stack;

    .line 191
    .line 192
    .line 193
    invoke-direct {p2}, Landroidx/compose/runtime/Stack;-><init>()V

    .line 194
    .line 195
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertUpFixups:Landroidx/compose/runtime/Stack;

    .line 196
    .line 197
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    .line 198
    .line 199
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    .line 200
    .line 201
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    .line 202
    return-void

    .line 203
    :catchall_0
    move-exception p1

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->d()V

    .line 207
    throw p1
.end method

.method private final A0()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->W0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->c()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->d()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->k0()V

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    const-string v0, "Missed recording an endGroup()"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 33
    .line 34
    new-instance v0, Lw7/i;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 38
    throw v0

    .line 39
    .line 40
    :cond_1
    const-string v0, "Start/end imbalance"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 48
    .line 49
    new-instance v0, Lw7/i;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 53
    throw v0
.end method

.method private final A1(ILjava/lang/Object;ZLjava/lang/Object;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->Q1()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p4}, Landroidx/compose/runtime/ComposerImpl;->G1(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v4

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->c()V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 34
    .line 35
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 39
    move-result-object p4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SlotWriter;->W0(Ljava/lang/Object;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    if-eqz p4, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 48
    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v2, p1, p2, p4}, Landroidx/compose/runtime/SlotWriter;->S0(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    iget-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 62
    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p4, p1, p2}, Landroidx/compose/runtime/SlotWriter;->U0(ILjava/lang/Object;)V

    .line 73
    .line 74
    :goto_0
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 75
    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    new-instance p4, Landroidx/compose/runtime/KeyInfo;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->K0(I)I

    .line 82
    move-result v5

    .line 83
    const/4 v6, -0x1

    .line 84
    const/4 v7, 0x0

    .line 85
    move-object v2, p4

    .line 86
    move v3, p1

    .line 87
    .line 88
    .line 89
    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    .line 90
    .line 91
    iget p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroidx/compose/runtime/Pending;->e()I

    .line 95
    move-result v0

    .line 96
    sub-int/2addr p1, v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p4, p1}, Landroidx/compose/runtime/Pending;->i(Landroidx/compose/runtime/KeyInfo;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p4}, Landroidx/compose/runtime/Pending;->h(Landroidx/compose/runtime/KeyInfo;)Z

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-direct {p0, p3, v1}, Landroidx/compose/runtime/ComposerImpl;->y0(ZLandroidx/compose/runtime/Pending;)V

    .line 106
    return-void

    .line 107
    .line 108
    :cond_5
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 109
    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->n()I

    .line 116
    move-result v0

    .line 117
    .line 118
    if-ne v0, p1, :cond_6

    .line 119
    .line 120
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->o()Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    move-result v0

    .line 129
    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->D1(ZLjava/lang/Object;)V

    .line 134
    goto :goto_1

    .line 135
    .line 136
    :cond_6
    new-instance v0, Landroidx/compose/runtime/Pending;

    .line 137
    .line 138
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->h()Ljava/util/List;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, v2, v3}, Landroidx/compose/runtime/Pending;-><init>(Ljava/util/List;I)V

    .line 148
    .line 149
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 150
    .line 151
    :cond_7
    :goto_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 152
    .line 153
    if-eqz v0, :cond_f

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/Pending;->d(ILjava/lang/Object;)Landroidx/compose/runtime/KeyInfo;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Pending;->h(Landroidx/compose/runtime/KeyInfo;)Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 166
    move-result p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Pending;->g(Landroidx/compose/runtime/KeyInfo;)I

    .line 170
    move-result p2

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->e()I

    .line 174
    move-result v3

    .line 175
    add-int/2addr p2, v3

    .line 176
    .line 177
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Pending;->m(Landroidx/compose/runtime/KeyInfo;)I

    .line 181
    move-result p2

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->a()I

    .line 185
    move-result v2

    .line 186
    .line 187
    sub-int v2, p2, v2

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->a()I

    .line 191
    move-result v3

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p2, v3}, Landroidx/compose/runtime/Pending;->k(II)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->l1(I)V

    .line 198
    .line 199
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->N(I)V

    .line 203
    .line 204
    if-lez v2, :cond_8

    .line 205
    .line 206
    new-instance p1, Landroidx/compose/runtime/ComposerImpl$start$2;

    .line 207
    .line 208
    .line 209
    invoke-direct {p1, v2}, Landroidx/compose/runtime/ComposerImpl$start$2;-><init>(I)V

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->o1(Le8/q;)V

    .line 213
    .line 214
    .line 215
    :cond_8
    invoke-direct {p0, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->D1(ZLjava/lang/Object;)V

    .line 216
    .line 217
    goto/16 :goto_4

    .line 218
    .line 219
    :cond_9
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->c()V

    .line 223
    const/4 v2, 0x1

    .line 224
    .line 225
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    .line 226
    .line 227
    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 228
    .line 229
    .line 230
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->x0()V

    .line 231
    .line 232
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->D()V

    .line 236
    .line 237
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 241
    move-result v1

    .line 242
    .line 243
    if-eqz p3, :cond_a

    .line 244
    .line 245
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 246
    .line 247
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 251
    move-result-object p4

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SlotWriter;->W0(Ljava/lang/Object;)V

    .line 255
    goto :goto_2

    .line 256
    .line 257
    :cond_a
    if-eqz p4, :cond_c

    .line 258
    .line 259
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 260
    .line 261
    if-nez p2, :cond_b

    .line 262
    .line 263
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 267
    move-result-object p2

    .line 268
    .line 269
    .line 270
    :cond_b
    invoke-virtual {v2, p1, p2, p4}, Landroidx/compose/runtime/SlotWriter;->S0(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 271
    goto :goto_2

    .line 272
    .line 273
    :cond_c
    iget-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 274
    .line 275
    if-nez p2, :cond_d

    .line 276
    .line 277
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 281
    move-result-object p2

    .line 282
    .line 283
    .line 284
    :cond_d
    invoke-virtual {p4, p1, p2}, Landroidx/compose/runtime/SlotWriter;->U0(ILjava/lang/Object;)V

    .line 285
    .line 286
    :goto_2
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/SlotWriter;->A(I)Landroidx/compose/runtime/Anchor;

    .line 290
    move-result-object p2

    .line 291
    .line 292
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 293
    .line 294
    new-instance p2, Landroidx/compose/runtime/KeyInfo;

    .line 295
    .line 296
    .line 297
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->K0(I)I

    .line 298
    move-result v5

    .line 299
    const/4 v6, -0x1

    .line 300
    const/4 v7, 0x0

    .line 301
    move-object v2, p2

    .line 302
    move v3, p1

    .line 303
    .line 304
    .line 305
    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    .line 306
    .line 307
    iget p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->e()I

    .line 311
    move-result p4

    .line 312
    sub-int/2addr p1, p4

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, p2, p1}, Landroidx/compose/runtime/Pending;->i(Landroidx/compose/runtime/KeyInfo;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/Pending;->h(Landroidx/compose/runtime/KeyInfo;)Z

    .line 319
    .line 320
    new-instance v1, Landroidx/compose/runtime/Pending;

    .line 321
    .line 322
    new-instance p1, Ljava/util/ArrayList;

    .line 323
    .line 324
    .line 325
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .line 327
    if-eqz p3, :cond_e

    .line 328
    const/4 p2, 0x0

    .line 329
    goto :goto_3

    .line 330
    .line 331
    :cond_e
    iget p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 332
    .line 333
    .line 334
    :goto_3
    invoke-direct {v1, p1, p2}, Landroidx/compose/runtime/Pending;-><init>(Ljava/util/List;I)V

    .line 335
    .line 336
    .line 337
    :cond_f
    :goto_4
    invoke-direct {p0, p3, v1}, Landroidx/compose/runtime/ComposerImpl;->y0(ZLandroidx/compose/runtime/Pending;)V

    .line 338
    return-void
.end method

.method private final B1(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final C1(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final D1(ZLjava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->S()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->l()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eq p1, p2, :cond_1

    .line 19
    .line 20
    new-instance p1, Landroidx/compose/runtime/ComposerImpl$startReaderGroup$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p2}, Landroidx/compose/runtime/ComposerImpl$startReaderGroup$1;-><init>(Ljava/lang/Object;)V

    .line 24
    const/4 p2, 0x1

    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v1, p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->q1(Landroidx/compose/runtime/ComposerImpl;ZLe8/q;ILjava/lang/Object;)V

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->R()V

    .line 35
    :goto_0
    return-void
.end method

.method private final E0(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SlotReader;->I(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private final E1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->s()Landroidx/compose/runtime/SlotReader;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 9
    .line 10
    const/16 v0, 0x64

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->B1(I)V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->o()V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->e()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 29
    .line 30
    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->b(Z)I

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->i(I)V

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->k(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 46
    const/4 v0, 0x0

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 49
    .line 50
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->d()Z

    .line 58
    move-result v0

    .line 59
    .line 60
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->w1(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    check-cast v0, Ljava/util/Set;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/CompositionContext;->m(Ljava/util/Set;)V

    .line 85
    .line 86
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->f()I

    .line 90
    move-result v0

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->B1(I)V

    .line 94
    return-void
.end method

.method private final F0(Landroidx/compose/runtime/SlotReader;I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->D(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->A(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    instance-of p2, p1, Ljava/lang/Enum;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Enum;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result p1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    instance-of p2, p1, Landroidx/compose/runtime/MovableContent;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    .line 30
    const p1, 0x78cc281

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 35
    move-result p1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->z(I)I

    .line 42
    move-result v0

    .line 43
    .line 44
    const/16 v1, 0xcf

    .line 45
    .line 46
    if-ne v0, v1, :cond_5

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->w(I)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result p2

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 69
    move-result v0

    .line 70
    :cond_5
    :goto_0
    move p1, v0

    .line 71
    :goto_1
    return p1
.end method

.method private final G1(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    const/16 p2, 0xcf

    .line 7
    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    .line 24
    move-result p1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->H1(I)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->H1(I)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    instance-of p1, p2, Ljava/lang/Enum;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    check-cast p2, Ljava/lang/Enum;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 42
    move-result p1

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->H1(I)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 50
    move-result p1

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->H1(I)V

    .line 54
    :goto_0
    return-void
.end method

.method private static final H0(Landroidx/compose/runtime/SlotWriter;)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->V()I

    .line 8
    move-result v1

    .line 9
    .line 10
    :goto_0
    if-ltz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->k0(I)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->y0(I)I

    .line 20
    move-result v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    add-int/2addr v1, v2

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    .line 27
    :goto_1
    if-ge v1, v0, :cond_4

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->f0(II)Z

    .line 31
    move-result v5

    .line 32
    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->k0(I)Z

    .line 37
    move-result v5

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    move v4, v3

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->k0(I)Z

    .line 47
    move-result v5

    .line 48
    .line 49
    if-eqz v5, :cond_3

    .line 50
    move v5, v2

    .line 51
    goto :goto_2

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->w0(I)I

    .line 55
    move-result v5

    .line 56
    :goto_2
    add-int/2addr v4, v5

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->c0(I)I

    .line 60
    move-result v5

    .line 61
    add-int/2addr v1, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    return v4
.end method

.method private final H1(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->O()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 9
    move-result v0

    .line 10
    xor-int/2addr p1, v0

    .line 11
    .line 12
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 13
    return-void
.end method

.method private static final I0(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/Applier<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->B(Landroidx/compose/runtime/Anchor;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-ge v0, p1, :cond_0

    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->X(Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/ComposerImpl;->J0(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->H0(Landroidx/compose/runtime/SlotWriter;)I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 29
    move-result v3

    .line 30
    .line 31
    if-ge v3, p1, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->e0(I)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->j0()Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 47
    move-result v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->u0(I)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Applier;->h(Ljava/lang/Object;)V

    .line 55
    move v0, v2

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->T0()V

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->N0()I

    .line 63
    move-result v3

    .line 64
    add-int/2addr v0, v3

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 69
    move-result p0

    .line 70
    .line 71
    if-ne p0, p1, :cond_4

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v1, v2

    .line 74
    .line 75
    .line 76
    :goto_2
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->X(Z)V

    .line 77
    return v0
.end method

.method private final I1(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    const/16 p2, 0xcf

    .line 7
    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    .line 24
    move-result p1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->J1(I)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->J1(I)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    instance-of p1, p2, Ljava/lang/Enum;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    check-cast p2, Ljava/lang/Enum;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 42
    move-result p1

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->J1(I)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 50
    move-result p1

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->J1(I)V

    .line 54
    :goto_0
    return-void
.end method

.method private static final J0(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/Applier<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->g0(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->O0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->V()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->k0(I)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/compose/runtime/Applier;->i()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->N()I

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method private final J1(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->O()I

    .line 4
    move-result v0

    .line 5
    xor-int/2addr p1, v0

    .line 6
    const/4 v0, 0x3

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Integer;->rotateRight(II)I

    .line 10
    move-result p1

    .line 11
    .line 12
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 13
    return-void
.end method

.method private final K0(I)I
    .locals 0

    .line 1
    rsub-int/lit8 p1, p1, -0x2

    return p1
.end method

.method private final K1(II)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->O1(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eq v0, p2, :cond_3

    .line 7
    .line 8
    if-gez p1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->u()I

    .line 41
    move-result v0

    .line 42
    .line 43
    new-array v0, v0, [I

    .line 44
    const/4 v2, -0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x6

    .line 48
    const/4 v6, 0x0

    .line 49
    move-object v1, v0

    .line 50
    .line 51
    .line 52
    invoke-static/range {v1 .. v6}, Lkotlin/collections/l;->s([IIIIILjava/lang/Object;)V

    .line 53
    .line 54
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 55
    .line 56
    :cond_2
    aput p2, v0, p1

    .line 57
    :cond_3
    :goto_0
    return-void
.end method

.method private final L0(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Ljava/lang/Object;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContent<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object v1, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    .line 8
    const v4, 0x78cc281

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v4, p1}, Landroidx/compose/runtime/ComposerImpl;->K(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->k(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->O()I

    .line 18
    move-result v9

    .line 19
    .line 20
    iput v4, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x1

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 32
    .line 33
    .line 34
    invoke-static {v4, v6, v7, v5}, Landroidx/compose/runtime/SlotWriter;->m0(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 38
    move-result v4

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    :cond_1
    move v4, v6

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->l()Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    invoke-static {v4, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v4

    .line 53
    .line 54
    if-nez v4, :cond_1

    .line 55
    move v4, v7

    .line 56
    .line 57
    :goto_0
    if-eqz v4, :cond_3

    .line 58
    .line 59
    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    .line 60
    .line 61
    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 65
    move-result v10

    .line 66
    .line 67
    .line 68
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v10

    .line 70
    .line 71
    .line 72
    invoke-interface {v8, v10, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    :cond_3
    const/16 v8, 0xca

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->F()Ljava/lang/Object;

    .line 78
    move-result-object v10

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v8, v10, v6, p2}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    if-nez p4, :cond_4

    .line 90
    .line 91
    iput-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    .line 92
    .line 93
    iput-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 94
    .line 95
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->V()I

    .line 99
    move-result v4

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/SlotWriter;->y0(I)I

    .line 103
    move-result v4

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/SlotWriter;->A(I)Landroidx/compose/runtime/Anchor;

    .line 107
    move-result-object v6

    .line 108
    .line 109
    new-instance v10, Landroidx/compose/runtime/MovableContentStateReference;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->C0()Landroidx/compose/runtime/ControlledComposition;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 119
    move-result-object v11

    .line 120
    .line 121
    .line 122
    invoke-static {p0, v5, v7, v5}, Landroidx/compose/runtime/ComposerImpl;->q0(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Integer;ILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 123
    move-result-object v12

    .line 124
    move-object v1, v10

    .line 125
    move-object v2, p1

    .line 126
    .line 127
    move-object/from16 v3, p3

    .line 128
    move-object v5, v8

    .line 129
    move-object v7, v11

    .line 130
    move-object v8, v12

    .line 131
    .line 132
    .line 133
    invoke-direct/range {v1 .. v8}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 134
    .line 135
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/CompositionContext;->i(Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 139
    goto :goto_1

    .line 140
    .line 141
    :cond_4
    iget-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 142
    .line 143
    iput-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 144
    .line 145
    new-instance v4, Landroidx/compose/runtime/ComposerImpl$invokeMovableContentLambda$1;

    .line 146
    .line 147
    .line 148
    invoke-direct {v4, p1, v3}, Landroidx/compose/runtime/ComposerImpl$invokeMovableContentLambda$1;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    const v2, 0x523154a4

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v7, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    .line 158
    invoke-static {p0, v2}, Landroidx/compose/runtime/ActualJvm_jvmKt;->b(Landroidx/compose/runtime/Composer;Le8/p;)V

    .line 159
    .line 160
    iput-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 161
    .line 162
    .line 163
    :goto_1
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 164
    .line 165
    iput v9, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->P()V

    .line 169
    return-void
.end method

.method private final L1(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->O1(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eq v0, p2, :cond_3

    .line 7
    sub-int/2addr p2, v0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->b()I

    .line 13
    move-result v0

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    :goto_0
    const/4 v1, -0x1

    .line 17
    .line 18
    if-eq p1, v1, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->O1(I)I

    .line 22
    move-result v2

    .line 23
    add-int/2addr v2, p2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, v2}, Landroidx/compose/runtime/ComposerImpl;->K1(II)V

    .line 27
    move v3, v0

    .line 28
    .line 29
    :goto_1
    if-ge v1, v3, :cond_1

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/Stack;->f(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    check-cast v4, Landroidx/compose/runtime/Pending;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, p1, v2}, Landroidx/compose/runtime/Pending;->n(II)Z

    .line 43
    move-result v4

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    add-int/lit8 v3, v3, -0x1

    .line 48
    move v0, v3

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_1
    :goto_2
    if-gez p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 60
    move-result p1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->G(I)Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->M(I)I

    .line 75
    move-result p1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-void
.end method

.method private final M1(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const/16 v0, 0xcc

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->J()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->C1(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->k(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->k(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 30
    return-object p1
.end method

.method private final O0(Landroidx/compose/runtime/SlotReader;I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->I(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private final O1(I)I
    .locals 1

    .line 1
    .line 2
    if-gez p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    aget v0, v0, p1

    .line 32
    .line 33
    if-ltz v0, :cond_2

    .line 34
    return v0

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->K(I)I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method private final P0(IIII)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/SlotReader;->M(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    :goto_0
    if-eq v0, p3, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->G(I)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->M(I)I

    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotReader;->G(I)Z

    .line 29
    move-result p3

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    const/4 p4, 0x0

    .line 33
    .line 34
    :cond_1
    if-ne v0, p2, :cond_2

    .line 35
    return p4

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->O1(I)I

    .line 39
    move-result p3

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Landroidx/compose/runtime/SlotReader;->K(I)I

    .line 45
    move-result p2

    .line 46
    sub-int/2addr p3, p2

    .line 47
    add-int/2addr p3, p4

    .line 48
    .line 49
    :cond_3
    if-ge p4, p3, :cond_4

    .line 50
    .line 51
    if-eq v0, p1, :cond_4

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    :goto_1
    if-ge v0, p1, :cond_4

    .line 56
    .line 57
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/SlotReader;->B(I)I

    .line 61
    move-result p2

    .line 62
    add-int/2addr p2, v0

    .line 63
    .line 64
    if-lt p1, p2, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->O1(I)I

    .line 68
    move-result v0

    .line 69
    add-int/2addr p4, v0

    .line 70
    move v0, p2

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    return p4
.end method

.method private final P1()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 18
    .line 19
    new-instance v0, Lw7/i;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 23
    throw v0
.end method

.method private final Q1()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const-string v0, "A call to createNode(), emitNode() or useNode() expected"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 17
    .line 18
    new-instance v0, Lw7/i;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 22
    throw v0
.end method

.method private final R()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->k0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->a()V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->a()V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->a()V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->a()V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->a()V

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->d()V

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 42
    .line 43
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    .line 44
    .line 45
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    .line 50
    return-void
.end method

.method private final R0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->d()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->i()[Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->S0([Ljava/lang/Object;)V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->a()V

    .line 23
    :cond_0
    return-void
.end method

.method public static final synthetic S(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 4
    return-void
.end method

.method private final S0([Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$realizeDowns$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComposerImpl$realizeDowns$1;-><init>([Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 9
    return-void
.end method

.method public static final synthetic T(Landroidx/compose/runtime/ComposerImpl;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method private final T0()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    .line 10
    const/4 v2, -0x1

    .line 11
    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    .line 15
    .line 16
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$realizeMovement$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/ComposerImpl$realizeMovement$1;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->c1(Le8/q;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    .line 26
    .line 27
    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    .line 28
    .line 29
    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    .line 30
    .line 31
    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    .line 32
    .line 33
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$realizeMovement$2;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v1, v3, v0}, Landroidx/compose/runtime/ComposerImpl$realizeMovement$2;-><init>(III)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->c1(Le8/q;)V

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic U(Landroidx/compose/runtime/ComposerImpl;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    .line 3
    return p0
.end method

.method private final U0(Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 15
    move-result p1

    .line 16
    .line 17
    :goto_0
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 18
    .line 19
    sub-int v0, p1, v0

    .line 20
    .line 21
    if-ltz v0, :cond_1

    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    .line 26
    :goto_1
    if-eqz v1, :cond_3

    .line 27
    .line 28
    if-lez v0, :cond_2

    .line 29
    .line 30
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$realizeOperationLocation$2;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComposerImpl$realizeOperationLocation$2;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 37
    .line 38
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 39
    :cond_2
    return-void

    .line 40
    .line 41
    :cond_3
    const-string p1, "Tried to seek backward"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 49
    .line 50
    new-instance p1, Lw7/i;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 54
    throw p1
.end method

.method public static final synthetic V(Landroidx/compose/runtime/ComposerImpl;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    .line 3
    return p0
.end method

.method static synthetic V0(Landroidx/compose/runtime/ComposerImpl;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->U0(Z)V

    .line 9
    return-void
.end method

.method public static final synthetic W(Landroidx/compose/runtime/ComposerImpl;)[I
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 3
    return-object p0
.end method

.method private final W0()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$realizeUps$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComposerImpl$realizeUps$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 16
    :cond_0
    return-void
.end method

.method public static final synthetic X(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 3
    return-object p0
.end method

.method public static final synthetic Y(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    return-object p0
.end method

.method private final Y0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Le8/a;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lw7/u<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Le8/a<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 5
    .line 6
    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    :try_start_0
    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    iput-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 13
    .line 14
    iput v3, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 15
    .line 16
    .line 17
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 18
    move-result v4

    .line 19
    .line 20
    :goto_0
    if-ge v3, v4, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 25
    .line 26
    check-cast v5, Lw7/u;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Lw7/u;->a()Ljava/lang/Object;

    .line 30
    move-result-object v6

    .line 31
    .line 32
    check-cast v6, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Lw7/u;->b()Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    check-cast v5, Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v7

    .line 49
    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v7

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->F1(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_3

    .line 61
    :cond_0
    const/4 v5, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v6, v5}, Landroidx/compose/runtime/ComposerImpl;->F1(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 65
    .line 66
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_2
    if-eqz p1, :cond_4

    .line 70
    .line 71
    if-eqz p3, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result p3

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const/4 p3, -0x1

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-interface {p1, p2, p3, p5}, Landroidx/compose/runtime/ControlledComposition;->c(Landroidx/compose/runtime/ControlledComposition;ILe8/a;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-interface {p5}, Le8/a;->invoke()Ljava/lang/Object;

    .line 87
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    :cond_5
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    .line 90
    .line 91
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 92
    .line 93
    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 94
    return-object p1

    .line 95
    .line 96
    :goto_3
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    .line 97
    .line 98
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 99
    .line 100
    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 101
    throw p1
.end method

.method public static final synthetic Z(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotTable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 3
    return-object p0
.end method

.method static synthetic Z0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Le8/a;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    move-object v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v2, p1

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p1, p6, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    move-object v3, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v3, p2

    .line 16
    .line 17
    :goto_1
    and-int/lit8 p1, p6, 0x4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    move-object v4, v0

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v4, p3

    .line 23
    .line 24
    :goto_2
    and-int/lit8 p1, p6, 0x8

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 30
    move-result-object p4

    .line 31
    :cond_3
    move-object v5, p4

    .line 32
    move-object v1, p0

    .line 33
    move-object v6, p5

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl;->Y0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Le8/a;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static final synthetic a0(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->I0(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final a1()V
    .locals 12

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 11
    move-result v2

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SlotReader;->B(I)I

    .line 17
    move-result v3

    .line 18
    add-int/2addr v3, v2

    .line 19
    .line 20
    iget v4, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->O()I

    .line 24
    move-result v5

    .line 25
    .line 26
    iget v6, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 27
    .line 28
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 29
    .line 30
    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 34
    move-result v8

    .line 35
    .line 36
    .line 37
    invoke-static {v7, v8, v3}, Landroidx/compose/runtime/ComposerKt;->f(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    .line 38
    move-result-object v7

    .line 39
    const/4 v8, 0x0

    .line 40
    move v9, v2

    .line 41
    .line 42
    :goto_0
    if-eqz v7, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->b()I

    .line 46
    move-result v10

    .line 47
    .line 48
    iget-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-static {v11, v10}, Landroidx/compose/runtime/ComposerKt;->r(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->d()Z

    .line 55
    move-result v11

    .line 56
    .line 57
    if-eqz v11, :cond_0

    .line 58
    .line 59
    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/SlotReader;->N(I)V

    .line 63
    .line 64
    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 68
    move-result v8

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v9, v8, v2}, Landroidx/compose/runtime/ComposerImpl;->s1(III)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v10, v8, v2, v4}, Landroidx/compose/runtime/ComposerImpl;->P0(IIII)I

    .line 75
    move-result v9

    .line 76
    .line 77
    iput v9, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 78
    .line 79
    iget-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/SlotReader;->M(I)I

    .line 83
    move-result v9

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v9, v2, v5}, Landroidx/compose/runtime/ComposerImpl;->n0(III)I

    .line 87
    move-result v9

    .line 88
    .line 89
    iput v9, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 90
    const/4 v9, 0x0

    .line 91
    .line 92
    iput-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->c()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 96
    move-result-object v7

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->h(Landroidx/compose/runtime/Composer;)V

    .line 100
    .line 101
    iput-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 102
    .line 103
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/SlotReader;->O(I)V

    .line 107
    move v9, v8

    .line 108
    move v8, v1

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :cond_0
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->c()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 115
    move-result-object v11

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/Stack;->h(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->c()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 122
    move-result-object v7

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Landroidx/compose/runtime/RecomposeScopeImpl;->y()V

    .line 126
    .line 127
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Landroidx/compose/runtime/Stack;->g()Ljava/lang/Object;

    .line 131
    .line 132
    :goto_1
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 133
    .line 134
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 138
    move-result v10

    .line 139
    .line 140
    .line 141
    invoke-static {v7, v10, v3}, Landroidx/compose/runtime/ComposerKt;->f(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    .line 142
    move-result-object v7

    .line 143
    goto :goto_0

    .line 144
    .line 145
    :cond_1
    if-eqz v8, :cond_2

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, v9, v2, v2}, Landroidx/compose/runtime/ComposerImpl;->s1(III)V

    .line 149
    .line 150
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->Q()V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->O1(I)I

    .line 157
    move-result v1

    .line 158
    add-int/2addr v4, v1

    .line 159
    .line 160
    iput v4, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 161
    add-int/2addr v6, v1

    .line 162
    .line 163
    iput v6, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 164
    goto :goto_2

    .line 165
    .line 166
    .line 167
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->z1()V

    .line 168
    .line 169
    :goto_2
    iput v5, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 170
    .line 171
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 172
    return-void
.end method

.method public static final synthetic b0(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->J0(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V

    .line 4
    return-void
.end method

.method private final b1(Le8/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public static final synthetic c0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->L0(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Ljava/lang/Object;Z)V

    .line 4
    return-void
.end method

.method private final c1(Le8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->W0()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->R0()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 10
    return-void
.end method

.method public static final synthetic d0(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 3
    return-void
.end method

.method private final d1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->u1(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->i()Le8/q;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->o1(Le8/q;)V

    .line 17
    .line 18
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->p()I

    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    .line 27
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 28
    return-void
.end method

.method public static final synthetic e0(Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    .line 3
    return-void
.end method

.method private final e1(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Stack;->h(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public static final synthetic f0(Landroidx/compose/runtime/ComposerImpl;[I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 3
    return-void
.end method

.method private final f1()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 9
    const/4 v2, -0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->g(I)I

    .line 13
    move-result v1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    if-gt v1, v0, :cond_0

    .line 18
    move v1, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v3

    .line 21
    .line 22
    :goto_0
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->g(I)I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-ne v1, v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->h()I

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->g()Le8/q;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v3, v0, v4, v1}, Landroidx/compose/runtime/ComposerImpl;->q1(Landroidx/compose/runtime/ComposerImpl;ZLe8/q;ILjava/lang/Object;)V

    .line 44
    :cond_1
    return-void

    .line 45
    .line 46
    :cond_2
    const-string v0, "Missed recording an endGroup"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 54
    .line 55
    new-instance v0, Lw7/i;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 59
    throw v0
.end method

.method public static final synthetic g0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    return-void
.end method

.method private final g1()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->g()Le8/q;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v3, v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->q1(Landroidx/compose/runtime/ComposerImpl;ZLe8/q;ILjava/lang/Object;)V

    .line 15
    .line 16
    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    .line 17
    :cond_0
    return-void
.end method

.method public static final synthetic h0(Landroidx/compose/runtime/ComposerImpl;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->C1(ILjava/lang/Object;)V

    .line 4
    return-void
.end method

.method private final h1(Le8/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method private final i0()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->C0()Landroidx/compose/runtime/ControlledComposition;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Landroidx/compose/runtime/CompositionImpl;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/CompositionImpl;)V

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Stack;->h(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->N1(Ljava/lang/Object;)V

    .line 26
    .line 27
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->H(I)V

    .line 31
    goto :goto_2

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->r(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->H()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    new-instance v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->C0()Landroidx/compose/runtime/ControlledComposition;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/CompositionImpl;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->N1(Ljava/lang/Object;)V

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_1
    if-eqz v1, :cond_3

    .line 79
    .line 80
    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 81
    .line 82
    :goto_0
    if-eqz v0, :cond_2

    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/4 v0, 0x0

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->D(Z)V

    .line 89
    .line 90
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Stack;->h(Ljava/lang/Object;)Z

    .line 94
    .line 95
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->H(I)V

    .line 99
    :goto_2
    return-void

    .line 100
    .line 101
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 102
    .line 103
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 107
    throw v0
.end method

.method private final i1(Landroidx/compose/runtime/Anchor;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0, p1}, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;-><init>(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->o1(Le8/q;)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 22
    .line 23
    check-cast v0, Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/collections/t;->W0(Ljava/util/Collection;)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->W0()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->R0()V

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 41
    .line 42
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v1, p1, v0}, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;-><init>(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->o1(Le8/q;)V

    .line 49
    :goto_0
    return-void
.end method

.method private final j1(Le8/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertUpFixups:Landroidx/compose/runtime/Stack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Stack;->h(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method private final k0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->a()V

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->a()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->l0()V

    .line 30
    return-void
.end method

.method private final k1(III)V
    .locals 3

    .line 1
    .line 2
    if-lez p3, :cond_1

    .line 3
    .line 4
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    .line 9
    .line 10
    sub-int v2, p1, v0

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    .line 15
    .line 16
    sub-int v2, p2, v0

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    add-int/2addr v0, p3

    .line 20
    .line 21
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->T0()V

    .line 26
    .line 27
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    .line 28
    .line 29
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    .line 30
    .line 31
    iput p3, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private final l0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    return-void
.end method

.method private final l1(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 9
    sub-int/2addr v0, v1

    .line 10
    sub-int/2addr p1, v0

    .line 11
    .line 12
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 13
    return-void
.end method

.method private final m1(II)V
    .locals 1

    .line 1
    .line 2
    if-lez p2, :cond_3

    .line 3
    .line 4
    if-ltz p1, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    iget p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    .line 16
    add-int/2addr p1, p2

    .line 17
    .line 18
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    .line 19
    goto :goto_1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->T0()V

    .line 23
    .line 24
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    .line 25
    .line 26
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v0, "Invalid remove index "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 52
    .line 53
    new-instance p1, Lw7/i;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 57
    throw p1

    .line 58
    :cond_3
    :goto_1
    return-void
.end method

.method private final n0(III)I
    .locals 2

    .line 1
    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->F0(Landroidx/compose/runtime/SlotReader;I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    const v1, 0x78cc281

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    move p3, v0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->M(I)I

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->n0(III)I

    .line 26
    move-result p1

    .line 27
    const/4 p2, 0x3

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 31
    move-result p1

    .line 32
    xor-int/2addr p1, v0

    .line 33
    move p3, p1

    .line 34
    :goto_0
    return p3
.end method

.method private final n1()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->u()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 17
    const/4 v3, -0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/IntStack;->g(I)I

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eq v2, v1, :cond_1

    .line 24
    .line 25
    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->l()Le8/q;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v4, v2, v5, v3}, Landroidx/compose/runtime/ComposerImpl;->q1(Landroidx/compose/runtime/ComposerImpl;ZLe8/q;ILjava/lang/Object;)V

    .line 42
    .line 43
    iput-boolean v5, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotReader;->a(I)Landroidx/compose/runtime/Anchor;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/IntStack;->i(I)V

    .line 53
    .line 54
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$recordSlotEditing$1;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComposerImpl$recordSlotEditing$1;-><init>(Landroidx/compose/runtime/Anchor;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v4, v1, v5, v3}, Landroidx/compose/runtime/ComposerImpl;->q1(Landroidx/compose/runtime/ComposerImpl;ZLe8/q;ILjava/lang/Object;)V

    .line 61
    :cond_1
    return-void
.end method

.method private final o0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->T()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->X(Z)V

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/runtime/SlotTable;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->t()Landroidx/compose/runtime/SlotWriter;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 26
    return-void
.end method

.method private final o1(Le8/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->V0(Landroidx/compose/runtime/ComposerImpl;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->n1()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 13
    return-void
.end method

.method private final p0(Ljava/lang/Integer;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.State<kotlin.Any?>>{ androidx.compose.runtime.ComposerKt.CompositionLocalMap }"

    .line 14
    .line 15
    const/16 v2, 0xca

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->V()I

    .line 27
    move-result v0

    .line 28
    .line 29
    :goto_0
    if-lez v0, :cond_3

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->a0(I)I

    .line 35
    move-result v3

    .line 36
    .line 37
    if-ne v3, v2, :cond_2

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->b0(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->F()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SlotWriter;->Y(I)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    check-cast p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 64
    .line 65
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 66
    return-object p1

    .line 67
    .line 68
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    .line 74
    :cond_2
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->y0(I)I

    .line 78
    move-result v0

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->u()I

    .line 85
    move-result v0

    .line 86
    .line 87
    if-lez v0, :cond_8

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 93
    move-result p1

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_4
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 100
    move-result p1

    .line 101
    .line 102
    :goto_1
    if-lez p1, :cond_8

    .line 103
    .line 104
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->z(I)I

    .line 108
    move-result v0

    .line 109
    .line 110
    if-ne v0, v2, :cond_7

    .line 111
    .line 112
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->A(I)Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->F()Ljava/lang/Object;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    move-result v0

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 139
    .line 140
    if-nez v0, :cond_6

    .line 141
    .line 142
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->w(I)Ljava/lang/Object;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    if-eqz p1, :cond_5

    .line 149
    move-object v0, p1

    .line 150
    .line 151
    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 152
    goto :goto_2

    .line 153
    .line 154
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 155
    .line 156
    .line 157
    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 158
    throw p1

    .line 159
    .line 160
    :cond_6
    :goto_2
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 161
    return-object v0

    .line 162
    .line 163
    :cond_7
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->M(I)I

    .line 167
    move-result p1

    .line 168
    goto :goto_1

    .line 169
    .line 170
    :cond_8
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 171
    .line 172
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 173
    return-object p1
.end method

.method private final p1(ZLe8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/q<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->U0(Z)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 7
    return-void
.end method

.method static synthetic q0(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Integer;ILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->p0(Ljava/lang/Integer;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method static synthetic q1(Landroidx/compose/runtime/ComposerImpl;ZLe8/q;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->p1(ZLe8/q;)V

    .line 9
    return-void
.end method

.method private final r1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->d()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->g()Ljava/lang/Object;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    .line 21
    :goto_0
    return-void
.end method

.method private final s0(Landroidx/compose/runtime/collection/IdentityArrayMap;Le8/p;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;",
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
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    const-string v0, "Compose:recompose"

    .line 9
    .line 10
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->B()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 24
    move-result v2

    .line 25
    .line 26
    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->f()I

    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    move v4, v3

    .line 38
    .line 39
    :goto_0
    if-ge v4, v2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->e()[Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    aget-object v5, v5, v4

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->g()[Ljava/lang/Object;

    .line 51
    move-result-object v6

    .line 52
    .line 53
    aget-object v6, v6, v4

    .line 54
    .line 55
    check-cast v6, Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 56
    .line 57
    check-cast v5, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Landroidx/compose/runtime/RecomposeScopeImpl;->j()Landroidx/compose/runtime/Anchor;

    .line 61
    move-result-object v7

    .line 62
    .line 63
    if-eqz v7, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Landroidx/compose/runtime/Anchor;->a()I

    .line 67
    move-result v7

    .line 68
    .line 69
    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 70
    .line 71
    new-instance v9, Landroidx/compose/runtime/Invalidation;

    .line 72
    .line 73
    .line 74
    invoke-direct {v9, v5, v7, v6}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/compose/runtime/collection/IdentityArraySet;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_3

    .line 83
    .line 84
    :cond_0
    sget-object p1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 89
    .line 90
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 91
    .line 92
    const-string p2, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap"

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1

    .line 97
    .line 98
    :cond_2
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 102
    move-result v2

    .line 103
    .line 104
    if-le v2, v1, :cond_3

    .line 105
    .line 106
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$doCompose$lambda-37$$inlined$sortBy$1;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2}, Landroidx/compose/runtime/ComposerImpl$doCompose$lambda-37$$inlined$sortBy$1;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v2}, Lkotlin/collections/t;->C(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    .line 114
    :cond_3
    iput v3, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 115
    .line 116
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    :try_start_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->E1()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->N0()Ljava/lang/Object;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    if-eq p1, p2, :cond_4

    .line 126
    .line 127
    if-eqz p2, :cond_4

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->N1(Ljava/lang/Object;)V

    .line 131
    goto :goto_1

    .line 132
    :catchall_1
    move-exception p1

    .line 133
    goto :goto_2

    .line 134
    .line 135
    :cond_4
    :goto_1
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$doCompose$2$3;

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, p0}, Landroidx/compose/runtime/ComposerImpl$doCompose$2$3;-><init>(Landroidx/compose/runtime/ComposerImpl;)V

    .line 139
    .line 140
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$doCompose$2$4;

    .line 141
    .line 142
    .line 143
    invoke-direct {v2, p0}, Landroidx/compose/runtime/ComposerImpl$doCompose$2$4;-><init>(Landroidx/compose/runtime/ComposerImpl;)V

    .line 144
    .line 145
    new-instance v4, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;

    .line 146
    .line 147
    .line 148
    invoke-direct {v4, p2, p0, p1}, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;-><init>(Le8/p;Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/SnapshotStateKt;->j(Le8/l;Le8/l;Le8/a;)V

    .line 152
    .line 153
    .line 154
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->w0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    .line 156
    :try_start_3
    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 157
    .line 158
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 159
    .line 160
    .line 161
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 162
    .line 163
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    .line 165
    sget-object p1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 169
    return-void

    .line 170
    .line 171
    :goto_2
    :try_start_4
    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 172
    .line 173
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 174
    .line 175
    .line 176
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 177
    .line 178
    .line 179
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->R()V

    .line 180
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    .line 182
    :goto_3
    sget-object p2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 186
    throw p1

    .line 187
    .line 188
    :cond_5
    const-string p1, "Reentrant composition is not supported"

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 196
    .line 197
    new-instance p1, Lw7/i;

    .line 198
    .line 199
    .line 200
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 201
    throw p1
.end method

.method private final s1(III)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->o(Landroidx/compose/runtime/SlotReader;III)I

    .line 6
    move-result p3

    .line 7
    .line 8
    :goto_0
    if-lez p1, :cond_1

    .line 9
    .line 10
    if-eq p1, p3, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->G(I)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->r1()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->M(I)I

    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->t0(II)V

    .line 28
    return-void
.end method

.method private final t0(II)V
    .locals 1

    .line 1
    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    if-eq p1, p2, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->M(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/ComposerImpl;->t0(II)V

    .line 14
    .line 15
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->G(I)Z

    .line 19
    move-result p2

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2, p1}, Landroidx/compose/runtime/ComposerImpl;->O0(Landroidx/compose/runtime/SlotReader;I)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->e1(Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method

.method private final t1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertUpFixups:Landroidx/compose/runtime/Stack;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/Stack;->g()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method private final u0(Z)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->V()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotWriter;->a0(I)I

    .line 20
    move-result v2

    .line 21
    .line 22
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotWriter;->b0(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SlotWriter;->Y(I)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->I1(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 42
    move-result v1

    .line 43
    .line 44
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotReader;->z(I)I

    .line 48
    move-result v2

    .line 49
    .line 50
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->A(I)Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SlotReader;->w(I)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->I1(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    :goto_0
    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 66
    .line 67
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 68
    const/4 v3, 0x0

    .line 69
    .line 70
    if-eqz v2, :cond_7

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->b()Ljava/util/List;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 78
    move-result v4

    .line 79
    .line 80
    if-lez v4, :cond_7

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->b()Ljava/util/List;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->f()Ljava/util/List;

    .line 88
    move-result-object v5

    .line 89
    .line 90
    .line 91
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->e(Ljava/util/List;)Ljava/util/Set;

    .line 92
    move-result-object v6

    .line 93
    .line 94
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 95
    .line 96
    .line 97
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 101
    move-result v8

    .line 102
    .line 103
    .line 104
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 105
    move-result v9

    .line 106
    move v10, v3

    .line 107
    move v11, v10

    .line 108
    move v12, v11

    .line 109
    .line 110
    :goto_1
    if-ge v10, v9, :cond_6

    .line 111
    .line 112
    .line 113
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    move-result-object v13

    .line 115
    .line 116
    check-cast v13, Landroidx/compose/runtime/KeyInfo;

    .line 117
    .line 118
    .line 119
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 120
    move-result v14

    .line 121
    .line 122
    if-nez v14, :cond_2

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/Pending;->g(Landroidx/compose/runtime/KeyInfo;)I

    .line 126
    move-result v14

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->e()I

    .line 130
    move-result v15

    .line 131
    add-int/2addr v14, v15

    .line 132
    .line 133
    .line 134
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->c()I

    .line 135
    move-result v15

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->m1(II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 142
    move-result v14

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v14, v3}, Landroidx/compose/runtime/Pending;->n(II)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 149
    move-result v14

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->l1(I)V

    .line 153
    .line 154
    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 158
    move-result v15

    .line 159
    .line 160
    .line 161
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/SlotReader;->N(I)V

    .line 162
    .line 163
    .line 164
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->d1()V

    .line 165
    .line 166
    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v14}, Landroidx/compose/runtime/SlotReader;->P()I

    .line 170
    .line 171
    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 175
    move-result v15

    .line 176
    .line 177
    .line 178
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 179
    move-result v16

    .line 180
    .line 181
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->b()I

    .line 185
    move-result v13

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/SlotReader;->B(I)I

    .line 189
    move-result v3

    .line 190
    .line 191
    add-int v3, v16, v3

    .line 192
    .line 193
    .line 194
    invoke-static {v14, v15, v3}, Landroidx/compose/runtime/ComposerKt;->s(Ljava/util/List;II)V

    .line 195
    .line 196
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 197
    :cond_1
    :goto_3
    const/4 v3, 0x0

    .line 198
    goto :goto_1

    .line 199
    .line 200
    .line 201
    :cond_2
    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 202
    move-result v3

    .line 203
    .line 204
    if-eqz v3, :cond_3

    .line 205
    goto :goto_2

    .line 206
    .line 207
    :cond_3
    if-ge v11, v8, :cond_1

    .line 208
    .line 209
    .line 210
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    check-cast v3, Landroidx/compose/runtime/KeyInfo;

    .line 214
    .line 215
    if-eq v3, v13, :cond_5

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->g(Landroidx/compose/runtime/KeyInfo;)I

    .line 219
    move-result v13

    .line 220
    .line 221
    .line 222
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    if-eq v13, v12, :cond_4

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->o(Landroidx/compose/runtime/KeyInfo;)I

    .line 228
    move-result v14

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->e()I

    .line 232
    move-result v15

    .line 233
    add-int/2addr v15, v13

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->e()I

    .line 237
    move-result v16

    .line 238
    .line 239
    move-object/from16 v17, v5

    .line 240
    .line 241
    add-int v5, v12, v16

    .line 242
    .line 243
    .line 244
    invoke-direct {v0, v15, v5, v14}, Landroidx/compose/runtime/ComposerImpl;->k1(III)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v13, v12, v14}, Landroidx/compose/runtime/Pending;->j(III)V

    .line 248
    goto :goto_4

    .line 249
    .line 250
    :cond_4
    move-object/from16 v17, v5

    .line 251
    goto :goto_4

    .line 252
    .line 253
    :cond_5
    move-object/from16 v17, v5

    .line 254
    .line 255
    add-int/lit8 v10, v10, 0x1

    .line 256
    .line 257
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->o(Landroidx/compose/runtime/KeyInfo;)I

    .line 261
    move-result v3

    .line 262
    add-int/2addr v12, v3

    .line 263
    .line 264
    move-object/from16 v5, v17

    .line 265
    goto :goto_3

    .line 266
    .line 267
    .line 268
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->T0()V

    .line 269
    .line 270
    .line 271
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 272
    move-result v2

    .line 273
    .line 274
    if-lez v2, :cond_7

    .line 275
    .line 276
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->m()I

    .line 280
    move-result v2

    .line 281
    .line 282
    .line 283
    invoke-direct {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->l1(I)V

    .line 284
    .line 285
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->Q()V

    .line 289
    .line 290
    :cond_7
    iget v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 291
    .line 292
    :goto_5
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->E()Z

    .line 296
    move-result v3

    .line 297
    .line 298
    if-nez v3, :cond_8

    .line 299
    .line 300
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 304
    move-result v3

    .line 305
    .line 306
    .line 307
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->d1()V

    .line 308
    .line 309
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->P()I

    .line 313
    move-result v4

    .line 314
    .line 315
    .line 316
    invoke-direct {v0, v2, v4}, Landroidx/compose/runtime/ComposerImpl;->m1(II)V

    .line 317
    .line 318
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 319
    .line 320
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 324
    move-result v5

    .line 325
    .line 326
    .line 327
    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/ComposerKt;->s(Ljava/util/List;II)V

    .line 328
    goto :goto_5

    .line 329
    .line 330
    .line 331
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 332
    move-result v2

    .line 333
    const/4 v3, 0x1

    .line 334
    .line 335
    if-eqz v2, :cond_a

    .line 336
    .line 337
    if-eqz p1, :cond_9

    .line 338
    .line 339
    .line 340
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->t1()V

    .line 341
    move v1, v3

    .line 342
    .line 343
    :cond_9
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->f()V

    .line 347
    .line 348
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->V()I

    .line 352
    move-result v3

    .line 353
    .line 354
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->N()I

    .line 358
    .line 359
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->r()Z

    .line 363
    move-result v4

    .line 364
    .line 365
    if-nez v4, :cond_e

    .line 366
    .line 367
    .line 368
    invoke-direct {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->K0(I)I

    .line 369
    move-result v3

    .line 370
    .line 371
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->O()V

    .line 375
    .line 376
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 380
    .line 381
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 382
    .line 383
    .line 384
    invoke-direct {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->i1(Landroidx/compose/runtime/Anchor;)V

    .line 385
    const/4 v4, 0x0

    .line 386
    .line 387
    iput-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    .line 388
    .line 389
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->isEmpty()Z

    .line 393
    move-result v5

    .line 394
    .line 395
    if-nez v5, :cond_e

    .line 396
    .line 397
    .line 398
    invoke-direct {v0, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->K1(II)V

    .line 399
    .line 400
    .line 401
    invoke-direct {v0, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->L1(II)V

    .line 402
    goto :goto_6

    .line 403
    .line 404
    :cond_a
    if-eqz p1, :cond_b

    .line 405
    .line 406
    .line 407
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->r1()V

    .line 408
    .line 409
    .line 410
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->f1()V

    .line 411
    .line 412
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 416
    move-result v4

    .line 417
    .line 418
    .line 419
    invoke-direct {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->O1(I)I

    .line 420
    move-result v5

    .line 421
    .line 422
    if-eq v1, v5, :cond_c

    .line 423
    .line 424
    .line 425
    invoke-direct {v0, v4, v1}, Landroidx/compose/runtime/ComposerImpl;->L1(II)V

    .line 426
    .line 427
    :cond_c
    if-eqz p1, :cond_d

    .line 428
    move v1, v3

    .line 429
    .line 430
    :cond_d
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->g()V

    .line 434
    .line 435
    .line 436
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->T0()V

    .line 437
    .line 438
    .line 439
    :cond_e
    :goto_6
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->z0(IZ)V

    .line 440
    return-void
.end method

.method private final u1(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->v1(Landroidx/compose/runtime/ComposerImpl;IZI)I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->T0()V

    .line 8
    return-void
.end method

.method private final v0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->u0(Z)V

    .line 5
    return-void
.end method

.method private static final v1(Landroidx/compose/runtime/ComposerImpl;IZI)I
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->C(I)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->A(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    move-object v4, v0

    .line 20
    .line 21
    check-cast v4, Landroidx/compose/runtime/MovableContent;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, v2}, Landroidx/compose/runtime/SlotReader;->y(II)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->a(I)Landroidx/compose/runtime/Anchor;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/SlotReader;->B(I)I

    .line 39
    move-result v3

    .line 40
    add-int/2addr v3, p1

    .line 41
    .line 42
    iget-object v6, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-static {v6, p1, v3}, Landroidx/compose/runtime/ComposerKt;->e(Ljava/util/List;II)Ljava/util/List;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    new-instance v9, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 52
    move-result v6

    .line 53
    .line 54
    .line 55
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 59
    move-result v6

    .line 60
    move v7, v2

    .line 61
    .line 62
    :goto_0
    if-ge v7, v6, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v8

    .line 67
    .line 68
    check-cast v8, Landroidx/compose/runtime/Invalidation;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->c()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 72
    move-result-object v10

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->a()Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 76
    move-result-object v8

    .line 77
    .line 78
    .line 79
    invoke-static {v10, v8}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 80
    move-result-object v8

    .line 81
    .line 82
    .line 83
    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    add-int/lit8 v7, v7, 0x1

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_0
    new-instance v11, Landroidx/compose/runtime/MovableContentStateReference;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->C0()Landroidx/compose/runtime/ControlledComposition;

    .line 92
    move-result-object v6

    .line 93
    .line 94
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->p0(Ljava/lang/Integer;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 102
    move-result-object v10

    .line 103
    move-object v3, v11

    .line 104
    move-object v8, v0

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v3 .. v10}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 108
    .line 109
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/CompositionContext;->b(Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->n1()V

    .line 116
    .line 117
    new-instance v3, Landroidx/compose/runtime/ComposerImpl$reportFreeMovableContent$reportGroup$1;

    .line 118
    .line 119
    .line 120
    invoke-direct {v3, p0, v11, v0}, Landroidx/compose/runtime/ComposerImpl$reportFreeMovableContent$reportGroup$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/Anchor;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 124
    .line 125
    if-eqz p2, :cond_2

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->T0()V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->W0()V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->R0()V

    .line 135
    .line 136
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->G(I)Z

    .line 140
    move-result p2

    .line 141
    .line 142
    if-eqz p2, :cond_1

    .line 143
    goto :goto_1

    .line 144
    .line 145
    :cond_1
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->K(I)I

    .line 149
    move-result v1

    .line 150
    .line 151
    :goto_1
    if-lez v1, :cond_c

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p3, v1}, Landroidx/compose/runtime/ComposerImpl;->m1(II)V

    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->K(I)I

    .line 162
    move-result v2

    .line 163
    goto :goto_6

    .line 164
    .line 165
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 166
    .line 167
    const-string p1, "null cannot be cast to non-null type androidx.compose.runtime.MovableContent<kotlin.Any?>"

    .line 168
    .line 169
    .line 170
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 171
    throw p0

    .line 172
    .line 173
    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->e(I)Z

    .line 177
    move-result v0

    .line 178
    .line 179
    if-eqz v0, :cond_b

    .line 180
    .line 181
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->B(I)I

    .line 185
    move-result v0

    .line 186
    add-int/2addr v0, p1

    .line 187
    add-int/2addr p1, v1

    .line 188
    move v3, v2

    .line 189
    .line 190
    :goto_2
    if-ge p1, v0, :cond_a

    .line 191
    .line 192
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/SlotReader;->G(I)Z

    .line 196
    move-result v4

    .line 197
    .line 198
    if-eqz v4, :cond_5

    .line 199
    .line 200
    .line 201
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->T0()V

    .line 202
    .line 203
    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/SlotReader;->I(I)Ljava/lang/Object;

    .line 207
    move-result-object v5

    .line 208
    .line 209
    .line 210
    invoke-direct {p0, v5}, Landroidx/compose/runtime/ComposerImpl;->e1(Ljava/lang/Object;)V

    .line 211
    .line 212
    :cond_5
    if-nez v4, :cond_7

    .line 213
    .line 214
    if-eqz p2, :cond_6

    .line 215
    goto :goto_3

    .line 216
    :cond_6
    move v5, v2

    .line 217
    goto :goto_4

    .line 218
    :cond_7
    :goto_3
    move v5, v1

    .line 219
    .line 220
    :goto_4
    if-eqz v4, :cond_8

    .line 221
    move v6, v2

    .line 222
    goto :goto_5

    .line 223
    .line 224
    :cond_8
    add-int v6, p3, v3

    .line 225
    .line 226
    .line 227
    :goto_5
    invoke-static {p0, p1, v5, v6}, Landroidx/compose/runtime/ComposerImpl;->v1(Landroidx/compose/runtime/ComposerImpl;IZI)I

    .line 228
    move-result v5

    .line 229
    add-int/2addr v3, v5

    .line 230
    .line 231
    if-eqz v4, :cond_9

    .line 232
    .line 233
    .line 234
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->T0()V

    .line 235
    .line 236
    .line 237
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->r1()V

    .line 238
    .line 239
    :cond_9
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/SlotReader;->B(I)I

    .line 243
    move-result v4

    .line 244
    add-int/2addr p1, v4

    .line 245
    goto :goto_2

    .line 246
    :cond_a
    move v2, v3

    .line 247
    goto :goto_6

    .line 248
    .line 249
    :cond_b
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->K(I)I

    .line 253
    move-result v2

    .line 254
    :cond_c
    :goto_6
    return v2
.end method

.method private final w0()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->c()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->g1()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->A0()V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->d()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    .line 26
    return-void
.end method

.method private final w1(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->z(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/CompositionLocal;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->M(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionLocal;->a()Landroidx/compose/runtime/LazyValueHolder;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/runtime/LazyValueHolder;->getValue()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    :goto_0
    return-object p1
.end method

.method private final x0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->T()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->t()Landroidx/compose/runtime/SlotWriter;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->O0()V

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 26
    :cond_0
    return-void
.end method

.method private final y0(ZLandroidx/compose/runtime/Pending;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Stack;->h(Ljava/lang/Object;)Z

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    .line 12
    .line 13
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/IntStack;->i(I)V

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 24
    .line 25
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/IntStack;->i(I)V

    .line 29
    .line 30
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 31
    return-void
.end method

.method private final y1()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->P()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 12
    return-void
.end method

.method private final z0(IZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->g()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/runtime/Pending;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->a()I

    .line 16
    move-result p2

    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/Pending;->l(I)V

    .line 22
    .line 23
    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 24
    .line 25
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->h()I

    .line 29
    move-result p2

    .line 30
    add-int/2addr p2, p1

    .line 31
    .line 32
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 33
    .line 34
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->h()I

    .line 38
    move-result p2

    .line 39
    add-int/2addr p2, p1

    .line 40
    .line 41
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 42
    return-void
.end method

.method private final z1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->t()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->Q()V

    .line 14
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->D0()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->r()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->B(Z)V

    .line 20
    :cond_0
    return-void
.end method

.method public B(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/MovableContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContent<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->q0(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Integer;ILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/compose/runtime/ComposerImpl;->L0(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Ljava/lang/Object;Z)V

    .line 16
    return-void
.end method

.method public final B0()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C(Le8/a;)V
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
    const-string v0, "effect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$recordSideEffect$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComposerImpl$recordSideEffect$1;-><init>(Le8/a;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 14
    return-void
.end method

.method public C0()Landroidx/compose/runtime/ControlledComposition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    return-object v0
.end method

.method public D()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    return-void
.end method

.method public final D0()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->d()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->e()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0
.end method

.method public E()Landroidx/compose/runtime/RecomposeScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->D0()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public F()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    const/4 v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 19
    .line 20
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->u0(Z)V

    .line 24
    return-void
.end method

.method public final F1(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "scope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->j()Landroidx/compose/runtime/Anchor;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return v1

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Anchor;->d(Landroidx/compose/runtime/SlotTable;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 29
    move-result v2

    .line 30
    .line 31
    if-lt v0, v2, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->m(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V

    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_1
    return v1
.end method

.method public G(I)V
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 6
    return-void
.end method

.method public G0(Ljava/util/List;)V
    .locals 19
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

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
    move-object/from16 v9, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    const-string v1, "references"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->T(Landroidx/compose/runtime/ComposerImpl;)Ljava/util/List;

    .line 15
    move-result-object v10

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->d0(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->j()Le8/q;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 26
    .line 27
    .line 28
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 29
    move-result v11

    .line 30
    const/4 v13, 0x0

    .line 31
    .line 32
    :goto_0
    if-ge v13, v11, :cond_5

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lw7/u;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lw7/u;->a()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Landroidx/compose/runtime/MovableContentStateReference;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->a()Landroidx/compose/runtime/Anchor;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->g()Landroidx/compose/runtime/SlotTable;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SlotTable;->a(Landroidx/compose/runtime/Anchor;)I

    .line 62
    move-result v4

    .line 63
    .line 64
    new-instance v14, Lkotlin/jvm/internal/n0;

    .line 65
    .line 66
    .line 67
    invoke-direct {v14}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->W0()V

    .line 71
    .line 72
    new-instance v5, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$1;

    .line 73
    .line 74
    .line 75
    invoke-direct {v5, v14, v3}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$1;-><init>(Lkotlin/jvm/internal/n0;Landroidx/compose/runtime/Anchor;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 79
    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->g()Landroidx/compose/runtime/SlotTable;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    iget-object v3, v9, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 91
    .line 92
    if-eqz v1, :cond_0

    .line 93
    .line 94
    .line 95
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->o0()V

    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    .line 99
    goto/16 :goto_9

    .line 100
    .line 101
    .line 102
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->g()Landroidx/compose/runtime/SlotTable;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->s()Landroidx/compose/runtime/SlotReader;

    .line 107
    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    :try_start_1
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/SlotReader;->N(I)V

    .line 111
    .line 112
    iput v4, v9, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 113
    .line 114
    new-instance v8, Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    const/4 v3, 0x0

    .line 119
    const/4 v4, 0x0

    .line 120
    const/4 v5, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    .line 123
    new-instance v7, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;

    .line 124
    .line 125
    .line 126
    invoke-direct {v7, v9, v8, v15, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;Landroidx/compose/runtime/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 127
    .line 128
    const/16 v16, 0xf

    .line 129
    .line 130
    const/16 v17, 0x0

    .line 131
    .line 132
    move-object/from16 v1, p0

    .line 133
    move-object v2, v3

    .line 134
    move-object v3, v4

    .line 135
    move-object v4, v5

    .line 136
    move-object v5, v6

    .line 137
    move-object v6, v7

    .line 138
    .line 139
    move/from16 v7, v16

    .line 140
    .line 141
    move-object/from16 v16, v8

    .line 142
    .line 143
    move-object/from16 v8, v17

    .line 144
    .line 145
    .line 146
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/ComposerImpl;->Z0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Le8/a;ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    .line 150
    move-result v1

    .line 151
    .line 152
    xor-int/lit8 v1, v1, 0x1

    .line 153
    .line 154
    if-eqz v1, :cond_1

    .line 155
    .line 156
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$2;

    .line 157
    .line 158
    move-object/from16 v2, v16

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, v14, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$2;-><init>(Lkotlin/jvm/internal/n0;Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 165
    goto :goto_2

    .line 166
    :catchall_1
    move-exception v0

    .line 167
    goto :goto_3

    .line 168
    .line 169
    :cond_1
    :goto_2
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    .line 171
    .line 172
    :try_start_2
    invoke-virtual {v15}, Landroidx/compose/runtime/SlotReader;->d()V

    .line 173
    .line 174
    goto/16 :goto_5

    .line 175
    .line 176
    .line 177
    :goto_3
    invoke-virtual {v15}, Landroidx/compose/runtime/SlotReader;->d()V

    .line 178
    throw v0

    .line 179
    .line 180
    .line 181
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->g()Landroidx/compose/runtime/SlotTable;

    .line 182
    move-result-object v4

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->a()Landroidx/compose/runtime/Anchor;

    .line 186
    move-result-object v5

    .line 187
    .line 188
    .line 189
    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->c(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;

    .line 190
    move-result-object v4

    .line 191
    move-object v5, v4

    .line 192
    .line 193
    check-cast v5, Ljava/util/Collection;

    .line 194
    .line 195
    .line 196
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 197
    move-result v5

    .line 198
    .line 199
    xor-int/lit8 v5, v5, 0x1

    .line 200
    .line 201
    if-eqz v5, :cond_3

    .line 202
    .line 203
    new-instance v5, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$3;

    .line 204
    .line 205
    .line 206
    invoke-direct {v5, v14, v4}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$3;-><init>(Lkotlin/jvm/internal/n0;Ljava/util/List;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 210
    .line 211
    iget-object v5, v9, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/SlotTable;->a(Landroidx/compose/runtime/Anchor;)I

    .line 215
    move-result v3

    .line 216
    .line 217
    .line 218
    invoke-direct {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->O1(I)I

    .line 219
    move-result v5

    .line 220
    .line 221
    .line 222
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 223
    move-result v4

    .line 224
    add-int/2addr v5, v4

    .line 225
    .line 226
    .line 227
    invoke-direct {v9, v3, v5}, Landroidx/compose/runtime/ComposerImpl;->K1(II)V

    .line 228
    .line 229
    :cond_3
    new-instance v3, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4;

    .line 230
    .line 231
    .line 232
    invoke-direct {v3, v9, v1, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 233
    .line 234
    .line 235
    invoke-direct {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->g()Landroidx/compose/runtime/SlotTable;

    .line 239
    move-result-object v3

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotTable;->s()Landroidx/compose/runtime/SlotReader;

    .line 243
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    .line 245
    .line 246
    :try_start_3
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->Y(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;

    .line 247
    move-result-object v8

    .line 248
    .line 249
    .line 250
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->W(Landroidx/compose/runtime/ComposerImpl;)[I

    .line 251
    move-result-object v15

    .line 252
    const/4 v4, 0x0

    .line 253
    .line 254
    .line 255
    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->f0(Landroidx/compose/runtime/ComposerImpl;[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 256
    .line 257
    .line 258
    :try_start_4
    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->g0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->a()Landroidx/compose/runtime/Anchor;

    .line 262
    move-result-object v4

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/SlotTable;->a(Landroidx/compose/runtime/Anchor;)I

    .line 266
    move-result v3

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/SlotReader;->N(I)V

    .line 270
    .line 271
    iput v3, v9, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 272
    .line 273
    new-instance v6, Ljava/util/ArrayList;

    .line 274
    .line 275
    .line 276
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->T(Landroidx/compose/runtime/ComposerImpl;)Ljava/util/List;

    .line 280
    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 281
    .line 282
    .line 283
    :try_start_5
    invoke-static {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->d0(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->b()Landroidx/compose/runtime/ControlledComposition;

    .line 287
    move-result-object v3

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->b()Landroidx/compose/runtime/ControlledComposition;

    .line 291
    move-result-object v4

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 295
    move-result v16

    .line 296
    .line 297
    .line 298
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    move-result-object v16

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->d()Ljava/util/List;

    .line 303
    move-result-object v17

    .line 304
    .line 305
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1;

    .line 306
    .line 307
    .line 308
    invoke-direct {v1, v9, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 309
    .line 310
    move-object/from16 v18, v1

    .line 311
    .line 312
    move-object/from16 v1, p0

    .line 313
    move-object v2, v3

    .line 314
    move-object v3, v4

    .line 315
    .line 316
    move-object/from16 v4, v16

    .line 317
    move-object v12, v5

    .line 318
    .line 319
    move-object/from16 v5, v17

    .line 320
    .line 321
    move-object/from16 v17, v6

    .line 322
    .line 323
    move-object/from16 v6, v18

    .line 324
    .line 325
    .line 326
    :try_start_6
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl;->Y0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Le8/a;)Ljava/lang/Object;

    .line 327
    .line 328
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 329
    .line 330
    .line 331
    :try_start_7
    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->d0(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 332
    .line 333
    .line 334
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    .line 335
    move-result v1

    .line 336
    .line 337
    xor-int/lit8 v1, v1, 0x1

    .line 338
    .line 339
    if-eqz v1, :cond_4

    .line 340
    .line 341
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$2;

    .line 342
    .line 343
    move-object/from16 v2, v17

    .line 344
    .line 345
    .line 346
    invoke-direct {v1, v14, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$2;-><init>(Lkotlin/jvm/internal/n0;Ljava/util/List;)V

    .line 347
    .line 348
    .line 349
    invoke-direct {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 350
    goto :goto_4

    .line 351
    :catchall_2
    move-exception v0

    .line 352
    goto :goto_7

    .line 353
    .line 354
    .line 355
    :cond_4
    :goto_4
    :try_start_8
    invoke-static {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->g0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->f0(Landroidx/compose/runtime/ComposerImpl;[I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 359
    .line 360
    .line 361
    :try_start_9
    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->d()V

    .line 362
    .line 363
    .line 364
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->k()Le8/q;

    .line 365
    move-result-object v1

    .line 366
    .line 367
    .line 368
    invoke-direct {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 369
    .line 370
    add-int/lit8 v13, v13, 0x1

    .line 371
    .line 372
    goto/16 :goto_0

    .line 373
    :catchall_3
    move-exception v0

    .line 374
    goto :goto_8

    .line 375
    :catchall_4
    move-exception v0

    .line 376
    goto :goto_6

    .line 377
    :catchall_5
    move-exception v0

    .line 378
    move-object v12, v5

    .line 379
    .line 380
    .line 381
    :goto_6
    :try_start_a
    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->d0(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 382
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 383
    .line 384
    .line 385
    :goto_7
    :try_start_b
    invoke-static {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->g0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 386
    .line 387
    .line 388
    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->f0(Landroidx/compose/runtime/ComposerImpl;[I)V

    .line 389
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 390
    .line 391
    .line 392
    :goto_8
    :try_start_c
    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->d()V

    .line 393
    throw v0

    .line 394
    .line 395
    :cond_5
    sget-object v0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$2;->INSTANCE:Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$2;

    .line 396
    .line 397
    .line 398
    invoke-direct {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 399
    const/4 v0, 0x0

    .line 400
    .line 401
    iput v0, v9, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 402
    .line 403
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 404
    .line 405
    .line 406
    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->d0(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 407
    .line 408
    .line 409
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->k0()V

    .line 410
    return-void

    .line 411
    .line 412
    .line 413
    :goto_9
    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->d0(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 414
    throw v0
.end method

.method public H()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->N0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public I()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public J()V
    .locals 3
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const/16 v2, -0x7f

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v2, v0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 8
    return-void
.end method

.method public K(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 6
    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    return-void
.end method

.method public M(Ljava/lang/Object;Le8/p;)V
    .locals 1
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Le8/p<",
            "-TT;-TV;",
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
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$apply$operation$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p2, p1}, Landroidx/compose/runtime/ComposerImpl$apply$operation$1;-><init>(Le8/p;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->h1(Le8/q;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->c1(Le8/q;)V

    .line 24
    :goto_0
    return-void
.end method

.method public final M0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return v0
.end method

.method public N()V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->h()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(I)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 22
    return-void
.end method

.method public final N0()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->Q1()V

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->H()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final N1(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotWriter;->X0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$updateValue$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComposerImpl$updateValue$1;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->q()I

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    sub-int/2addr v0, v1

    .line 38
    .line 39
    instance-of v2, p1, Landroidx/compose/runtime/RememberObserver;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    :cond_1
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$updateValue$2;

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, p1, v0}, Landroidx/compose/runtime/ComposerImpl$updateValue$2;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->p1(ZLe8/q;)V

    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public O()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return v0
.end method

.method public P()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 4
    return-void
.end method

.method public Q()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 4
    return-void
.end method

.method public final Q0(Le8/a;)V
    .locals 2
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
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 8
    const/4 v1, 0x1

    .line 9
    xor-int/2addr v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    .line 23
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 24
    throw p1

    .line 25
    .line 26
    :cond_0
    const-string p1, "Preparing a composition while composing is not supported"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 34
    .line 35
    new-instance p1, Lw7/i;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 39
    throw p1
.end method

.method public final X0(Landroidx/compose/runtime/collection/IdentityArrayMap;)Z
    .locals 1
    .param p1    # Landroidx/compose/runtime/collection/IdentityArrayMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "invalidationsRequested"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->h()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 22
    .line 23
    check-cast v0, Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    xor-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    return p1

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/ComposerImpl;->s0(Landroidx/compose/runtime/collection/IdentityArrayMap;Le8/p;)V

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 45
    .line 46
    check-cast p1, Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    move-result p1

    .line 51
    .line 52
    xor-int/lit8 p1, p1, 0x1

    .line 53
    return p1

    .line 54
    .line 55
    :cond_2
    const-string p1, "Expected applyChanges() to have been called"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 63
    .line 64
    new-instance p1, Lw7/i;

    .line 65
    .line 66
    .line 67
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 68
    throw p1
.end method

.method public a(Z)V
    .locals 4
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->z1()V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 27
    move-result p1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->j()I

    .line 33
    move-result v0

    .line 34
    move v1, p1

    .line 35
    .line 36
    :goto_1
    if-ge v1, v0, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 39
    .line 40
    new-instance v3, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, p0, v1}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;-><init>(Landroidx/compose/runtime/ComposerImpl;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/SlotReader;->i(ILe8/p;)V

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 52
    .line 53
    .line 54
    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/ComposerKt;->s(Ljava/util/List;II)V

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->N(I)V

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->Q()V

    .line 65
    :cond_3
    return-void

    .line 66
    .line 67
    :cond_4
    const-string p1, "No nodes can be emitted before calling dactivateToEndGroup"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 75
    .line 76
    new-instance p1, Lw7/i;

    .line 77
    .line 78
    .line 79
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 80
    throw p1
.end method

.method public b()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->D0()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->o()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->P1()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->E0(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->e1(Ljava/lang/Object;)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    const-string/jumbo v0, "useNode() called while inserting"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 31
    .line 32
    new-instance v0, Lw7/i;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 36
    throw v0
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->u0(Z)V

    .line 5
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x7d

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, v1, v2, v1}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 8
    .line 9
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 10
    return-void
.end method

.method public f(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->n()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->l()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 23
    .line 24
    if-gez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 30
    move-result v0

    .line 31
    .line 32
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 33
    const/4 v0, 0x1

    .line 34
    .line 35
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 41
    return-void
.end method

.method public g()V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->D0()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->z()V

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->z1()V

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->a1()V

    .line 34
    :goto_1
    return-void

    .line 35
    .line 36
    :cond_3
    const-string v0, "No nodes can be emitted before calling skipAndEndGroup"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 44
    .line 45
    new-instance v0, Lw7/i;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 49
    throw v0
.end method

.method public h()Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->D0()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->n()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    return v1
.end method

.method public i(Landroidx/compose/runtime/RecomposeScope;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/RecomposeScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "scope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->G(Z)V

    .line 21
    :goto_1
    return-void
.end method

.method public j()Landroidx/compose/runtime/CompositionContext;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xce

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->L()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->C1(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->N0()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    instance-of v1, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v2

    .line 23
    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    .line 27
    .line 28
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->O()I

    .line 32
    move-result v3

    .line 33
    .line 34
    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0, v3, v4}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;-><init>(Landroidx/compose/runtime/ComposerImpl;IZ)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;-><init>(Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->N1(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->a()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    .line 47
    move-result-object v1

    .line 48
    const/4 v3, 0x1

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v2, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->q0(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Integer;ILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->u(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->a()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method public final j0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    return-void
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->N0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->N1(Ljava/lang/Object;)V

    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public l([Landroidx/compose/runtime/ProvidedValue;)V
    .locals 6
    .param p1    # [Landroidx/compose/runtime/ProvidedValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/runtime/ProvidedValue<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "values"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->q0(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Integer;ILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const/16 v2, 0xc9

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->I()Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->C1(ILjava/lang/Object;)V

    .line 21
    .line 22
    const/16 v2, 0xcb

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->K()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->C1(ILjava/lang/Object;)V

    .line 30
    .line 31
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, p1, v0}, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;-><init>([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v2}, Landroidx/compose/runtime/ActualJvm_jvmKt;->c(Landroidx/compose/runtime/Composer;Le8/p;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->v0()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x0

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->M1(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    .line 57
    :goto_0
    move v0, v3

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotReader;->x(I)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.State<kotlin.Any?>>{ androidx.compose.runtime.ComposerKt.CompositionLocalMap }"

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 71
    .line 72
    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/SlotReader;->x(I)Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    check-cast v5, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->b()Z

    .line 84
    move-result v4

    .line 85
    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-static {v5, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result v4

    .line 91
    .line 92
    if-nez v4, :cond_1

    .line 93
    goto :goto_1

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->y1()V

    .line 97
    move-object p1, v2

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_1
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->M1(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 107
    xor-int/2addr v0, v1

    .line 108
    .line 109
    :goto_2
    if-eqz v0, :cond_3

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 113
    move-result v1

    .line 114
    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    .line 118
    .line 119
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->k()I

    .line 123
    move-result v2

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 133
    .line 134
    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 135
    .line 136
    .line 137
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->b(Z)I

    .line 138
    move-result v2

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->i(I)V

    .line 142
    .line 143
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 144
    .line 145
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 146
    .line 147
    const/16 v0, 0xca

    .line 148
    .line 149
    .line 150
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->F()Ljava/lang/Object;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, v0, v1, v3, p1}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 155
    return-void

    .line 156
    .line 157
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 158
    .line 159
    .line 160
    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p1

    .line 162
    .line 163
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 164
    .line 165
    .line 166
    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 167
    throw p1
.end method

.method public m(Z)Z
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->N0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->N1(Ljava/lang/Object;)V

    .line 26
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public final m0(Landroidx/compose/runtime/collection/IdentityArrayMap;Le8/p;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/collection/IdentityArrayMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;",
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
    const-string v0, "invalidationsRequested"

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
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->s0(Landroidx/compose/runtime/collection/IdentityArrayMap;Le8/p;)V

    .line 22
    return-void

    .line 23
    .line 24
    :cond_0
    const-string p1, "Expected applyChanges() to have been called"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 32
    .line 33
    new-instance p1, Lw7/i;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 37
    throw p1
.end method

.method public n(F)Z
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->N0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Ljava/lang/Float;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 14
    move-result v0

    .line 15
    .line 16
    cmpg-float v0, p1, v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->N1(Ljava/lang/Object;)V

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public o()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    return-void
.end method

.method public p(I)Z
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->N0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->N1(Ljava/lang/Object;)V

    .line 26
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public q(J)Z
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->N0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Ljava/lang/Long;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    cmp-long v0, p1, v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->N1(Ljava/lang/Object;)V

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    return v0
.end method

.method public final r0()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 3
    .line 4
    const-string v1, "Compose:Composer.dispose"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Trace;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p0}, Landroidx/compose/runtime/CompositionContext;->p(Landroidx/compose/runtime/Composer;)V

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/runtime/Stack;->a()V

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->t()Landroidx/compose/runtime/Applier;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Landroidx/compose/runtime/Applier;->clear()V

    .line 41
    const/4 v2, 0x1

    .line 42
    .line 43
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isDisposed:Z

    .line 44
    .line 45
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    .line 52
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 56
    throw v0
.end method

.method public s(I)Landroidx/compose/runtime/Composer;
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->i0()V

    .line 9
    return-object p0
.end method

.method public t()Landroidx/compose/runtime/Applier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    return-object v0
.end method

.method public u()Landroidx/compose/runtime/ScopeUpdateScope;
    .locals 5
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->d()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->g()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    const/4 v2, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->D(Z)V

    .line 27
    .line 28
    :goto_1
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->i(I)Le8/l;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    new-instance v4, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, v3, p0}, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;-><init>(Le8/l;Landroidx/compose/runtime/ComposerImpl;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v4}, Landroidx/compose/runtime/ComposerImpl;->b1(Le8/q;)V

    .line 45
    .line 46
    :cond_2
    if-eqz v0, :cond_6

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->q()Z

    .line 50
    move-result v3

    .line 51
    .line 52
    if-nez v3, :cond_6

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->r()Z

    .line 56
    move-result v3

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    iget-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 61
    .line 62
    if-eqz v3, :cond_6

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->j()Landroidx/compose/runtime/Anchor;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    if-nez v1, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 72
    move-result v1

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->V()I

    .line 80
    move-result v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->A(I)Landroidx/compose/runtime/Anchor;

    .line 84
    move-result-object v1

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->s()I

    .line 91
    move-result v3

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotReader;->a(I)Landroidx/compose/runtime/Anchor;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->A(Landroidx/compose/runtime/Anchor;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->C(Z)V

    .line 102
    move-object v1, v0

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->u0(Z)V

    .line 106
    return-object v1
.end method

.method public v()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x7d

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 12
    .line 13
    const/16 v2, 0x7e

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->n()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    :goto_0
    move v1, v2

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->n()I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-ne v0, v2, :cond_2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v1, v0, v2, v0}, Landroidx/compose/runtime/ComposerImpl;->A1(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 40
    .line 41
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 42
    return-void
.end method

.method public w(Le8/a;)V
    .locals 3
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "factory"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->P1()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->r()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->e()I

    .line 20
    move-result v0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->V()I

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->A(I)Landroidx/compose/runtime/Anchor;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 37
    .line 38
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$createNode$2;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p1, v1, v0}, Landroidx/compose/runtime/ComposerImpl$createNode$2;-><init>(Le8/a;Landroidx/compose/runtime/Anchor;I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->h1(Le8/q;)V

    .line 45
    .line 46
    new-instance p1, Landroidx/compose/runtime/ComposerImpl$createNode$3;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v1, v0}, Landroidx/compose/runtime/ComposerImpl$createNode$3;-><init>(Landroidx/compose/runtime/Anchor;I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->j1(Le8/q;)V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_0
    const-string p1, "createNode() can only be called when inserting"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 63
    .line 64
    new-instance p1, Lw7/i;

    .line 65
    .line 66
    .line 67
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 68
    throw p1
.end method

.method public x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroidx/compose/runtime/CompositionLocal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->q0(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Integer;ILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/ComposerImpl;->w1(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public x1()V
    .locals 6
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->y1()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->n()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->o()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->l()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->G1(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->F()Z

    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->D1(ZLjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->a1()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->g()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->I1(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-void
.end method

.method public y()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->g()Lkotlin/coroutines/g;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public z(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->N1(Ljava/lang/Object;)V

    .line 4
    return-void
.end method
