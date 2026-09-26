.class public final Lorg/threeten/bp/l;
.super Lra/b;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/f;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lra/b;",
        "Lorg/threeten/bp/temporal/f;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/l;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/l;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/threeten/bp/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/l;

.field public static final MIN:Lorg/threeten/bp/l;

.field private static final serialVersionUID:J = 0x1fbfbc5d57d80062L


# instance fields
.field private final dateTime:Lorg/threeten/bp/h;

.field private final offset:Lorg/threeten/bp/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/h;->MIN:Lorg/threeten/bp/h;

    .line 3
    .line 4
    sget-object v1, Lorg/threeten/bp/s;->MAX:Lorg/threeten/bp/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/threeten/bp/h;->A(Lorg/threeten/bp/s;)Lorg/threeten/bp/l;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/l;->MIN:Lorg/threeten/bp/l;

    .line 11
    .line 12
    sget-object v0, Lorg/threeten/bp/h;->MAX:Lorg/threeten/bp/h;

    .line 13
    .line 14
    sget-object v1, Lorg/threeten/bp/s;->MIN:Lorg/threeten/bp/s;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/threeten/bp/h;->A(Lorg/threeten/bp/s;)Lorg/threeten/bp/l;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Lorg/threeten/bp/l;->MAX:Lorg/threeten/bp/l;

    .line 21
    .line 22
    new-instance v0, Lorg/threeten/bp/l$a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lorg/threeten/bp/l$a;-><init>()V

    .line 26
    .line 27
    sput-object v0, Lorg/threeten/bp/l;->FROM:Lorg/threeten/bp/temporal/j;

    .line 28
    .line 29
    new-instance v0, Lorg/threeten/bp/l$b;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Lorg/threeten/bp/l$b;-><init>()V

    .line 33
    .line 34
    sput-object v0, Lorg/threeten/bp/l;->INSTANT_COMPARATOR:Ljava/util/Comparator;

    .line 35
    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lra/b;-><init>()V

    .line 4
    .line 5
    const-string v0, "dateTime"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/h;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 14
    .line 15
    const-string p1, "offset"

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p1}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lorg/threeten/bp/s;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 24
    return-void
.end method

.method private A(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Lorg/threeten/bp/l;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lorg/threeten/bp/l;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/l;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)V

    .line 19
    return-object v0
.end method

