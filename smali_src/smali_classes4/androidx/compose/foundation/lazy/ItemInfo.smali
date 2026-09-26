.class final Landroidx/compose/foundation/lazy/ItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private index:I

.field private notAnimatableDelta:J

.field private final placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/PlaceableInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/foundation/lazy/ItemInfo;->index:I

    .line 6
    .line 7
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    iput-wide v0, p0, Landroidx/compose/foundation/lazy/ItemInfo;->notAnimatableDelta:J

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/lazy/ItemInfo;->placeables:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/ItemInfo;->notAnimatableDelta:J

    return-wide v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/PlaceableInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/ItemInfo;->placeables:Ljava/util/List;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/ItemInfo;->index:I

    return-void
.end method

.method public final d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/ItemInfo;->notAnimatableDelta:J

    return-void
.end method
