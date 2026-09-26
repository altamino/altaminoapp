.class public final Landroidx/compose/foundation/lazy/grid/GridItemSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation


# instance fields
.field private final packedValue:J


# direct methods
.method private synthetic constructor <init>(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    .line 6
    return-void
.end method

.method public static final synthetic a(J)Landroidx/compose/foundation/lazy/grid/GridItemSpan;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    return-object v0
.end method

.method public static b(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static c(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->g()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final d(J)I
    .locals 0

    .line 1
    long-to-int p0, p0

    return p0
.end method

.method public static e(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/a;->a(J)I

    move-result p0

    return p0
.end method

.method public static f(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemSpan(packedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->c(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->e(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->f(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
