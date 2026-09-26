.class public abstract Landroidx/compose/ui/layout/Placeable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/Measured;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/Placeable$PlacementScope;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private height:I

.field private measuredSize:J

.field private measurementConstraints:J

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    iput-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->a()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    iput-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 17
    return-void
.end method

.method private final S0()V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-wide v1, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lj8/m;->n(III)I

    .line 22
    move-result v0

    .line 23
    .line 24
    iput v0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 25
    .line 26
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iget-wide v1, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 36
    move-result v1

    .line 37
    .line 38
    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lj8/m;->n(III)I

    .line 46
    move-result v0

    .line 47
    .line 48
    iput v0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 49
    return-void
.end method

.method public static final synthetic d0(Landroidx/compose/ui/layout/Placeable;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->z0()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic q0(Landroidx/compose/ui/layout/Placeable;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable;->R0(JFLe8/l;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final B0()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    return v0
.end method

.method public C0()I
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected final F0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    return-wide v0
.end method

.method public M0()I
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected final N0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    return-wide v0
.end method

.method public final Q0()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    return v0
.end method

.method protected abstract R0(JFLe8/l;)V
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
.end method

.method protected final T0(J)V
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;->S0()V

    .line 14
    :cond_0
    return-void
.end method

.method protected final U0(J)V
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(JJ)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;->S0()V

    .line 14
    :cond_0
    return-void
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/layout/d;->a(Landroidx/compose/ui/layout/Measured;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final z0()J
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    div-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 14
    .line 15
    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 19
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    .line 22
    div-int/lit8 v1, v1, 0x2

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 26
    move-result-wide v0

    .line 27
    return-wide v0
.end method
