.class public final Lorg/threeten/bp/chrono/j;
.super Lorg/threeten/bp/chrono/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_NARROW_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_SHORT_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Lorg/threeten/bp/chrono/j;

.field private static final serialVersionUID:J = 0x2b668b59cb61d531L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/j;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/chrono/j;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/chrono/j;->INSTANCE:Lorg/threeten/bp/chrono/j;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lorg/threeten/bp/chrono/j;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    sput-object v1, Lorg/threeten/bp/chrono/j;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    .line 22
    .line 23
    new-instance v2, Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    sput-object v2, Lorg/threeten/bp/chrono/j;->ERA_FULL_NAMES:Ljava/util/HashMap;

    .line 29
    .line 30
    const-string v3, "BH"

    .line 31
    .line 32
    const-string v4, "HE"

    .line 33
    .line 34
    .line 35
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    const-string v4, "en"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    const-string v0, "B.H."

    .line 44
    .line 45
    const-string v3, "H.E."

    .line 46
    .line 47
    .line 48
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    const-string v0, "Before Hijrah"

    .line 55
    .line 56
    const-string v1, "Hijrah Era"

    .line 57
    .line 58
    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
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

    sget-object v0, Lorg/threeten/bp/chrono/j;->INSTANCE:Lorg/threeten/bp/chrono/j;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/j;->t(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/k;

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
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/j;->u(I)Lorg/threeten/bp/chrono/l;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "islamic-umalqura"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Hijrah-umalqura"

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
            "Lorg/threeten/bp/chrono/k;",
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
            "Lorg/threeten/bp/chrono/k;",
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

.method public s(III)Lorg/threeten/bp/chrono/k;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/chrono/k;->d0(III)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public t(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/k;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/chrono/k;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/k;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->EPOCH_DAY:Lorg/threeten/bp/temporal/a;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/k;->f0(J)Lorg/threeten/bp/chrono/k;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public u(I)Lorg/threeten/bp/chrono/l;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lorg/threeten/bp/chrono/l;->AH:Lorg/threeten/bp/chrono/l;

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    new-instance p1, Lorg/threeten/bp/b;

    .line 11
    .line 12
    const-string v0, "invalid Hijrah era"

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1

    .line 17
    .line 18
    :cond_1
    sget-object p1, Lorg/threeten/bp/chrono/l;->BEFORE_AH:Lorg/threeten/bp/chrono/l;

    .line 19
    return-object p1
.end method

.method public v(Lorg/threeten/bp/temporal/a;)Lorg/threeten/bp/temporal/m;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
