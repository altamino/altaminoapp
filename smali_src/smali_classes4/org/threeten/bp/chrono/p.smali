.class public final Lorg/threeten/bp/chrono/p;
.super Lorg/threeten/bp/chrono/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/a<",
        "Lorg/threeten/bp/chrono/p;",
        ">;"
    }
.end annotation


# static fields
.field static final MIN_DATE:Lorg/threeten/bp/g;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private transient era:Lorg/threeten/bp/chrono/q;

.field private final isoDate:Lorg/threeten/bp/g;

.field private transient yearOfEra:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x751

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v1}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Lorg/threeten/bp/chrono/p;->MIN_DATE:Lorg/threeten/bp/g;

    .line 10
    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/g;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/a;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lorg/threeten/bp/chrono/p;->MIN_DATE:Lorg/threeten/bp/g;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lorg/threeten/bp/g;->r(Lorg/threeten/bp/chrono/b;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lorg/threeten/bp/chrono/q;->o(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/q;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lorg/threeten/bp/chrono/p;->era:Lorg/threeten/bp/chrono/q;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/q;->s()Lorg/threeten/bp/g;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/threeten/bp/g;->J()I

    .line 25
    move-result v0

    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/threeten/bp/g;->J()I

    .line 31
    move-result v1

    .line 32
    sub-int/2addr v1, v0

    .line 33
    .line 34
    iput v1, p0, Lorg/threeten/bp/chrono/p;->yearOfEra:I

    .line 35
    .line 36
    iput-object p1, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 37
    return-void

    .line 38
    .line 39
    :cond_0
    new-instance p1, Lorg/threeten/bp/b;

    .line 40
    .line 41
    const-string v0, "Minimum supported date is January 1st Meiji 6"

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1
.end method

.method private B(I)Lorg/threeten/bp/temporal/m;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/o;->LOCALE:Ljava/util/Locale;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/chrono/p;->era:Lorg/threeten/bp/chrono/q;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/q;->getValue()I

    .line 12
    move-result v1

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    iget v1, p0, Lorg/threeten/bp/chrono/p;->yearOfEra:I

    .line 21
    .line 22
    iget-object v2, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lorg/threeten/bp/g;->H()I

    .line 26
    move-result v2

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    iget-object v3, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lorg/threeten/bp/g;->D()I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    .line 41
    move-result v1

    .line 42
    int-to-long v1, v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 46
    move-result p1

    .line 47
    int-to-long v3, p1

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2, v3, v4}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method private D()J
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/chrono/p;->yearOfEra:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/threeten/bp/g;->F()I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget-object v2, p0, Lorg/threeten/bp/chrono/p;->era:Lorg/threeten/bp/chrono/q;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lorg/threeten/bp/chrono/q;->s()Lorg/threeten/bp/g;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lorg/threeten/bp/g;->F()I

    .line 21
    move-result v2

    .line 22
    sub-int/2addr v0, v2

    .line 23
    add-int/2addr v0, v1

    .line 24
    :goto_0
    int-to-long v0, v0

    .line 25
    return-wide v0

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/threeten/bp/g;->F()I

    .line 31
    move-result v0

    .line 32
    goto :goto_0
.end method

.method static K(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/b;
    .locals 3
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
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 12
    move-result p0

    .line 13
    .line 14
    sget-object v2, Lorg/threeten/bp/chrono/o;->INSTANCE:Lorg/threeten/bp/chrono/o;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v1, p0}, Lorg/threeten/bp/chrono/o;->s(III)Lorg/threeten/bp/chrono/p;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/p;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/threeten/bp/g;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    move-object v0, p0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/p;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/p;-><init>(Lorg/threeten/bp/g;)V

    .line 16
    :goto_0
    return-object v0
.end method

.method private O(I)Lorg/threeten/bp/chrono/p;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/p;->E()Lorg/threeten/bp/chrono/q;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/p;->P(Lorg/threeten/bp/chrono/q;I)Lorg/threeten/bp/chrono/p;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private P(Lorg/threeten/bp/chrono/q;I)Lorg/threeten/bp/chrono/p;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/o;->INSTANCE:Lorg/threeten/bp/chrono/o;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/chrono/o;->v(Lorg/threeten/bp/chrono/i;I)I

    .line 6
    move-result p1

    .line 7
    .line 8
    iget-object p2, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lorg/threeten/bp/g;->g0(I)Lorg/threeten/bp/g;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/p;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/p;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4
    .line 5
    iget-object p1, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lorg/threeten/bp/chrono/q;->o(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/q;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lorg/threeten/bp/chrono/p;->era:Lorg/threeten/bp/chrono/q;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/q;->s()Lorg/threeten/bp/g;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/threeten/bp/g;->J()I

    .line 19
    move-result p1

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/threeten/bp/g;->J()I

    .line 27
    move-result v0

    .line 28
    sub-int/2addr v0, p1

    .line 29
    .line 30
    iput v0, p0, Lorg/threeten/bp/chrono/p;->yearOfEra:I

    .line 31
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/u;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/u;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method bridge synthetic A(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/p;->J(J)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public C()Lorg/threeten/bp/chrono/o;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/o;->INSTANCE:Lorg/threeten/bp/chrono/o;

    .line 3
    return-object v0
.end method

.method public E()Lorg/threeten/bp/chrono/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->era:Lorg/threeten/bp/chrono/q;

    return-object v0
.end method

.method public F(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/p;

    .line 7
    return-object p1
.end method

.method public G(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/a;->x(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/p;

    .line 7
    return-object p1
.end method

.method H(J)Lorg/threeten/bp/chrono/p;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/p;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/p;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method I(J)Lorg/threeten/bp/chrono/p;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/g;->W(J)Lorg/threeten/bp/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/p;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/p;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method J(J)Lorg/threeten/bp/chrono/p;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/g;->Y(J)Lorg/threeten/bp/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/p;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/p;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public M(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->v(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/p;

    .line 7
    return-object p1
.end method

.method public N(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/p;
    .locals 6

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
    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/p;->k(Lorg/threeten/bp/temporal/h;)J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    cmp-long v1, v1, p2

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    return-object p0

    .line 17
    .line 18
    :cond_0
    sget-object v1, Lorg/threeten/bp/chrono/p$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v2

    .line 23
    .line 24
    aget v2, v1, v2

    .line 25
    const/4 v3, 0x7

    .line 26
    const/4 v4, 0x2

    .line 27
    const/4 v5, 0x1

    .line 28
    .line 29
    if-eq v2, v5, :cond_1

    .line 30
    .line 31
    if-eq v2, v4, :cond_1

    .line 32
    .line 33
    if-eq v2, v3, :cond_1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/p;->C()Lorg/threeten/bp/chrono/o;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Lorg/threeten/bp/chrono/o;->w(Lorg/threeten/bp/temporal/a;)Lorg/threeten/bp/temporal/m;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p2, p3, v0}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 50
    move-result v0

    .line 51
    .line 52
    aget v0, v1, v0

    .line 53
    .line 54
    if-eq v0, v5, :cond_4

    .line 55
    .line 56
    if-eq v0, v4, :cond_3

    .line 57
    .line 58
    if-eq v0, v3, :cond_2

    .line 59
    .line 60
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/g;->c0(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/g;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/p;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/p;

    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-static {v2}, Lorg/threeten/bp/chrono/q;->p(I)Lorg/threeten/bp/chrono/q;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    iget p2, p0, Lorg/threeten/bp/chrono/p;->yearOfEra:I

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/p;->P(Lorg/threeten/bp/chrono/q;I)Lorg/threeten/bp/chrono/p;

    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-direct {p0, v2}, Lorg/threeten/bp/chrono/p;->O(I)Lorg/threeten/bp/chrono/p;

    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    .line 87
    :cond_4
    iget-object p1, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 88
    int-to-long p2, v2

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lorg/threeten/bp/chrono/p;->D()J

    .line 92
    move-result-wide v0

    .line 93
    sub-long/2addr p2, v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2, p3}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/p;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/p;

    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    .line 104
    .line 105
    :cond_5
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    check-cast p1, Lorg/threeten/bp/chrono/p;

    .line 109
    return-object p1
.end method

.method Q(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 10
    .line 11
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 19
    .line 20
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 28
    return-void
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/p;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p1, Lorg/threeten/bp/temporal/a;

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/chrono/p$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    move-result v1

    .line 19
    .line 20
    aget v0, v0, v1

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    const/4 v2, 0x2

    .line 25
    .line 26
    if-eq v0, v2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/p;->C()Lorg/threeten/bp/chrono/o;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/o;->w(Lorg/threeten/bp/temporal/a;)Lorg/threeten/bp/temporal/m;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0, v1}, Lorg/threeten/bp/chrono/p;->B(I)Lorg/threeten/bp/temporal/m;

    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    const/4 p1, 0x6

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/p;->B(I)Lorg/threeten/bp/temporal/m;

    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    .line 48
    :cond_2
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    const-string v2, "Unsupported field: "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 69
    throw v0

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/p;->F(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/chrono/p;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lorg/threeten/bp/chrono/p;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 13
    .line 14
    iget-object p1, p1, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/threeten/bp/g;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/p;->N(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/p;->C()Lorg/threeten/bp/chrono/o;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/o;->j()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/threeten/bp/g;->hashCode()I

    .line 18
    move-result v1

    .line 19
    xor-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lorg/threeten/bp/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/p;->M(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/p;

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
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/chrono/p$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lorg/threeten/bp/g;->k(Lorg/threeten/bp/temporal/h;)J

    .line 24
    move-result-wide v0

    .line 25
    return-wide v0

    .line 26
    .line 27
    :pswitch_0
    iget-object p1, p0, Lorg/threeten/bp/chrono/p;->era:Lorg/threeten/bp/chrono/q;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/q;->getValue()I

    .line 31
    move-result p1

    .line 32
    int-to-long v0, p1

    .line 33
    return-wide v0

    .line 34
    .line 35
    :pswitch_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "Unsupported field: "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0

    .line 57
    .line 58
    :pswitch_2
    iget p1, p0, Lorg/threeten/bp/chrono/p;->yearOfEra:I

    .line 59
    int-to-long v0, p1

    .line 60
    return-wide v0

    .line 61
    .line 62
    .line 63
    :pswitch_3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/p;->D()J

    .line 64
    move-result-wide v0

    .line 65
    return-wide v0

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 69
    move-result-wide v0

    .line 70
    return-wide v0

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/p;->G(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final n(Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/i;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "Lorg/threeten/bp/chrono/p;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/a;->n(Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic p()Lorg/threeten/bp/chrono/h;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/p;->C()Lorg/threeten/bp/chrono/o;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic q()Lorg/threeten/bp/chrono/i;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/p;->E()Lorg/threeten/bp/chrono/q;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/p;->F(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/p;->G(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/p;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/g;->u()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public bridge synthetic v(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/p;->M(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic w(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/p;->N(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic x(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/p;->G(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method bridge synthetic y(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/p;->H(J)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method bridge synthetic z(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/p;->I(J)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
