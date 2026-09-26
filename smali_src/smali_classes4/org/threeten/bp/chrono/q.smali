.class public final Lorg/threeten/bp/chrono/q;
.super Lra/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADDITIONAL_VALUE:I = 0x4

.field static final ERA_OFFSET:I = 0x2

.field public static final HEISEI:Lorg/threeten/bp/chrono/q;

.field private static final KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lorg/threeten/bp/chrono/q;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEIJI:Lorg/threeten/bp/chrono/q;

.field public static final REIWA:Lorg/threeten/bp/chrono/q;

.field public static final SHOWA:Lorg/threeten/bp/chrono/q;

.field public static final TAISHO:Lorg/threeten/bp/chrono/q;

.field private static final serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field private final eraValue:I

.field private final transient name:Ljava/lang/String;

.field private final transient since:Lorg/threeten/bp/g;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/q;

    .line 3
    .line 4
    const/16 v1, 0x74c

    .line 5
    .line 6
    const/16 v2, 0x9

    .line 7
    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2, v3}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "Meiji"

    .line 15
    const/4 v4, -0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v4, v1, v2}, Lorg/threeten/bp/chrono/q;-><init>(ILorg/threeten/bp/g;Ljava/lang/String;)V

    .line 19
    .line 20
    sput-object v0, Lorg/threeten/bp/chrono/q;->MEIJI:Lorg/threeten/bp/chrono/q;

    .line 21
    .line 22
    new-instance v1, Lorg/threeten/bp/chrono/q;

    .line 23
    const/4 v2, 0x7

    .line 24
    .line 25
    const/16 v4, 0x1e

    .line 26
    .line 27
    const/16 v5, 0x778

    .line 28
    .line 29
    .line 30
    invoke-static {v5, v2, v4}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    const-string v4, "Taisho"

    .line 34
    const/4 v5, 0x0

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v5, v2, v4}, Lorg/threeten/bp/chrono/q;-><init>(ILorg/threeten/bp/g;Ljava/lang/String;)V

    .line 38
    .line 39
    sput-object v1, Lorg/threeten/bp/chrono/q;->TAISHO:Lorg/threeten/bp/chrono/q;

    .line 40
    .line 41
    new-instance v2, Lorg/threeten/bp/chrono/q;

    .line 42
    .line 43
    const/16 v4, 0xc

    .line 44
    .line 45
    const/16 v6, 0x19

    .line 46
    .line 47
    const/16 v7, 0x786

    .line 48
    .line 49
    .line 50
    invoke-static {v7, v4, v6}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    const-string v6, "Showa"

    .line 54
    const/4 v7, 0x1

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v7, v4, v6}, Lorg/threeten/bp/chrono/q;-><init>(ILorg/threeten/bp/g;Ljava/lang/String;)V

    .line 58
    .line 59
    sput-object v2, Lorg/threeten/bp/chrono/q;->SHOWA:Lorg/threeten/bp/chrono/q;

    .line 60
    .line 61
    new-instance v4, Lorg/threeten/bp/chrono/q;

    .line 62
    .line 63
    const/16 v6, 0x7c5

    .line 64
    .line 65
    .line 66
    invoke-static {v6, v7, v3}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    const-string v6, "Heisei"

    .line 70
    const/4 v8, 0x2

    .line 71
    .line 72
    .line 73
    invoke-direct {v4, v8, v3, v6}, Lorg/threeten/bp/chrono/q;-><init>(ILorg/threeten/bp/g;Ljava/lang/String;)V

    .line 74
    .line 75
    sput-object v4, Lorg/threeten/bp/chrono/q;->HEISEI:Lorg/threeten/bp/chrono/q;

    .line 76
    .line 77
    new-instance v3, Lorg/threeten/bp/chrono/q;

    .line 78
    .line 79
    const/16 v6, 0x7e3

    .line 80
    const/4 v9, 0x5

    .line 81
    .line 82
    .line 83
    invoke-static {v6, v9, v7}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 84
    move-result-object v6

    .line 85
    .line 86
    const-string v10, "Reiwa"

    .line 87
    const/4 v11, 0x3

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v11, v6, v10}, Lorg/threeten/bp/chrono/q;-><init>(ILorg/threeten/bp/g;Ljava/lang/String;)V

    .line 91
    .line 92
    sput-object v3, Lorg/threeten/bp/chrono/q;->REIWA:Lorg/threeten/bp/chrono/q;

    .line 93
    .line 94
    new-array v6, v9, [Lorg/threeten/bp/chrono/q;

    .line 95
    .line 96
    aput-object v0, v6, v5

    .line 97
    .line 98
    aput-object v1, v6, v7

    .line 99
    .line 100
    aput-object v2, v6, v8

    .line 101
    .line 102
    aput-object v4, v6, v11

    .line 103
    const/4 v0, 0x4

    .line 104
    .line 105
    aput-object v3, v6, v0

    .line 106
    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 111
    .line 112
    sput-object v0, Lorg/threeten/bp/chrono/q;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    .line 113
    return-void
.end method

.method private constructor <init>(ILorg/threeten/bp/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lra/a;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lorg/threeten/bp/chrono/q;->eraValue:I

    .line 6
    .line 7
    iput-object p2, p0, Lorg/threeten/bp/chrono/q;->since:Lorg/threeten/bp/g;

    .line 8
    .line 9
    iput-object p3, p0, Lorg/threeten/bp/chrono/q;->name:Ljava/lang/String;

    .line 10
    return-void
.end method

.method static o(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/q;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/q;->MEIJI:Lorg/threeten/bp/chrono/q;

    .line 3
    .line 4
    iget-object v0, v0, Lorg/threeten/bp/chrono/q;->since:Lorg/threeten/bp/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/threeten/bp/g;->r(Lorg/threeten/bp/chrono/b;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    sget-object v0, Lorg/threeten/bp/chrono/q;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, [Lorg/threeten/bp/chrono/q;

    .line 19
    array-length v1, v0

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v1, :cond_1

    .line 24
    .line 25
    aget-object v2, v0, v1

    .line 26
    .line 27
    iget-object v3, v2, Lorg/threeten/bp/chrono/q;->since:Lorg/threeten/bp/g;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lorg/threeten/bp/g;->o(Lorg/threeten/bp/chrono/b;)I

    .line 31
    move-result v3

    .line 32
    .line 33
    if-ltz v3, :cond_0

    .line 34
    return-object v2

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    .line 41
    :cond_2
    new-instance v0, Lorg/threeten/bp/b;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v2, "Date too early: "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0
.end method

.method public static p(I)Lorg/threeten/bp/chrono/q;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/q;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/threeten/bp/chrono/q;

    .line 9
    .line 10
    sget-object v1, Lorg/threeten/bp/chrono/q;->MEIJI:Lorg/threeten/bp/chrono/q;

    .line 11
    .line 12
    iget v1, v1, Lorg/threeten/bp/chrono/q;->eraValue:I

    .line 13
    .line 14
    if-lt p0, v1, :cond_0

    .line 15
    array-length v1, v0

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    aget-object v1, v0, v1

    .line 20
    .line 21
    iget v1, v1, Lorg/threeten/bp/chrono/q;->eraValue:I

    .line 22
    .line 23
    if-gt p0, v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lorg/threeten/bp/chrono/q;->q(I)I

    .line 27
    move-result p0

    .line 28
    .line 29
    aget-object p0, v0, p0

    .line 30
    return-object p0

    .line 31
    .line 32
    :cond_0
    new-instance p0, Lorg/threeten/bp/b;

    .line 33
    .line 34
    const-string v0, "japaneseEra is invalid"

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0
.end method

.method private static q(I)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static r(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/q;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/chrono/q;->p(I)Lorg/threeten/bp/chrono/q;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget v0, p0, Lorg/threeten/bp/chrono/q;->eraValue:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/threeten/bp/chrono/q;->p(I)Lorg/threeten/bp/chrono/q;

    .line 6
    move-result-object v0
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    .line 10
    new-instance v1, Ljava/io/InvalidObjectException;

    .line 11
    .line 12
    const-string v2, "Invalid era"

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    throw v1
.end method

.method public static t()[Lorg/threeten/bp/chrono/q;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/q;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/threeten/bp/chrono/q;

    .line 9
    array-length v1, v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, [Lorg/threeten/bp/chrono/q;

    .line 16
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/u;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/u;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lorg/threeten/bp/chrono/o;->INSTANCE:Lorg/threeten/bp/chrono/o;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/threeten/bp/chrono/o;->w(Lorg/threeten/bp/temporal/a;)Lorg/threeten/bp/temporal/m;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lra/c;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/threeten/bp/chrono/q;->eraValue:I

    return v0
.end method

.method n()Lorg/threeten/bp/g;
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/chrono/q;->eraValue:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/threeten/bp/chrono/q;->q(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lorg/threeten/bp/chrono/q;->t()[Lorg/threeten/bp/chrono/q;

    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 14
    .line 15
    if-lt v0, v2, :cond_0

    .line 16
    .line 17
    sget-object v0, Lorg/threeten/bp/g;->MAX:Lorg/threeten/bp/g;

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    aget-object v0, v1, v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/q;->s()Lorg/threeten/bp/g;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-wide/16 v1, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/g;->O(J)Lorg/threeten/bp/g;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method s()Lorg/threeten/bp/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/chrono/q;->since:Lorg/threeten/bp/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/chrono/q;->name:Ljava/lang/String;

    return-object v0
.end method

.method u(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/q;->getValue()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 8
    return-void
.end method
