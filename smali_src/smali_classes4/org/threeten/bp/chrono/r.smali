.class public final Lorg/threeten/bp/chrono/r;
.super Lorg/threeten/bp/chrono/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/threeten/bp/chrono/r;

.field static final YEARS_DIFFERENCE:I = 0x777

.field private static final serialVersionUID:J = 0xe6dfcf4568e9fbbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/r;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/chrono/r;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/chrono/r;->INSTANCE:Lorg/threeten/bp/chrono/r;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/h;-><init>()V

    .line 4
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/threeten/bp/chrono/r;->INSTANCE:Lorg/threeten/bp/chrono/r;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/r;->t(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(I)Lorg/threeten/bp/chrono/i;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/r;->u(I)Lorg/threeten/bp/chrono/t;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "roc"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Minguo"

    return-object v0
.end method

.method public l(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/e;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "Lorg/threeten/bp/chrono/s;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/h;->l(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/f;",
            "Lorg/threeten/bp/r;",
            ")",
            "Lorg/threeten/bp/chrono/f<",
            "Lorg/threeten/bp/chrono/s;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/h;->r(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s(III)Lorg/threeten/bp/chrono/s;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/s;

    .line 3
    .line 4
    add-int/lit16 p1, p1, 0x777

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/s;-><init>(Lorg/threeten/bp/g;)V

    .line 12
    return-object v0
.end method

.method public t(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/s;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/chrono/s;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/s;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/s;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lorg/threeten/bp/g;->A(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/s;-><init>(Lorg/threeten/bp/g;)V

    .line 17
    return-object v0
.end method

.method public u(I)Lorg/threeten/bp/chrono/t;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/threeten/bp/chrono/t;->a(I)Lorg/threeten/bp/chrono/t;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public v(Lorg/threeten/bp/temporal/a;)Lorg/threeten/bp/temporal/m;
    .locals 10

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/r$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    const-wide/16 v2, 0x777

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v1, 0x3

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    sget-object p1, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/m;->d()J

    .line 34
    move-result-wide v0

    .line 35
    sub-long/2addr v0, v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/m;->c()J

    .line 39
    move-result-wide v4

    .line 40
    sub-long/2addr v4, v2

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_1
    sget-object p1, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    const-wide/16 v4, 0x1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/m;->c()J

    .line 57
    move-result-wide v0

    .line 58
    .line 59
    sub-long v6, v0, v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/m;->d()J

    .line 63
    move-result-wide v0

    .line 64
    neg-long v0, v0

    .line 65
    .line 66
    const-wide/16 v2, 0x778

    .line 67
    .line 68
    add-long v8, v0, v2

    .line 69
    .line 70
    .line 71
    invoke-static/range {v4 .. v9}, Lorg/threeten/bp/temporal/m;->j(JJJ)Lorg/threeten/bp/temporal/m;

    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    .line 75
    :cond_2
    sget-object p1, Lorg/threeten/bp/temporal/a;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/a;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/m;->d()J

    .line 83
    move-result-wide v0

    .line 84
    .line 85
    const-wide/16 v2, 0x5994

    .line 86
    sub-long/2addr v0, v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/m;->c()J

    .line 90
    move-result-wide v4

    .line 91
    sub-long/2addr v4, v2

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 95
    move-result-object p1

    .line 96
    return-object p1
.end method
