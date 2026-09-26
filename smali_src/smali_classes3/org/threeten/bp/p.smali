.class public final Lorg/threeten/bp/p;
.super Lra/c;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/d;
.implements Lorg/threeten/bp/temporal/f;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lra/c;",
        "Lorg/threeten/bp/temporal/d;",
        "Lorg/threeten/bp/temporal/f;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/p;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/p;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_VALUE:I = 0x3b9ac9ff

.field public static final MIN_VALUE:I = -0x3b9ac9ff

.field private static final PARSER:Lorg/threeten/bp/format/b;

.field private static final serialVersionUID:J = -0x51d949b44ef9efL


# instance fields
.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/p$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/p$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/p;->FROM:Lorg/threeten/bp/temporal/j;

    .line 8
    .line 9
    new-instance v0, Lorg/threeten/bp/format/c;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lorg/threeten/bp/format/c;-><init>()V

    .line 13
    .line 14
    sget-object v1, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    sget-object v3, Lorg/threeten/bp/format/h;->EXCEEDS_PAD:Lorg/threeten/bp/format/h;

    .line 19
    const/4 v4, 0x4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/threeten/bp/format/c;->l(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;)Lorg/threeten/bp/format/c;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->s()Lorg/threeten/bp/format/b;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    sput-object v0, Lorg/threeten/bp/p;->PARSER:Lorg/threeten/bp/format/b;

    .line 30
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lra/c;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lorg/threeten/bp/p;->year:I

    .line 6
    return-void
.end method

