.class public final Landroidx/compose/ui/node/OnPositionedDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnPositionedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnPositionedDispatcher.kt\nandroidx/compose/ui/node/OnPositionedDispatcher\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,71:1\n1182#2:72\n1161#2,2:73\n728#3,2:75\n728#3,2:77\n492#3,11:79\n460#3,11:90\n*S KotlinDebug\n*F\n+ 1 OnPositionedDispatcher.kt\nandroidx/compose/ui/node/OnPositionedDispatcher\n*L\n26#1:72\n26#1:73,2\n29#1:75,2\n35#1:77,2\n42#1:79,11\n54#1:90,11\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final layoutNodes:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/node/OnPositionedDispatcher;->Companion:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    new-array v1, v1, [Landroidx/compose/ui/node/LayoutNode;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    return-void
.end method

.method private final b(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->N()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->s1(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-lez v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    :cond_0
    aget-object v2, p1, v0

    .line 24
    .line 25
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;->b(Landroidx/compose/ui/node/LayoutNode;)V

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    if-lt v0, v1, :cond_0

    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion$DepthComparator;->INSTANCE:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion$DepthComparator;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->z(Ljava/util/Comparator;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-lez v1, :cond_2

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    :cond_0
    aget-object v2, v0, v1

    .line 24
    .line 25
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->p0()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;->b(Landroidx/compose/ui/node/LayoutNode;)V

    .line 35
    .line 36
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    if-gez v1, :cond_0

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->h()V

    .line 44
    return-void
.end method

.method public final c(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "node"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->s1(Z)V

    .line 15
    return-void
.end method

.method public final d(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "rootNode"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->h()V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->s1(Z)V

    .line 20
    return-void
.end method
