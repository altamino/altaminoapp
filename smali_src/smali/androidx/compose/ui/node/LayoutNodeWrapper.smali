.class public abstract Landroidx/compose/ui/node/LayoutNodeWrapper;
.super Landroidx/compose/ui/layout/Placeable;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;
.implements Landroidx/compose/ui/layout/LayoutCoordinates;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;,
        Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/layout/Placeable;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/Canvas;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNodeWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNodeWrapper.kt\nandroidx/compose/ui/node/LayoutNodeWrapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 EntityList.kt\nandroidx/compose/ui/node/EntityList\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 Size.kt\nandroidx/compose/ui/geometry/Size\n*L\n1#1,1165:1\n1#2:1166\n124#3,13:1167\n124#3,13:1187\n124#3,13:1204\n108#3:1217\n109#3,6:1219\n115#3:1226\n108#3:1227\n109#3,6:1229\n115#3:1236\n479#4,4:1180\n484#4:1202\n483#4:1203\n122#5,3:1184\n126#5:1200\n125#5:1201\n13536#6:1218\n13537#6:1225\n13536#6:1228\n13537#6:1235\n66#7,5:1237\n*S KotlinDebug\n*F\n+ 1 LayoutNodeWrapper.kt\nandroidx/compose/ui/node/LayoutNodeWrapper\n*L\n172#1:1167,13\n239#1:1187,13\n326#1:1204,13\n819#1:1217\n819#1:1219,6\n819#1:1226\n833#1:1227\n833#1:1229,6\n833#1:1236\n238#1:1180,4\n238#1:1202\n238#1:1203\n238#1:1184,3\n238#1:1200\n238#1:1201\n819#1:1218\n819#1:1225\n833#1:1228\n833#1:1235\n1045#1:1237,5\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ExpectAttachedLayoutCoordinates:Ljava/lang/String; = "LayoutCoordinate operations are only valid when isAttached is true"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PointerInputSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "Landroidx/compose/ui/node/PointerInputEntity;",
            "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
            "Landroidx/compose/ui/input/pointer/PointerInputModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SemanticsSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            "Landroidx/compose/ui/semantics/SemanticsModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UnmeasuredError:Ljava/lang/String; = "Asking for measurement result of unmeasured layout modifier"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final onCommitAffectingLayer:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final onCommitAffectingLayerParams:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _isAttached:Z

