.class public final Lorg/threeten/bp/chrono/m;
.super Lorg/threeten/bp/chrono/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/threeten/bp/chrono/m;

.field private static final serialVersionUID:J = -0x13fd57b046d9ef27L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/chrono/m;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

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

    sget-object v0, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/m;->s(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;

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
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/m;->t(I)Lorg/threeten/bp/chrono/n;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "iso8601"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ISO"

    return-object v0
.end method

.method public bridge synthetic l(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/m;->v(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/h;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic r(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/m;->w(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/threeten/bp/g;->A(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public t(I)Lorg/threeten/bp/chrono/n;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/threeten/bp/chrono/n;->a(I)Lorg/threeten/bp/chrono/n;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u(J)Z
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x3

    .line 3
    and-long/2addr v0, p1

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-wide/16 v0, 0x64

    .line 12
    .line 13
    rem-long v0, p1, v0

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-wide/16 v0, 0x190

    .line 20
    rem-long/2addr p1, v0

    .line 21
    .line 22
    cmp-long p1, p1, v2

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method public v(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/h;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/threeten/bp/h;->D(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/h;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public w(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/threeten/bp/u;->I(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
