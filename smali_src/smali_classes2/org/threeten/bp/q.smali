.class public final Lorg/threeten/bp/q;
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
        "Lorg/threeten/bp/q;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/q;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSER:Lorg/threeten/bp/format/b;

.field private static final serialVersionUID:J = 0x3a0e6ceaf57ebbc6L


# instance fields
.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/q$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/q$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/q;->FROM:Lorg/threeten/bp/temporal/j;

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
    const/16 v1, 0x2d

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sget-object v1, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 32
    const/4 v2, 0x2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->s()Lorg/threeten/bp/format/b;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    sput-object v0, Lorg/threeten/bp/q;->PARSER:Lorg/threeten/bp/format/b;

    .line 43
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lra/c;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lorg/threeten/bp/q;->year:I

    .line 6
    .line 7
    iput p2, p0, Lorg/threeten/bp/q;->month:I

    .line 8
    return-void
.end method

.method public static o(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/q;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p0, Lorg/threeten/bp/q;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lorg/threeten/bp/q;

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
    sget-object v1, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/e;->f(Lorg/threeten/bp/temporal/h;)I

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lorg/threeten/bp/q;->s(II)Lorg/threeten/bp/q;

    .line 39
    move-result-object p0
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p0

    .line 41
    .line 42
    :catch_0
    new-instance v0, Lorg/threeten/bp/b;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v2, "Unable to obtain YearMonth from TemporalAccessor: "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, ", type "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0
.end method

.method private p()J
    .locals 4

    .line 1
    iget v0, p0, Lorg/threeten/bp/q;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/threeten/bp/q;->month:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
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

.method public static s(II)Lorg/threeten/bp/q;
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
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 9
    int-to-long v1, p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 13
    .line 14
    new-instance v0, Lorg/threeten/bp/q;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/q;-><init>(II)V

    .line 18
    return-object v0
.end method

.method static w(Ljava/io/DataInput;)Lorg/threeten/bp/q;
    .locals 1
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
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 8
    move-result p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Lorg/threeten/bp/q;->s(II)Lorg/threeten/bp/q;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/o;

    .line 3
    .line 4
    const/16 v1, 0x44

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method private x(II)Lorg/threeten/bp/q;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/q;->year:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lorg/threeten/bp/q;->month:I

    .line 7
    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lorg/threeten/bp/q;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/q;-><init>(II)V

    .line 15
    return-object v0
.end method


# virtual methods
.method public A(I)Lorg/threeten/bp/q;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    int-to-long v1, p1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 7
    .line 8
    iget v0, p0, Lorg/threeten/bp/q;->year:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/q;->x(II)Lorg/threeten/bp/q;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public B(I)Lorg/threeten/bp/q;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    int-to-long v1, p1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 7
    .line 8
    iget v0, p0, Lorg/threeten/bp/q;->month:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/q;->x(II)Lorg/threeten/bp/q;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method C(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/q;->year:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 6
    .line 7
    iget v0, p0, Lorg/threeten/bp/q;->month:I

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 11
    return-void
.end method

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
    sget-object v0, Lorg/threeten/bp/temporal/a;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/a;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lorg/threeten/bp/q;->p()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    new-instance p1, Lorg/threeten/bp/b;

    .line 26
    .line 27
    const-string v0, "Adjustment only supported on ISO date-time"

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 31
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
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/q;->q()I

    .line 8
    move-result p1

    .line 9
    .line 10
    const-wide/16 v0, 0x1

    .line 11
    .line 12
    if-gtz p1, :cond_0

    .line 13
    .line 14
    .line 15
    const-wide/32 v2, 0x3b9aca00

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 19
    move-result-object p1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_0
    const-wide/32 v2, 0x3b9ac9ff

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    return-object p1

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-super {p0, p1}, Lra/c;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/q;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/q;->n(Lorg/threeten/bp/q;)I

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
    sget-object p1, Lorg/threeten/bp/temporal/b;->MONTHS:Lorg/threeten/bp/temporal/b;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/q;->r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/q;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    instance-of v1, p1, Lorg/threeten/bp/q;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/q;

    .line 12
    .line 13
    iget v1, p0, Lorg/threeten/bp/q;->year:I

    .line 14
    .line 15
    iget v3, p1, Lorg/threeten/bp/q;->year:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lorg/threeten/bp/q;->month:I

    .line 20
    .line 21
    iget p1, p1, Lorg/threeten/bp/q;->month:I

    .line 22
    .line 23
    if-ne v1, p1, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, v2

    .line 26
    :goto_0
    return v0

    .line 27
    :cond_2
    return v2
.end method

.method public f(Lorg/threeten/bp/temporal/h;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/q;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/threeten/bp/q;->k(Lorg/threeten/bp/temporal/h;)J

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/q;->z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/q;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/threeten/bp/q;->year:I

    iget v1, p0, Lorg/threeten/bp/q;->month:I

    shl-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

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
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lorg/threeten/bp/temporal/a;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/a;

    .line 17
    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/a;

    .line 21
    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :cond_1
    :goto_0
    return v1

    .line 30
    .line 31
    :cond_2
    if-eqz p1, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v1, v2

    .line 40
    :goto_1
    return v1
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/q;->y(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/q;

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
    if-eqz v0, :cond_7

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/q$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    if-eq v0, v1, :cond_6

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    if-eq v0, v2, :cond_5

    .line 22
    const/4 v2, 0x3

    .line 23
    .line 24
    if-eq v0, v2, :cond_3

    .line 25
    const/4 v2, 0x4

    .line 26
    .line 27
    if-eq v0, v2, :cond_2

    .line 28
    const/4 v2, 0x5

    .line 29
    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    iget p1, p0, Lorg/threeten/bp/q;->year:I

    .line 33
    .line 34
    if-ge p1, v1, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 36
    :cond_0
    int-to-long v0, v1

    .line 37
    return-wide v0

    .line 38
    .line 39
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v2, "Unsupported field: "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0

    .line 61
    .line 62
    :cond_2
    iget p1, p0, Lorg/threeten/bp/q;->year:I

    .line 63
    :goto_0
    int-to-long v0, p1

    .line 64
    return-wide v0

    .line 65
    .line 66
    :cond_3
    iget p1, p0, Lorg/threeten/bp/q;->year:I

    .line 67
    .line 68
    if-ge p1, v1, :cond_4

    .line 69
    .line 70
    rsub-int/lit8 p1, p1, 0x1

    .line 71
    :cond_4
    int-to-long v0, p1

    .line 72
    return-wide v0

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-direct {p0}, Lorg/threeten/bp/q;->p()J

    .line 76
    move-result-wide v0

    .line 77
    return-wide v0

    .line 78
    .line 79
    :cond_6
    iget p1, p0, Lorg/threeten/bp/q;->month:I

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_7
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 84
    move-result-wide v0

    .line 85
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/q;->t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/q;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n(Lorg/threeten/bp/q;)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/q;->year:I

    .line 3
    .line 4
    iget v1, p1, Lorg/threeten/bp/q;->year:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lorg/threeten/bp/q;->month:I

    .line 10
    .line 11
    iget p1, p1, Lorg/threeten/bp/q;->month:I

    .line 12
    sub-int/2addr v0, p1

    .line 13
    :cond_0
    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/threeten/bp/q;->year:I

    return v0
.end method

.method public r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/q;
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/q;->t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/q;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/q;->t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/q;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/q;->t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/q;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/q;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/q$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

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
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    new-instance p1, Lorg/threeten/bp/temporal/l;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v0, "Unsupported unit: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1

    .line 42
    .line 43
    :pswitch_0
    sget-object p3, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p3}, Lorg/threeten/bp/q;->k(Lorg/threeten/bp/temporal/h;)J

    .line 47
    move-result-wide v0

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, p1, p2}, Lra/d;->k(JJ)J

    .line 51
    move-result-wide p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p3, p1, p2}, Lorg/threeten/bp/q;->z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/q;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    .line 58
    :pswitch_1
    const/16 p3, 0x3e8

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 62
    move-result-wide p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/q;->v(J)Lorg/threeten/bp/q;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    .line 69
    :pswitch_2
    const/16 p3, 0x64

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 73
    move-result-wide p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/q;->v(J)Lorg/threeten/bp/q;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    .line 80
    :pswitch_3
    const/16 p3, 0xa

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 84
    move-result-wide p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/q;->v(J)Lorg/threeten/bp/q;

    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    .line 91
    .line 92
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/q;->v(J)Lorg/threeten/bp/q;

    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    .line 96
    .line 97
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/q;->u(J)Lorg/threeten/bp/q;

    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    .line 101
    .line 102
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    check-cast p1, Lorg/threeten/bp/q;

    .line 106
    return-object p1

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/q;->year:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    const/16 v2, 0x3e8

    .line 16
    .line 17
    if-ge v0, v2, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lorg/threeten/bp/q;->year:I

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    add-int/lit16 v0, v0, -0x2710

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    add-int/lit16 v0, v0, 0x2710

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget v0, p0, Lorg/threeten/bp/q;->year:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    :goto_0
    iget v0, p0, Lorg/threeten/bp/q;->month:I

    .line 49
    .line 50
    const/16 v2, 0xa

    .line 51
    .line 52
    if-ge v0, v2, :cond_2

    .line 53
    .line 54
    const-string v0, "-0"

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_2
    const-string v0, "-"

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget v0, p0, Lorg/threeten/bp/q;->month:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public u(J)Lorg/threeten/bp/q;
    .locals 6

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
    iget v0, p0, Lorg/threeten/bp/q;->year:I

    .line 10
    int-to-long v0, v0

    .line 11
    .line 12
    const-wide/16 v2, 0xc

    .line 13
    mul-long/2addr v0, v2

    .line 14
    .line 15
    iget v4, p0, Lorg/threeten/bp/q;->month:I

    .line 16
    .line 17
    add-int/lit8 v4, v4, -0x1

    .line 18
    int-to-long v4, v4

    .line 19
    add-long/2addr v0, v4

    .line 20
    add-long/2addr v0, p1

    .line 21
    .line 22
    sget-object p1, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Lra/d;->e(JJ)J

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2, v3}, Lorg/threeten/bp/temporal/a;->i(J)I

    .line 30
    move-result p1

    .line 31
    .line 32
    const/16 p2, 0xc

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, p2}, Lra/d;->g(JI)I

    .line 36
    move-result p2

    .line 37
    .line 38
    add-int/lit8 p2, p2, 0x1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/q;->x(II)Lorg/threeten/bp/q;

    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public v(J)Lorg/threeten/bp/q;
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
    iget v1, p0, Lorg/threeten/bp/q;->year:I

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
    iget p2, p0, Lorg/threeten/bp/q;->month:I

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/q;->x(II)Lorg/threeten/bp/q;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public y(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/q;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/q;

    .line 7
    return-object p1
.end method

.method public z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/q;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_7

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
    sget-object v1, Lorg/threeten/bp/q$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    if-eq v0, v1, :cond_6

    .line 22
    const/4 v2, 0x2

    .line 23
    .line 24
    if-eq v0, v2, :cond_5

    .line 25
    const/4 v2, 0x3

    .line 26
    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    const/4 v2, 0x4

    .line 29
    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    const/4 v2, 0x5

    .line 32
    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    sget-object p1, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lorg/threeten/bp/q;->k(Lorg/threeten/bp/temporal/h;)J

    .line 39
    move-result-wide v2

    .line 40
    .line 41
    cmp-long p1, v2, p2

    .line 42
    .line 43
    if-nez p1, :cond_0

    .line 44
    move-object p1, p0

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    iget p1, p0, Lorg/threeten/bp/q;->year:I

    .line 48
    sub-int/2addr v1, p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/threeten/bp/q;->B(I)Lorg/threeten/bp/q;

    .line 52
    move-result-object p1

    .line 53
    :goto_0
    return-object p1

    .line 54
    .line 55
    :cond_1
    new-instance p2, Lorg/threeten/bp/temporal/l;

    .line 56
    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v0, "Unsupported field: "

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-direct {p2, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 76
    throw p2

    .line 77
    :cond_2
    long-to-int p1, p2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lorg/threeten/bp/q;->B(I)Lorg/threeten/bp/q;

    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    .line 84
    :cond_3
    iget p1, p0, Lorg/threeten/bp/q;->year:I

    .line 85
    .line 86
    if-ge p1, v1, :cond_4

    .line 87
    .line 88
    const-wide/16 v0, 0x1

    .line 89
    .line 90
    sub-long p2, v0, p2

    .line 91
    :cond_4
    long-to-int p1, p2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lorg/threeten/bp/q;->B(I)Lorg/threeten/bp/q;

    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    .line 98
    :cond_5
    sget-object p1, Lorg/threeten/bp/temporal/a;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/a;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lorg/threeten/bp/q;->k(Lorg/threeten/bp/temporal/h;)J

    .line 102
    move-result-wide v0

    .line 103
    sub-long/2addr p2, v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/q;->u(J)Lorg/threeten/bp/q;

    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :cond_6
    long-to-int p1, p2

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lorg/threeten/bp/q;->A(I)Lorg/threeten/bp/q;

    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    .line 116
    .line 117
    :cond_7
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    check-cast p1, Lorg/threeten/bp/q;

    .line 121
    return-object p1
.end method
