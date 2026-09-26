.class public final Landroidx/compose/ui/graphics/vector/PathBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathBuilder;->nodes:Ljava/util/List;

    .line 11
    return-void
.end method

.method private final a(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathBuilder;->nodes:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method


# virtual methods
.method public final b()Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathBuilder;->nodes:Ljava/util/List;

    return-object v0
.end method

.method public final d(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final e(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
