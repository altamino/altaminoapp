.class public Lj8/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lf8/a;"
    }
.end annotation


# static fields
.field public static final Companion:Lj8/j$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final first:J

.field private final last:J

.field private final step:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj8/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj8/j$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lj8/j;->Companion:Lj8/j$a;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p5, v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-wide/high16 v0, -0x8000000000000000L

    .line 12
    .line 13
    cmp-long v0, p5, v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iput-wide p1, p0, Lj8/j;->first:J

    .line 18
    .line 19
    .line 20
    invoke-static/range {p1 .. p6}, La8/c;->d(JJJ)J

    .line 21
    move-result-wide p1

    .line 22
    .line 23
    iput-wide p1, p0, Lj8/j;->last:J

    .line 24
    .line 25
    iput-wide p5, p0, Lj8/j;->step:J

    .line 26
    return-void

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p2, "Step must be greater than Long.MIN_VALUE to avoid overflow on negation."

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string p2, "Step must be non-zero."

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method


# virtual methods
.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lj8/j;->first:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lj8/j;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lj8/j;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    move-object v0, p1

    .line 12
    .line 13
    check-cast v0, Lj8/j;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lj8/j;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-wide v0, p0, Lj8/j;->first:J

    .line 22
    .line 23
    check-cast p1, Lj8/j;

    .line 24
    .line 25
    iget-wide v2, p1, Lj8/j;->first:J

    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-wide v0, p0, Lj8/j;->last:J

    .line 32
    .line 33
    iget-wide v2, p1, Lj8/j;->last:J

    .line 34
    .line 35
    cmp-long v0, v0, v2

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-wide v0, p0, Lj8/j;->step:J

    .line 40
    .line 41
    iget-wide v2, p1, Lj8/j;->step:J

    .line 42
    .line 43
    cmp-long p1, v0, v2

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    :cond_1
    const/4 p1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p1, 0x0

    .line 49
    :goto_0
    return p1
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lj8/j;->last:J

    return-wide v0
.end method

.method public g()Lkotlin/collections/n0;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v7, Lj8/k;

    .line 3
    .line 4
    iget-wide v1, p0, Lj8/j;->first:J

    .line 5
    .line 6
    iget-wide v3, p0, Lj8/j;->last:J

    .line 7
    .line 8
    iget-wide v5, p0, Lj8/j;->step:J

    .line 9
    move-object v0, v7

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Lj8/k;-><init>(JJJ)V

    .line 13
    return-object v7
.end method

.method public hashCode()I
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lj8/j;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/16 v0, 0x1f

    .line 11
    int-to-long v0, v0

    .line 12
    .line 13
    iget-wide v2, p0, Lj8/j;->first:J

    .line 14
    .line 15
    const/16 v4, 0x20

    .line 16
    .line 17
    ushr-long v5, v2, v4

    .line 18
    xor-long/2addr v2, v5

    .line 19
    mul-long/2addr v2, v0

    .line 20
    .line 21
    iget-wide v5, p0, Lj8/j;->last:J

    .line 22
    .line 23
    ushr-long v7, v5, v4

    .line 24
    xor-long/2addr v5, v7

    .line 25
    add-long/2addr v2, v5

    .line 26
    mul-long/2addr v0, v2

    .line 27
    .line 28
    iget-wide v2, p0, Lj8/j;->step:J

    .line 29
    .line 30
    ushr-long v4, v2, v4

    .line 31
    xor-long/2addr v2, v4

    .line 32
    add-long/2addr v0, v2

    .line 33
    long-to-int v0, v0

    .line 34
    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lj8/j;->step:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-wide v3, p0, Lj8/j;->first:J

    iget-wide v5, p0, Lj8/j;->last:J

    if-lez v0, :cond_0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lj8/j;->g()Lkotlin/collections/n0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lj8/j;->step:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    const-string v1, " step "

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    iget-wide v2, p0, Lj8/j;->first:J

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, ".."

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-wide v2, p0, Lj8/j;->last:J

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-wide v1, p0, Lj8/j;->step:J

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    iget-wide v2, p0, Lj8/j;->first:J

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, " downTo "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget-wide v2, p0, Lj8/j;->last:J

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    iget-wide v1, p0, Lj8/j;->step:J

    .line 69
    neg-long v1, v1

    .line 70
    goto :goto_0

    .line 71
    :goto_1
    return-object v0
.end method