.field private _measureResult:Landroidx/compose/ui/layout/MeasureResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _rectCache:Landroidx/compose/ui/geometry/MutableRect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final entities:[Landroidx/compose/ui/node/LayoutNodeEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final invalidateParentLayer:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isClipping:Z

.field private isShallowPlacing:Z

.field private lastLayerAlpha:F

.field private lastLayerDrawingWasSkipped:Z

.field private layer:Landroidx/compose/ui/node/OwnedLayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layerBlock:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layerDensity:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private oldAlignmentLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private position:J

.field private wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->Companion:Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$onCommitAffectingLayerParams$1;->INSTANCE:Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$onCommitAffectingLayerParams$1;

    .line 11
    .line 12
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->onCommitAffectingLayerParams:Le8/l;

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$onCommitAffectingLayer$1;->INSTANCE:Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$onCommitAffectingLayer$1;

    .line 15
    .line 16
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->onCommitAffectingLayer:Le8/l;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;-><init>()V

    .line 22
    .line 23
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$PointerInputSource$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$PointerInputSource$1;-><init>()V

    .line 29
    .line 30
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->PointerInputSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$SemanticsSource$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$SemanticsSource$1;-><init>()V

    .line 36
    .line 37
    sput-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->SemanticsSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutNode"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->T()Landroidx/compose/ui/unit/Density;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 23
    .line 24
    .line 25
    const p1, 0x3f4ccccd    # 0.8f

    .line 26
    .line 27
    iput p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerAlpha:F

    .line 28
    .line 29
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    iput-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 36
    const/4 p1, 0x0

    .line 37
    const/4 v0, 0x1

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0, p1}, Landroidx/compose/ui/node/EntityList;->l([Landroidx/compose/ui/node/LayoutNodeEntity;ILkotlin/jvm/internal/k;)[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 44
    .line 45
    new-instance p1, Landroidx/compose/ui/node/LayoutNodeWrapper$invalidateParentLayer$1;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0}, Landroidx/compose/ui/node/LayoutNodeWrapper$invalidateParentLayer$1;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 49
    .line 50
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateParentLayer:Le8/a;

    .line 51
    return-void
.end method

.method private final B1(Landroidx/compose/ui/node/SimpleEntity;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/SimpleEntity<",
            "Landroidx/compose/ui/layout/ParentDataModifier;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->e()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroidx/compose/ui/layout/ParentDataModifier;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->z1()Landroidx/compose/ui/layout/MeasureScope;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Landroidx/compose/ui/node/SimpleEntity;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->B1(Landroidx/compose/ui/node/SimpleEntity;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1, p1}, Landroidx/compose/ui/layout/ParentDataModifier;->Q(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    :goto_0
    return-object p1
.end method

.method private final E1()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final I1(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(TT;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZ)V"
        }
    .end annotation

    .line 1
    move-object v2, p1

    .line 2
    .line 3
    if-nez v2, :cond_0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p2

    .line 6
    move-wide v2, p3

    .line 7
    .line 8
    move-object/from16 v4, p5

    .line 9
    .line 10
    move/from16 v5, p6

    .line 11
    .line 12
    move/from16 v6, p7

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->L1(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, p2

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->b(Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/Object;

    .line 21
    move-result-object v9

    .line 22
    .line 23
    new-instance v10, Landroidx/compose/ui/node/LayoutNodeWrapper$hit$1;

    .line 24
    move-object v0, v10

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p1

    .line 27
    move-wide v4, p3

    .line 28
    .line 29
    move-object/from16 v6, p5

    .line 30
    .line 31
    move/from16 v7, p6

    .line 32
    .line 33
    move/from16 v8, p7

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper$hit$1;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 37
    .line 38
    move-object/from16 v0, p5

    .line 39
    .line 40
    move/from16 v1, p7

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v9, v1, v10}, Landroidx/compose/ui/node/HitTestResult;->r(Ljava/lang/Object;ZLe8/a;)V

    .line 44
    :goto_0
    return-void
.end method

.method private final J1(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(TT;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZF)V"
        }
    .end annotation

    .line 1
    move-object v2, p1

    .line 2
    .line 3
    if-nez v2, :cond_0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p2

    .line 6
    move-wide v2, p3

    .line 7
    .line 8
    move-object/from16 v4, p5

    .line 9
    .line 10
    move/from16 v5, p6

    .line 11
    .line 12
    move/from16 v6, p7

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->L1(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, p2

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->b(Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/Object;

    .line 21
    move-result-object v10

    .line 22
    .line 23
    new-instance v11, Landroidx/compose/ui/node/LayoutNodeWrapper$hitNear$1;

    .line 24
    move-object v0, v11

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p1

    .line 27
    move-wide v4, p3

    .line 28
    .line 29
    move-object/from16 v6, p5

    .line 30
    .line 31
    move/from16 v7, p6

    .line 32
    .line 33
    move/from16 v8, p7

    .line 34
    .line 35
    move/from16 v9, p8

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/LayoutNodeWrapper$hitNear$1;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 39
    .line 40
    move-object/from16 v0, p5

    .line 41
    .line 42
    move/from16 v1, p7

    .line 43
    .line 44
    move/from16 v2, p8

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v10, v2, v1, v11}, Landroidx/compose/ui/node/HitTestResult;->s(Ljava/lang/Object;FZLe8/a;)V

    .line 48
    :goto_0
    return-void
.end method

.method private final R1(J)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    cmpg-float v2, v0, v1

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    neg-float v0, v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->M0()I

    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    sub-float/2addr v0, v2

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 25
    move-result p1

    .line 26
    .line 27
    cmpg-float p2, p1, v1

    .line 28
    .line 29
    if-gez p2, :cond_1

    .line 30
    neg-float p1, p1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->C0()I

    .line 35
    move-result p2

    .line 36
    int-to-float p2, p2

    .line 37
    sub-float/2addr p1, p2

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 41
    move-result p1

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 45
    move-result-wide p1

    .line 46
    return-wide p1
.end method

.method public static final synthetic V0(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->o1(Landroidx/compose/ui/graphics/Canvas;)V

    .line 4
    return-void
.end method

.method public static final synthetic W0()Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    return-object v0
.end method

.method public static final synthetic X0(Landroidx/compose/ui/node/LayoutNodeWrapper;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->F0()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic Y0()Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->PointerInputSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    return-object v0
.end method

.method public static final synthetic Z0()Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->SemanticsSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    return-object v0
.end method

.method public static final synthetic a1(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->I1(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 4
    return-void
.end method

.method public static synthetic a2(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/MutableRect;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p5, :cond_1

    .line 3
    .line 4
    and-int/lit8 p4, p4, 0x4

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    const/4 p3, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Z1(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: rectInParent"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public static final synthetic b1(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->J1(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 4
    return-void
.end method

.method public static final synthetic c1(Landroidx/compose/ui/node/LayoutNodeWrapper;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->U0(J)V

    .line 4
    return-void
.end method

.method public static final synthetic d1(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->f2(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 4
    return-void
.end method

.method public static final synthetic e1(Landroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->i2()V

    .line 4
    return-void
.end method

.method private final f1(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 1

    .line 1
    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->f1(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->r1(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 14
    return-void
.end method

.method private final f2(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(TT;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZF)V"
        }
    .end annotation

    .line 1
    move-object v2, p1

    .line 2
    move-object v3, p2

    .line 3
    .line 4
    if-nez v2, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p2

    .line 7
    move-wide v2, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move/from16 v5, p6

    .line 12
    .line 13
    move/from16 v6, p7

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->L1(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->c(Landroidx/compose/ui/node/LayoutNodeEntity;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->b(Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/Object;

    .line 27
    move-result-object v10

    .line 28
    .line 29
    new-instance v11, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;

    .line 30
    move-object v0, v11

    .line 31
    move-object v1, p0

    .line 32
    move-object v2, p1

    .line 33
    move-object v3, p2

    .line 34
    move-wide v4, p3

    .line 35
    .line 36
    move-object/from16 v6, p5

    .line 37
    .line 38
    move/from16 v7, p6

    .line 39
    .line 40
    move/from16 v8, p7

    .line 41
    .line 42
    move/from16 v9, p8

    .line 43
    .line 44
    .line 45
    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 46
    .line 47
    move-object/from16 v5, p5

    .line 48
    .line 49
    move/from16 v7, p7

    .line 50
    .line 51
    move/from16 v8, p8

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v10, v8, v7, v11}, Landroidx/compose/ui/node/HitTestResult;->v(Ljava/lang/Object;FZLe8/a;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    move-object/from16 v5, p5

    .line 58
    .line 59
    move/from16 v7, p7

    .line 60
    .line 61
    move/from16 v8, p8

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 65
    move-result-object v1

    .line 66
    move-object v0, p0

    .line 67
    move-object v2, p2

    .line 68
    move-wide v3, p3

    .line 69
    .line 70
    move/from16 v6, p6

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->f2(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 74
    :goto_0
    return-void
.end method

.method private final g1(Landroidx/compose/ui/node/LayoutNodeWrapper;J)J
    .locals 2

    .line 1
    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    return-wide p2

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->g1(Landroidx/compose/ui/node/LayoutNodeWrapper;J)J

    .line 18
    move-result-wide p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->q1(J)J

    .line 22
    move-result-wide p1

    .line 23
    return-wide p1

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->q1(J)J

    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method private final i2()V
    .locals 25

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Le8/l;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    sget-object v15, Landroidx/compose/ui/node/LayoutNodeWrapper;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->Y()V

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->T()Landroidx/compose/ui/unit/Density;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v15, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->a0(Landroidx/compose/ui/unit/Density;)V

    .line 25
    .line 26
    .line 27
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->E1()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    sget-object v4, Landroidx/compose/ui/node/LayoutNodeWrapper;->onCommitAffectingLayerParams:Le8/l;

    .line 31
    .line 32
    new-instance v5, Landroidx/compose/ui/node/LayoutNodeWrapper$updateLayerParameters$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {v5, v2}, Landroidx/compose/ui/node/LayoutNodeWrapper$updateLayerParameters$1;-><init>(Le8/l;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v4, v5}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->e(Landroidx/compose/ui/node/OwnerScope;Le8/l;Le8/a;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->I()F

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->K()F

    .line 46
    move-result v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->e()F

    .line 50
    move-result v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->U()F

    .line 54
    move-result v5

    .line 55
    .line 56
    .line 57
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->V()F

    .line 58
    move-result v6

    .line 59
    .line 60
    .line 61
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->M()F

    .line 62
    move-result v7

    .line 63
    .line 64
    .line 65
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m()J

    .line 66
    move-result-wide v17

    .line 67
    .line 68
    .line 69
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->Q()J

    .line 70
    move-result-wide v19

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->x()F

    .line 74
    move-result v8

    .line 75
    .line 76
    .line 77
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->B()F

    .line 78
    move-result v9

    .line 79
    .line 80
    .line 81
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->H()F

    .line 82
    move-result v10

    .line 83
    .line 84
    .line 85
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->p()F

    .line 86
    move-result v11

    .line 87
    .line 88
    .line 89
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->S()J

    .line 90
    move-result-wide v12

    .line 91
    .line 92
    .line 93
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->O()Landroidx/compose/ui/graphics/Shape;

    .line 94
    move-result-object v14

    .line 95
    .line 96
    .line 97
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->r()Z

    .line 98
    move-result v16

    .line 99
    .line 100
    move-object/from16 v23, v15

    .line 101
    .line 102
    move/from16 v15, v16

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->u()Landroidx/compose/ui/graphics/RenderEffect;

    .line 106
    move-result-object v16

    .line 107
    .line 108
    move/from16 v24, v2

    .line 109
    .line 110
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 114
    move-result-object v21

    .line 115
    .line 116
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->T()Landroidx/compose/ui/unit/Density;

    .line 120
    move-result-object v22

    .line 121
    .line 122
    move/from16 v2, v24

    .line 123
    .line 124
    .line 125
    invoke-interface/range {v1 .. v22}, Landroidx/compose/ui/node/OwnedLayer;->f(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->r()Z

    .line 129
    move-result v1

    .line 130
    .line 131
    iput-boolean v1, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isClipping:Z

    .line 132
    goto :goto_0

    .line 133
    .line 134
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    const-string v2, "Required value was null."

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    throw v1

    .line 145
    .line 146
    :cond_1
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Le8/l;

    .line 147
    .line 148
    if-nez v1, :cond_3

    .line 149
    .line 150
    :goto_0
    sget-object v1, Landroidx/compose/ui/node/LayoutNodeWrapper;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->e()F

    .line 154
    move-result v1

    .line 155
    .line 156
    iput v1, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerAlpha:F

    .line 157
    .line 158
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    if-eqz v1, :cond_2

    .line 165
    .line 166
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 167
    .line 168
    .line 169
    invoke-interface {v1, v2}, Landroidx/compose/ui/node/Owner;->i(Landroidx/compose/ui/node/LayoutNode;)V

    .line 170
    :cond_2
    return-void

    .line 171
    .line 172
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    const-string v2, "Failed requirement."

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    throw v1
.end method

.method private final o1(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->a()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/ui/node/DrawEntity;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Y1(Landroidx/compose/ui/graphics/Canvas;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DrawEntity;->m(Landroidx/compose/ui/graphics/Canvas;)V

    .line 24
    :goto_0
    return-void
.end method

.method private final r1(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->b()F

    .line 10
    move-result v1

    .line 11
    int-to-float v0, v0

    .line 12
    sub-float/2addr v1, v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->i(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->c()F

    .line 19
    move-result v1

    .line 20
    sub-float/2addr v1, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->j(F)V

    .line 24
    .line 25
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->d()F

    .line 33
    move-result v1

    .line 34
    int-to-float v0, v0

    .line 35
    sub-float/2addr v1, v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->k(F)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->a()F

    .line 42
    move-result v1

    .line 43
    sub-float/2addr v1, v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->h(F)V

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, p1, v1}, Landroidx/compose/ui/node/OwnedLayer;->a(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 55
    .line 56
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isClipping:Z

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    if-eqz p2, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->a()J

    .line 64
    move-result-wide v0

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 68
    move-result p2

    .line 69
    int-to-float p2, p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->a()J

    .line 73
    move-result-wide v0

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 77
    move-result v0

    .line 78
    int-to-float v0, v0

    .line 79
    const/4 v1, 0x0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1, v1, p2, v0}, Landroidx/compose/ui/geometry/MutableRect;->e(FFFF)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->f()Z

    .line 86
    :cond_0
    return-void
.end method

.method private final t1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final A1()J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->w0()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->e()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/unit/Density;->X(J)J

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public final B()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->r0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public final C1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    return-wide v0
.end method

.method protected final D1()Landroidx/compose/ui/geometry/MutableRect;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/geometry/MutableRect;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/ui/geometry/MutableRect;-><init>(FFFF)V

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    .line 13
    :cond_0
    return-object v0
.end method

.method public F1()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final G1()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    return-object v0
.end method

.method public final H1()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->zIndex:F

    return v0
.end method

.method public K(J)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    move-object v0, p0

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->g2(J)J

    .line 13
    move-result-wide p1

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-wide p1

    .line 18
    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public final K1(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 10
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/node/HitTestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZ)V"
        }
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    move-wide v3, p2

    .line 3
    move-object v5, p4

    .line 4
    .line 5
    const-string v0, "hitTestSource"

    .line 6
    move-object v2, p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v0, "hitTestResult"

    .line 12
    .line 13
    .line 14
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, v9, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->a()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->j2(J)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    if-eqz p5, :cond_6

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->A1()J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2, p3, v6, v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->l1(JJ)F

    .line 40
    move-result v8

    .line 41
    .line 42
    .line 43
    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_6

    .line 47
    .line 48
    .line 49
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-nez v0, :cond_6

    .line 53
    const/4 v0, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p4, v8, v0}, Landroidx/compose/ui/node/HitTestResult;->t(FZ)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    const/4 v7, 0x0

    .line 61
    move-object v0, p0

    .line 62
    move-object v2, p1

    .line 63
    move-wide v3, p2

    .line 64
    move-object v5, p4

    .line 65
    move v6, p5

    .line 66
    .line 67
    .line 68
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->J1(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_0
    if-nez v1, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->L1(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->O1(J)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    move-object v0, p0

    .line 85
    move-object v2, p1

    .line 86
    move-wide v3, p2

    .line 87
    move-object v5, p4

    .line 88
    move v6, p5

    .line 89
    .line 90
    move/from16 v7, p6

    .line 91
    .line 92
    .line 93
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->I1(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_2
    if-nez p5, :cond_3

    .line 97
    .line 98
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 99
    :goto_0
    move v8, v0

    .line 100
    goto :goto_1

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->A1()J

    .line 104
    move-result-wide v6

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p2, p3, v6, v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->l1(JJ)F

    .line 108
    move-result v0

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :goto_1
    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    .line 113
    move-result v0

    .line 114
    .line 115
    if-nez v0, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 119
    move-result v0

    .line 120
    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    move/from16 v7, p6

    .line 124
    .line 125
    .line 126
    invoke-virtual {p4, v8, v7}, Landroidx/compose/ui/node/HitTestResult;->t(FZ)Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-eqz v0, :cond_5

    .line 130
    move-object v0, p0

    .line 131
    move-object v2, p1

    .line 132
    move-wide v3, p2

    .line 133
    move-object v5, p4

    .line 134
    move v6, p5

    .line 135
    .line 136
    move/from16 v7, p6

    .line 137
    .line 138
    .line 139
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->J1(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 140
    goto :goto_2

    .line 141
    .line 142
    :cond_4
    move/from16 v7, p6

    .line 143
    :cond_5
    move-object v0, p0

    .line 144
    move-object v2, p1

    .line 145
    move-wide v3, p2

    .line 146
    move-object v5, p4

    .line 147
    move v6, p5

    .line 148
    .line 149
    move/from16 v7, p6

    .line 150
    .line 151
    .line 152
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->f2(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 153
    :cond_6
    :goto_2
    return-void
.end method

.method public L1(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 8
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/node/HitTestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZ)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "hitTestSource"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "hitTestResult"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->q1(J)J

    .line 20
    move-result-wide v3

    .line 21
    move-object v2, p1

    .line 22
    move-object v5, p4

    .line 23
    move v6, p5

    .line 24
    move v7, p6

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->K1(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 28
    :cond_0
    return-void
.end method

.method public M1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->M1()V

    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public N1(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->E1()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sget-object v1, Landroidx/compose/ui/node/LayoutNodeWrapper;->onCommitAffectingLayer:Le8/l;

    .line 20
    .line 21
    new-instance v2, Landroidx/compose/ui/node/LayoutNodeWrapper$invoke$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$invoke$1;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0, v1, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->e(Landroidx/compose/ui/node/OwnerScope;Le8/l;Le8/a;)V

    .line 28
    const/4 p1, 0x0

    .line 29
    .line 30
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerDrawingWasSkipped:Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x1

    .line 33
    .line 34
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerDrawingWasSkipped:Z

    .line 35
    :goto_0
    return-void
.end method

.method public O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "sourceCoordinates"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->p1(Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    :goto_0
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->g2(J)J

    .line 17
    move-result-wide p2

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->g1(Landroidx/compose/ui/node/LayoutNodeWrapper;J)J

    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method protected final O1(J)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 8
    move-result p1

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    cmpl-float v1, v0, p2

    .line 12
    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    cmpl-float p2, p1, p2

    .line 16
    .line 17
    if-ltz p2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->M0()I

    .line 21
    move-result p2

    .line 22
    int-to-float p2, p2

    .line 23
    .line 24
    cmpg-float p2, v0, p2

    .line 25
    .line 26
    if-gez p2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->C0()I

    .line 30
    move-result p2

    .line 31
    int-to-float p2, p2

    .line 32
    .line 33
    cmpg-float p1, p1, p2

    .line 34
    .line 35
    if-gez p1, :cond_0

    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    return p1
.end method

.method public final P1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isShallowPlacing:Z

    return v0
.end method

.method public final Q()Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_isAttached:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->K0()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "Failed requirement."

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_isAttached:Z

    .line 28
    return v0
.end method

.method public final Q1()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerAlpha:F

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    cmpg-float v0, v0, v1

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q1()Z

    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method protected R0(JFLe8/l;)V
    .locals 2
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->T1(Le8/l;)V

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->i(JJ)Z

    .line 9
    move-result p4

    .line 10
    .line 11
    if-nez p4, :cond_5

    .line 12
    .line 13
    iput-wide p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 14
    .line 15
    iget-object p4, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 16
    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p4, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->h(J)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->M1()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    .line 40
    :goto_1
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->S0()V

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_3
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->S0()V

    .line 64
    .line 65
    :cond_4
    :goto_2
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, p2}, Landroidx/compose/ui/node/Owner;->i(Landroidx/compose/ui/node/LayoutNode;)V

    .line 77
    .line 78
    :cond_5
    iput p3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->zIndex:F

    .line 79
    return-void
.end method

.method public S(J)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/node/Owner;->f(J)J

    .line 20
    move-result-wide p1

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->e(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 24
    move-result-wide v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 32
    move-result-wide p1

    .line 33
    return-wide p1

    .line 34
    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string p2, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1
.end method

.method public S1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 8
    :cond_0
    return-void
.end method

.method public final T1(Le8/l;)V
    .locals 4
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Le8/l;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v0, p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->T()Landroidx/compose/ui/unit/Density;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    if-eq v0, v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move v0, v2

    .line 35
    .line 36
    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Le8/l;

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->T()Landroidx/compose/ui/unit/Density;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    iput-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 45
    .line 46
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    iput-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q()Z

    .line 56
    move-result v3

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 63
    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateParentLayer:Le8/a;

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/node/Owner;->q(Le8/l;Le8/a;)Landroidx/compose/ui/node/OwnedLayer;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->F0()J

    .line 80
    move-result-wide v0

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/node/OwnedLayer;->e(J)V

    .line 84
    .line 85
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/node/OwnedLayer;->h(J)V

    .line 89
    .line 90
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->i2()V

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroidx/compose/ui/node/LayoutNode;->o1(Z)V

    .line 99
    .line 100
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateParentLayer:Le8/a;

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 104
    goto :goto_2

    .line 105
    .line 106
    :cond_2
    if-eqz v0, :cond_5

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->i2()V

    .line 110
    goto :goto_2

    .line 111
    .line 112
    :cond_3
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 113
    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Landroidx/compose/ui/node/OwnedLayer;->destroy()V

    .line 118
    .line 119
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v2}, Landroidx/compose/ui/node/LayoutNode;->o1(Z)V

    .line 123
    .line 124
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateParentLayer:Le8/a;

    .line 125
    .line 126
    .line 127
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q()Z

    .line 131
    move-result p1

    .line 132
    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 144
    .line 145
    .line 146
    invoke-interface {p1, v0}, Landroidx/compose/ui/node/Owner;->i(Landroidx/compose/ui/node/LayoutNode;)V

    .line 147
    :cond_4
    const/4 p1, 0x0

    .line 148
    .line 149
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 150
    .line 151
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerDrawingWasSkipped:Z

    .line 152
    :cond_5
    :goto_2
    return-void
.end method

.method protected U1(II)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/node/OwnedLayer;->e(J)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->M1()V

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroidx/compose/ui/node/Owner;->i(Landroidx/compose/ui/node/LayoutNode;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 36
    move-result-wide p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->T0(J)V

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 42
    .line 43
    sget-object p2, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroidx/compose/ui/node/EntityList$Companion;->a()I

    .line 47
    move-result p2

    .line 48
    .line 49
    aget-object p1, p1, p2

    .line 50
    .line 51
    :goto_1
    if-eqz p1, :cond_3

    .line 52
    move-object p2, p1

    .line 53
    .line 54
    check-cast p2, Landroidx/compose/ui/node/DrawEntity;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroidx/compose/ui/node/DrawEntity;->n()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 61
    move-result-object p1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    return-void
.end method

.method public final V1()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->e()I

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Landroidx/compose/ui/node/EntityList;->n([Landroidx/compose/ui/node/LayoutNodeEntity;I)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 24
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    :try_start_1
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->e()I

    .line 30
    move-result v1

    .line 31
    .line 32
    aget-object v1, v3, v1

    .line 33
    .line 34
    :goto_0
    if-eqz v1, :cond_0

    .line 35
    move-object v3, v1

    .line 36
    .line 37
    check-cast v3, Landroidx/compose/ui/node/SimpleEntity;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    check-cast v3, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->F0()J

    .line 47
    move-result-wide v4

    .line 48
    .line 49
    .line 50
    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/OnRemeasuredModifier;->b0(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    :try_start_2
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 66
    goto :goto_3

    .line 67
    :catchall_1
    move-exception v1

    .line 68
    goto :goto_2

    .line 69
    .line 70
    .line 71
    :goto_1
    :try_start_3
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 72
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 76
    throw v1

    .line 77
    :cond_1
    :goto_3
    return-void
.end method

.method public W1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 8
    :cond_0
    return-void
.end method

.method public final X1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->b()I

    .line 8
    move-result v1

    .line 9
    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_0

    .line 13
    move-object v1, v0

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/ui/node/SimpleEntity;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/ui/layout/OnPlacedModifier;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p0}, Landroidx/compose/ui/layout/OnPlacedModifier;->e(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public Y1(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->m1(Landroidx/compose/ui/graphics/Canvas;)V

    .line 15
    :cond_0
    return-void
.end method

.method public final Z1(Landroidx/compose/ui/geometry/MutableRect;ZZ)V
    .locals 6
    .param p1    # Landroidx/compose/ui/geometry/MutableRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "bounds"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isClipping:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->A1()J

    .line 19
    move-result-wide p2

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 23
    move-result v1

    .line 24
    .line 25
    const/high16 v2, 0x40000000    # 2.0f

    .line 26
    div-float/2addr v1, v2

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 30
    move-result p2

    .line 31
    div-float/2addr p2, v2

    .line 32
    neg-float p3, v1

    .line 33
    neg-float v2, p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->a()J

    .line 37
    move-result-wide v3

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 41
    move-result v3

    .line 42
    int-to-float v3, v3

    .line 43
    add-float/2addr v3, v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->a()J

    .line 47
    move-result-wide v4

    .line 48
    .line 49
    .line 50
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    add-float/2addr v1, p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p3, v2, v3, v1}, Landroidx/compose/ui/geometry/MutableRect;->e(FFFF)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    if-eqz p2, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->a()J

    .line 63
    move-result-wide p2

    .line 64
    .line 65
    .line 66
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 67
    move-result p2

    .line 68
    int-to-float p2, p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->a()J

    .line 72
    move-result-wide v1

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 76
    move-result p3

    .line 77
    int-to-float p3, p3

    .line 78
    const/4 v1, 0x0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, v1, p2, p3}, Landroidx/compose/ui/geometry/MutableRect;->e(FFFF)V

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->f()Z

    .line 85
    move-result p2

    .line 86
    .line 87
    if-eqz p2, :cond_2

    .line 88
    return-void

    .line 89
    :cond_2
    const/4 p2, 0x0

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->a(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 93
    .line 94
    :cond_3
    iget-wide p2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 95
    .line 96
    .line 97
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 98
    move-result p2

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->b()F

    .line 102
    move-result p3

    .line 103
    int-to-float p2, p2

    .line 104
    add-float/2addr p3, p2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p3}, Landroidx/compose/ui/geometry/MutableRect;->i(F)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->c()F

    .line 111
    move-result p3

    .line 112
    add-float/2addr p3, p2

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p3}, Landroidx/compose/ui/geometry/MutableRect;->j(F)V

    .line 116
    .line 117
    iget-wide p2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 118
    .line 119
    .line 120
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 121
    move-result p2

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->d()F

    .line 125
    move-result p3

    .line 126
    int-to-float p2, p2

    .line 127
    add-float/2addr p3, p2

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p3}, Landroidx/compose/ui/geometry/MutableRect;->k(F)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->a()F

    .line 134
    move-result p3

    .line 135
    add-float/2addr p3, p2

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p3}, Landroidx/compose/ui/geometry/MutableRect;->h(F)V

    .line 139
    return-void
.end method

.method public final a()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->F0()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final b2(Landroidx/compose/ui/layout/MeasureResult;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/MeasureResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 8
    .line 9
    if-eq p1, v0, :cond_a

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 21
    move-result v2

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eq v1, v0, :cond_1

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->U1(II)V

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->oldAlignmentLines:Ljava/util/Map;

    .line 47
    const/4 v1, 0x1

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 63
    move-result v0

    .line 64
    xor-int/2addr v0, v1

    .line 65
    .line 66
    if-eqz v0, :cond_a

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->oldAlignmentLines:Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result v0

    .line 77
    .line 78
    if-nez v0, :cond_a

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 82
    move-result-object v0

    .line 83
    const/4 v2, 0x0

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move-object v0, v2

    .line 90
    .line 91
    :goto_0
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result v0

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->S0()V

    .line 109
    .line 110
    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->i()Z

    .line 118
    move-result v0

    .line 119
    const/4 v3, 0x0

    .line 120
    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->j1(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->h()Z

    .line 143
    move-result v0

    .line 144
    .line 145
    if-eqz v0, :cond_8

    .line 146
    .line 147
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 157
    goto :goto_1

    .line 158
    .line 159
    :cond_7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->S0()V

    .line 163
    .line 164
    :cond_8
    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->n(Z)V

    .line 172
    .line 173
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->oldAlignmentLines:Ljava/util/Map;

    .line 174
    .line 175
    if-nez v0, :cond_9

    .line 176
    .line 177
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 178
    .line 179
    .line 180
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 181
    .line 182
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->oldAlignmentLines:Ljava/util/Map;

    .line 183
    .line 184
    .line 185
    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 186
    .line 187
    .line 188
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    .line 192
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 193
    :cond_a
    return-void
.end method

.method public final c0(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 3
    .param p1    # Landroidx/compose/ui/layout/AlignmentLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "alignmentLine"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->t1()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    const/high16 v1, -0x80000000

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->i1(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    return v1

    .line 22
    .line 23
    :cond_1
    instance-of p1, p1, Landroidx/compose/ui/layout/VerticalAlignmentLine;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->z0()J

    .line 29
    move-result-wide v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 33
    move-result p1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->z0()J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 42
    move-result p1

    .line 43
    :goto_0
    add-int/2addr v0, p1

    .line 44
    return v0
.end method

.method public final c2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isShallowPlacing:Z

    return-void
.end method

.method public final d2(Landroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->c()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/ui/node/SimpleEntity;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->B1(Landroidx/compose/ui/node/SimpleEntity;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final e2()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->d()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/ui/node/PointerInputEntity;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/node/PointerInputEntity;->j()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->e2()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1
.end method

.method public g2(J)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, p2, v1}, Landroidx/compose/ui/node/OwnedLayer;->d(JZ)J

    .line 9
    move-result-wide p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->c(JJ)J

    .line 15
    move-result-wide p1

    .line 16
    return-wide p1
.end method

.method public h1()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_isAttached:Z

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Le8/l;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->T1(Le8/l;)V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    :goto_1
    if-eqz v3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->g()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 25
    move-result-object v3

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final h2()Landroidx/compose/ui/geometry/Rect;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->D1()Landroidx/compose/ui/geometry/MutableRect;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->A1()J

    .line 25
    move-result-wide v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->j1(J)J

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 33
    move-result v4

    .line 34
    neg-float v4, v4

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->i(F)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 41
    move-result v4

    .line 42
    neg-float v4, v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->k(F)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->M0()I

    .line 49
    move-result v4

    .line 50
    int-to-float v4, v4

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 54
    move-result v5

    .line 55
    add-float/2addr v4, v5

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->j(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->C0()I

    .line 62
    move-result v4

    .line 63
    int-to-float v4, v4

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 67
    move-result v2

    .line 68
    add-float/2addr v4, v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->h(F)V

    .line 72
    move-object v2, p0

    .line 73
    .line 74
    :goto_0
    if-eq v2, v0, :cond_2

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1, v3, v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Z1(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/MutableRect;->f()Z

    .line 83
    move-result v3

    .line 84
    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    .line 94
    :cond_1
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-static {v1}, Landroidx/compose/ui/geometry/MutableRectKt;->a(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;

    .line 102
    move-result-object v0

    .line 103
    return-object v0
.end method

.method public abstract i1(Landroidx/compose/ui/layout/AlignmentLine;)I
    .param p1    # Landroidx/compose/ui/layout/AlignmentLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/Canvas;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->N1(Landroidx/compose/ui/graphics/Canvas;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final j1(J)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->M0()I

    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    sub-float/2addr v0, v1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->C0()I

    .line 18
    move-result p2

    .line 19
    int-to-float p2, p2

    .line 20
    sub-float/2addr p1, p2

    .line 21
    .line 22
    const/high16 p2, 0x40000000    # 2.0f

    .line 23
    div-float/2addr v0, p2

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 28
    move-result v0

    .line 29
    div-float/2addr p1, p2

    .line 30
    .line 31
    .line 32
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 33
    move-result p1

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 37
    move-result-wide p1

    .line 38
    return-wide p1
.end method

.method protected final j2(J)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/OffsetKt;->b(J)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->isClipping:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->g(J)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    :cond_1
    const/4 v1, 0x1

    .line 24
    :cond_2
    return v1
.end method

.method public k1()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    .line 7
    :goto_0
    if-ge v3, v1, :cond_1

    .line 8
    .line 9
    aget-object v4, v0, v3

    .line 10
    .line 11
    :goto_1
    if-eqz v4, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeEntity;->h()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 18
    move-result-object v4

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_isAttached:Z

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Le8/l;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->T1(Le8/l;)V

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->H0()V

    .line 41
    :cond_2
    return-void
.end method

.method protected final l1(JJ)F
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->M0()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    .line 8
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 9
    move-result v1

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 14
    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->C0()I

    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 24
    move-result v2

    .line 25
    .line 26
    cmpl-float v0, v0, v2

    .line 27
    .line 28
    if-ltz v0, :cond_0

    .line 29
    return v1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->j1(J)J

    .line 33
    move-result-wide p3

    .line 34
    .line 35
    .line 36
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 41
    move-result p3

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->R1(J)J

    .line 45
    move-result-wide p1

    .line 46
    const/4 p4, 0x0

    .line 47
    .line 48
    cmpl-float v2, v0, p4

    .line 49
    .line 50
    if-gtz v2, :cond_1

    .line 51
    .line 52
    cmpl-float p4, p3, p4

    .line 53
    .line 54
    if-lez p4, :cond_2

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 58
    move-result p4

    .line 59
    .line 60
    cmpg-float p4, p4, v0

    .line 61
    .line 62
    if-gtz p4, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 66
    move-result p4

    .line 67
    .line 68
    cmpg-float p3, p4, p3

    .line 69
    .line 70
    if-gtz p3, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->l(J)F

    .line 74
    move-result v1

    .line 75
    :cond_2
    return v1
.end method

.method public m(J)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->K(J)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/Owner;->h(J)J

    .line 14
    move-result-wide p1

    .line 15
    return-wide p1
.end method

.method public final m1(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Landroidx/compose/ui/node/OwnedLayer;->b(Landroidx/compose/ui/graphics/Canvas;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    .line 22
    iget-wide v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/Canvas;->b(FF)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->o1(Landroidx/compose/ui/graphics/Canvas;)V

    .line 34
    neg-float v0, v0

    .line 35
    neg-float v1, v1

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/Canvas;->b(FF)V

    .line 39
    :goto_0
    return-void
.end method

.method protected final n1(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Paint;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "paint"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->F0()J

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    .line 23
    const/high16 v2, 0x3f000000    # 0.5f

    .line 24
    sub-float/2addr v1, v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->F0()J

    .line 28
    move-result-wide v3

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 32
    move-result v3

    .line 33
    int-to-float v3, v3

    .line 34
    sub-float/2addr v3, v2

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v2, v2, v1, v3}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0, p2}, Landroidx/compose/ui/graphics/Canvas;->j(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    .line 41
    return-void
.end method

.method public final p1(Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 4
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "other"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->r0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    move-result-object v0

    .line 16
    move-object v1, p0

    .line 17
    .line 18
    :goto_0
    if-eq v1, v0, :cond_0

    .line 19
    .line 20
    if-eq v1, p1, :cond_0

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    if-ne v1, p1, :cond_1

    .line 29
    return-object p1

    .line 30
    :cond_1
    return-object p0

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->U()I

    .line 34
    move-result v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->U()I

    .line 38
    move-result v3

    .line 39
    .line 40
    if-le v2, v3, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->U()I

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->U()I

    .line 56
    move-result v3

    .line 57
    .line 58
    if-le v2, v3, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 66
    goto :goto_2

    .line 67
    .line 68
    :cond_4
    :goto_3
    if-eq v0, v1, :cond_6

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    goto :goto_3

    .line 82
    .line 83
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string v0, "layouts are not part of the same hierarchy"

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p1

    .line 90
    .line 91
    :cond_6
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 92
    .line 93
    if-ne v1, v2, :cond_7

    .line 94
    move-object p1, p0

    .line 95
    goto :goto_4

    .line 96
    .line 97
    :cond_7
    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 98
    .line 99
    if-ne v0, v1, :cond_8

    .line 100
    goto :goto_4

    .line 101
    .line 102
    .line 103
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->c0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 104
    move-result-object p1

    .line 105
    :goto_4
    return-object p1
.end method

.method public q1(J)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->position:J

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->b(JJ)J

    .line 6
    move-result-wide p1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1, p2, v1}, Landroidx/compose/ui/node/OwnedLayer;->d(JZ)J

    .line 15
    move-result-wide p1

    .line 16
    :cond_0
    return-wide p1
.end method

.method public r(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "sourceCoordinates"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    move-object v0, p1

    .line 19
    .line 20
    check-cast v0, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->p1(Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->D1()Landroidx/compose/ui/geometry/MutableRect;

    .line 28
    move-result-object v8

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->i(F)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->k(F)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 39
    move-result-wide v2

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 43
    move-result v2

    .line 44
    int-to-float v2, v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->j(F)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 51
    move-result-wide v2

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 55
    move-result p1

    .line 56
    int-to-float p1, p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, p1}, Landroidx/compose/ui/geometry/MutableRect;->h(F)V

    .line 60
    .line 61
    :goto_0
    if-eq v0, v1, :cond_1

    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v6, 0x4

    .line 64
    const/4 v7, 0x0

    .line 65
    move-object v2, v0

    .line 66
    move-object v3, v8

    .line 67
    move v4, p2

    .line 68
    .line 69
    .line 70
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->a2(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/MutableRect;ZZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/MutableRect;->f()Z

    .line 74
    move-result p1

    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    .line 85
    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;->wrappedBy:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-direct {p0, v1, v8, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->f1(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 93
    .line 94
    .line 95
    invoke-static {v8}, Landroidx/compose/ui/geometry/MutableRectKt;->a(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;

    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    .line 99
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    const-string v0, "LayoutCoordinates "

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string p1, " is not attached!"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p2

    .line 130
    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    const-string p2, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    .line 140
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p1
.end method

.method public final s1()[Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    return-object v0
.end method

.method public final u1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->lastLayerDrawingWasSkipped:Z

    return v0
.end method

.method public final v1()Landroidx/compose/ui/node/OwnedLayer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layer:Landroidx/compose/ui/node/OwnedLayer;

    return-object v0
.end method

.method protected final w1()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layerBlock:Le8/l;

    return-object v0
.end method

.method public final x1()Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final y1()Landroidx/compose/ui/layout/MeasureResult;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "Asking for measurement result of unmeasured layout modifier"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public abstract z1()Landroidx/compose/ui/layout/MeasureScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