.method public static o(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/p;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p0, Lorg/threeten/bp/p;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lorg/threeten/bp/p;

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lorg/threeten/bp/chrono/h;->h(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/h;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/h;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lorg/threeten/bp/g;->A(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/e;->f(Lorg/threeten/bp/temporal/h;)I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lorg/threeten/bp/p;->q(I)Lorg/threeten/bp/p;

    .line 33
    move-result-object p0
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p0

    .line 35
    .line 36
    :catch_0
    new-instance v0, Lorg/threeten/bp/b;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v2, "Unable to obtain Year from TemporalAccessor: "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, ", type "

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 73
    throw v0
.end method

.method public static q(I)Lorg/threeten/bp/p;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    int-to-long v1, p0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 7
    .line 8
    new-instance v0, Lorg/threeten/bp/p;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lorg/threeten/bp/p;-><init>(I)V

    .line 12
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/InvalidObjectException;

    .line 3
    .line 4
    const-string v1, "Deserialization via serialization delegate"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method static t(Ljava/io/DataInput;)Lorg/threeten/bp/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/p;->q(I)Lorg/threeten/bp/p;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/o;

    .line 3
    .line 4
    const/16 v1, 0x43

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/threeten/bp/chrono/h;->h(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/h;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/h;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 15
    .line 16
    iget v1, p0, Lorg/threeten/bp/p;->year:I

    .line 17
    int-to-long v1, v1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    .line 24
    :cond_0
    new-instance p1, Lorg/threeten/bp/b;

    .line 25
    .line 26
    const-string v0, "Adjustment only supported on ISO date-time"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget p1, p0, Lorg/threeten/bp/p;->year:I

    .line 7
    .line 8
    const-wide/16 v0, 0x1

    .line 9
    .line 10
    if-gtz p1, :cond_0

    .line 11
    .line 12
    .line 13
    const-wide/32 v2, 0x3b9aca00

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_0
    const-wide/32 v2, 0x3b9ac9ff

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    return-object p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-super {p0, p1}, Lra/c;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/p;->n(Lorg/threeten/bp/p;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/j<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->e()Lorg/threeten/bp/temporal/j;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    sget-object p1, Lorg/threeten/bp/temporal/b;->YEARS:Lorg/threeten/bp/temporal/b;

    .line 18
    return-object p1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eq p1, v0, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eq p1, v0, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    if-eq p1, v0, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-super {p0, p1}, Lra/c;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/p;->p(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/p;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget v1, p0, Lorg/threeten/bp/p;->year:I

    .line 12
    .line 13
    check-cast p1, Lorg/threeten/bp/p;

    .line 14
    .line 15
    iget p1, p1, Lorg/threeten/bp/p;->year:I

    .line 16
    .line 17
    if-ne v1, p1, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_2
    return v2
.end method

.method public f(Lorg/threeten/bp/temporal/h;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/p;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/threeten/bp/p;->k(Lorg/threeten/bp/temporal/h;)J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/p;->v(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/threeten/bp/p;->year:I

    return v0
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/a;

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :cond_1
    :goto_0
    return v1

    .line 22
    .line 23
    :cond_2
    if-eqz p1, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    goto :goto_1

    .line 31
    :cond_3
    move v1, v2

    .line 32
    :goto_1
    return v1
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/p;->u(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/p$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 7
    move-object v1, p1

    .line 8
    .line 9
    check-cast v1, Lorg/threeten/bp/temporal/a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v1

    .line 14
    .line 15
    aget v0, v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    if-eq v0, v2, :cond_2

    .line 22
    const/4 v2, 0x3

    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    iget p1, p0, Lorg/threeten/bp/p;->year:I

    .line 27
    .line 28
    if-ge p1, v1, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 30
    :cond_0
    int-to-long v0, v1

    .line 31
    return-wide v0

    .line 32
    .line 33
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v2, "Unsupported field: "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    .line 56
    :cond_2
    iget p1, p0, Lorg/threeten/bp/p;->year:I

    .line 57
    int-to-long v0, p1

    .line 58
    return-wide v0

    .line 59
    .line 60
    :cond_3
    iget p1, p0, Lorg/threeten/bp/p;->year:I

    .line 61
    .line 62
    if-ge p1, v1, :cond_4

    .line 63
    .line 64
    rsub-int/lit8 p1, p1, 0x1

    .line 65
    :cond_4
    int-to-long v0, p1

    .line 66
    return-wide v0

    .line 67
    .line 68
    .line 69
    :cond_5
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 70
    move-result-wide v0

    .line 71
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/p;->r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n(Lorg/threeten/bp/p;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/p;->year:I

    .line 3
    .line 4
    iget p1, p1, Lorg/threeten/bp/p;->year:I

    .line 5
    sub-int/2addr v0, p1

    .line 6
    return v0
.end method

.method public p(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/p;
    .locals 2

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide p1, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/p;->r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/p;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/p;->r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/p;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-long p1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/p;->r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/p;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/p;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/p$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 7
    move-object v1, p3

    .line 8
    .line 9
    check-cast v1, Lorg/threeten/bp/temporal/b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v1

    .line 14
    .line 15
    aget v0, v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-eq v0, v1, :cond_4

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    const/4 v1, 0x3

    .line 23
    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    const/4 v1, 0x4

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    const/4 v1, 0x5

    .line 29
    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    sget-object p3, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p3}, Lorg/threeten/bp/p;->k(Lorg/threeten/bp/temporal/h;)J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, p1, p2}, Lra/d;->k(JJ)J

    .line 40
    move-result-wide p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p3, p1, p2}, Lorg/threeten/bp/p;->v(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/p;

    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_0
    new-instance p1, Lorg/threeten/bp/temporal/l;

    .line 48
    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v0, "Unsupported unit: "

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    .line 70
    :cond_1
    const/16 p3, 0x3e8

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 74
    move-result-wide p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/p;->s(J)Lorg/threeten/bp/p;

    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    .line 81
    :cond_2
    const/16 p3, 0x64

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 85
    move-result-wide p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/p;->s(J)Lorg/threeten/bp/p;

    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    .line 92
    :cond_3
    const/16 p3, 0xa

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 96
    move-result-wide p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/p;->s(J)Lorg/threeten/bp/p;

    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/p;->s(J)Lorg/threeten/bp/p;

    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    check-cast p1, Lorg/threeten/bp/p;

    .line 113
    return-object p1
.end method

.method public s(J)Lorg/threeten/bp/p;
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 10
    .line 11
    iget v1, p0, Lorg/threeten/bp/p;->year:I

    .line 12
    int-to-long v1, v1

    .line 13
    add-long/2addr v1, p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->i(J)I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lorg/threeten/bp/p;->q(I)Lorg/threeten/bp/p;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/p;->year:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public u(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/p;

    .line 7
    return-object p1
.end method

.method public v(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/p;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 11
    .line 12
    sget-object v1, Lorg/threeten/bp/p$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    .line 18
    aget v0, v1, v0

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    const/4 v2, 0x2

    .line 23
    .line 24
    if-eq v0, v2, :cond_2

    .line 25
    const/4 v2, 0x3

    .line 26
    .line 27
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    sget-object p1, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lorg/threeten/bp/p;->k(Lorg/threeten/bp/temporal/h;)J

    .line 33
    move-result-wide v2

    .line 34
    .line 35
    cmp-long p1, v2, p2

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    move-object p1, p0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget p1, p0, Lorg/threeten/bp/p;->year:I

    .line 42
    sub-int/2addr v1, p1

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lorg/threeten/bp/p;->q(I)Lorg/threeten/bp/p;

    .line 46
    move-result-object p1

    .line 47
    :goto_0
    return-object p1

    .line 48
    .line 49
    :cond_1
    new-instance p2, Lorg/threeten/bp/temporal/l;

    .line 50
    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v0, "Unsupported field: "

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-direct {p2, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 70
    throw p2

    .line 71
    :cond_2
    long-to-int p1, p2

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lorg/threeten/bp/p;->q(I)Lorg/threeten/bp/p;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    .line 78
    :cond_3
    iget p1, p0, Lorg/threeten/bp/p;->year:I

    .line 79
    .line 80
    if-ge p1, v1, :cond_4

    .line 81
    .line 82
    const-wide/16 v0, 0x1

    .line 83
    .line 84
    sub-long p2, v0, p2

    .line 85
    :cond_4
    long-to-int p1, p2

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lorg/threeten/bp/p;->q(I)Lorg/threeten/bp/p;

    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    check-cast p1, Lorg/threeten/bp/p;

    .line 97
    return-object p1
.end method

.method w(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/p;->year:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 6
    return-void
.end method