.method public static o(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/l;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p0, Lorg/threeten/bp/l;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lorg/threeten/bp/l;

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/s;->u(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/s;

    .line 11
    move-result-object v0
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-static {p0}, Lorg/threeten/bp/h;->D(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/h;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Lorg/threeten/bp/l;->s(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Lorg/threeten/bp/l;

    .line 19
    move-result-object p0
    :try_end_1
    .catch Lorg/threeten/bp/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    return-object p0

    .line 21
    .line 22
    .line 23
    :catch_0
    :try_start_2
    invoke-static {p0}, Lorg/threeten/bp/f;->p(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/f;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0}, Lorg/threeten/bp/l;->t(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/l;

    .line 28
    move-result-object p0
    :try_end_2
    .catch Lorg/threeten/bp/b; {:try_start_2 .. :try_end_2} :catch_1

    .line 29
    return-object p0

    .line 30
    .line 31
    :catch_1
    new-instance v0, Lorg/threeten/bp/b;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v2, "Unable to obtain OffsetDateTime from TemporalAccessor: "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, ", type "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0
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

.method public static s(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Lorg/threeten/bp/l;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/l;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/l;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)V

    .line 6
    return-object v0
.end method

.method public static t(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/l;
    .locals 2

    .line 1
    .line 2
    const-string v0, "instant"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "zone"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/threeten/bp/r;->o()Lorg/threeten/bp/zone/f;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lorg/threeten/bp/zone/f;->a(Lorg/threeten/bp/f;)Lorg/threeten/bp/s;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/threeten/bp/f;->q()J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/threeten/bp/f;->r()I

    .line 26
    move-result p0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, p0, p1}, Lorg/threeten/bp/h;->J(JILorg/threeten/bp/s;)Lorg/threeten/bp/h;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    new-instance v0, Lorg/threeten/bp/l;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/l;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)V

    .line 36
    return-object v0
.end method

.method static v(Ljava/io/DataInput;)Lorg/threeten/bp/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/h;->S(Ljava/io/DataInput;)Lorg/threeten/bp/h;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/s;->A(Ljava/io/DataInput;)Lorg/threeten/bp/s;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Lorg/threeten/bp/l;->s(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Lorg/threeten/bp/l;

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
    const/16 v1, 0x45

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public B(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/l;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/g;

    .line 3
    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    instance-of v0, p1, Lorg/threeten/bp/i;

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    instance-of v0, p1, Lorg/threeten/bp/h;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/f;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Lorg/threeten/bp/f;

    .line 20
    .line 21
    iget-object v0, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lorg/threeten/bp/l;->t(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/l;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/s;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 33
    .line 34
    check-cast p1, Lorg/threeten/bp/s;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/l;->A(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Lorg/threeten/bp/l;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_2
    instance-of v0, p1, Lorg/threeten/bp/l;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    check-cast p1, Lorg/threeten/bp/l;

    .line 46
    return-object p1

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Lorg/threeten/bp/l;

    .line 53
    return-object p1

    .line 54
    .line 55
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->V(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/h;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iget-object v0, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/l;->A(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Lorg/threeten/bp/l;

    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public C(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/l;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 8
    .line 9
    sget-object v1, Lorg/threeten/bp/l$c;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v2

    .line 14
    .line 15
    aget v1, v1, v2

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/h;->W(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/h;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iget-object p2, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/l;->A(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Lorg/threeten/bp/l;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->i(J)I

    .line 40
    move-result p2

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/l;->A(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Lorg/threeten/bp/l;

    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/l;->p()I

    .line 53
    move-result p1

    .line 54
    int-to-long v0, p1

    .line 55
    .line 56
    .line 57
    invoke-static {p2, p3, v0, v1}, Lorg/threeten/bp/f;->u(JJ)Lorg/threeten/bp/f;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget-object p2, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Lorg/threeten/bp/l;->t(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/l;

    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    check-cast p1, Lorg/threeten/bp/l;

    .line 72
    return-object p1
.end method

.method D(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->X(Ljava/io/DataOutput;)V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/threeten/bp/s;->D(Ljava/io/DataOutput;)V

    .line 11
    return-void
.end method

.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->EPOCH_DAY:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/threeten/bp/l;->x()Lorg/threeten/bp/g;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/threeten/bp/g;->u()J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/threeten/bp/l;->z()Lorg/threeten/bp/i;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/threeten/bp/i;->G()J

    .line 24
    move-result-wide v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/threeten/bp/l;->q()Lorg/threeten/bp/s;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/threeten/bp/s;->v()I

    .line 38
    move-result v1

    .line 39
    int-to-long v1, v1

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/temporal/a;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/l;->n(Lorg/threeten/bp/l;)I

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
    sget-object p1, Lorg/threeten/bp/temporal/b;->NANOS:Lorg/threeten/bp/temporal/b;

    .line 18
    return-object p1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eq p1, v0, :cond_6

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-ne p1, v0, :cond_2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-ne p1, v0, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/threeten/bp/l;->x()Lorg/threeten/bp/g;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-ne p1, v0, :cond_4

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/threeten/bp/l;->z()Lorg/threeten/bp/i;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    if-ne p1, v0, :cond_5

    .line 60
    const/4 p1, 0x0

    .line 61
    return-object p1

    .line 62
    .line 63
    .line 64
    :cond_5
    invoke-super {p0, p1}, Lra/c;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    .line 68
    .line 69
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lorg/threeten/bp/l;->q()Lorg/threeten/bp/s;

    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/l;->r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/l;

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
    instance-of v1, p1, Lorg/threeten/bp/l;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/l;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3}, Lorg/threeten/bp/h;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 24
    .line 25
    iget-object p1, p1, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_0
    return v0

    .line 35
    :cond_2
    return v2
.end method

.method public f(Lorg/threeten/bp/temporal/h;)I
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/l$c;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->f(Lorg/threeten/bp/temporal/h;)I

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/l;->q()Lorg/threeten/bp/s;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/threeten/bp/s;->v()I

    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    .line 39
    :cond_1
    new-instance v0, Lorg/threeten/bp/b;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v2, "Field too large for an int: "

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
    invoke-direct {v0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-super {p0, p1}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 64
    move-result p1

    .line 65
    return p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/l;->C(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/l;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/h;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/threeten/bp/s;->hashCode()I

    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/l;->B(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/l;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/l$c;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->k(Lorg/threeten/bp/temporal/h;)J

    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/l;->q()Lorg/threeten/bp/s;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/threeten/bp/s;->v()I

    .line 36
    move-result p1

    .line 37
    int-to-long v0, p1

    .line 38
    return-wide v0

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/l;->w()J

    .line 42
    move-result-wide v0

    .line 43
    return-wide v0

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 47
    move-result-wide v0

    .line 48
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/l;->u(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/l;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n(Lorg/threeten/bp/l;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/l;->q()Lorg/threeten/bp/s;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/threeten/bp/l;->q()Lorg/threeten/bp/s;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/threeten/bp/l;->y()Lorg/threeten/bp/h;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/threeten/bp/l;->y()Lorg/threeten/bp/h;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->o(Lorg/threeten/bp/chrono/c;)I

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/l;->w()J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/threeten/bp/l;->w()J

    .line 35
    move-result-wide v2

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v2, v3}, Lra/d;->b(JJ)I

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/threeten/bp/l;->z()Lorg/threeten/bp/i;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/threeten/bp/i;->t()I

    .line 49
    move-result v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/threeten/bp/l;->z()Lorg/threeten/bp/i;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lorg/threeten/bp/i;->t()I

    .line 57
    move-result v1

    .line 58
    sub-int/2addr v0, v1

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/threeten/bp/l;->y()Lorg/threeten/bp/h;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lorg/threeten/bp/l;->y()Lorg/threeten/bp/h;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->o(Lorg/threeten/bp/chrono/c;)I

    .line 72
    move-result v0

    .line 73
    :cond_1
    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/h;->E()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q()Lorg/threeten/bp/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    return-object v0
.end method

.method public r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/l;
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/l;->u(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/l;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/l;->u(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/l;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/l;->u(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/l;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/threeten/bp/h;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/threeten/bp/s;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public u(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/l;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/h;->K(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p2, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/l;->A(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Lorg/threeten/bp/l;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lorg/threeten/bp/l;

    .line 24
    return-object p1
.end method

.method public w()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/l;->offset:Lorg/threeten/bp/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/c;->u(Lorg/threeten/bp/s;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public x()Lorg/threeten/bp/g;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/h;->T()Lorg/threeten/bp/g;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public y()Lorg/threeten/bp/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    return-object v0
.end method

.method public z()Lorg/threeten/bp/i;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/l;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/h;->x()Lorg/threeten/bp/i;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
