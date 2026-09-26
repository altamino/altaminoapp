.class public final enum Lorg/threeten/bp/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/e;
.implements Lorg/threeten/bp/temporal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/d;",
        ">;",
        "Lorg/threeten/bp/temporal/e;",
        "Lorg/threeten/bp/temporal/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/d;

.field private static final ENUMS:[Lorg/threeten/bp/d;

.field public static final enum FRIDAY:Lorg/threeten/bp/d;

.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MONDAY:Lorg/threeten/bp/d;

.field public static final enum SATURDAY:Lorg/threeten/bp/d;

.field public static final enum SUNDAY:Lorg/threeten/bp/d;

.field public static final enum THURSDAY:Lorg/threeten/bp/d;

.field public static final enum TUESDAY:Lorg/threeten/bp/d;

.field public static final enum WEDNESDAY:Lorg/threeten/bp/d;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/d;

    .line 3
    .line 4
    const-string v1, "MONDAY"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/d;->MONDAY:Lorg/threeten/bp/d;

    .line 11
    .line 12
    new-instance v1, Lorg/threeten/bp/d;

    .line 13
    .line 14
    const-string v3, "TUESDAY"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lorg/threeten/bp/d;->TUESDAY:Lorg/threeten/bp/d;

    .line 21
    .line 22
    new-instance v3, Lorg/threeten/bp/d;

    .line 23
    .line 24
    const-string v5, "WEDNESDAY"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lorg/threeten/bp/d;->WEDNESDAY:Lorg/threeten/bp/d;

    .line 31
    .line 32
    new-instance v5, Lorg/threeten/bp/d;

    .line 33
    .line 34
    const-string v7, "THURSDAY"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Lorg/threeten/bp/d;->THURSDAY:Lorg/threeten/bp/d;

    .line 41
    .line 42
    new-instance v7, Lorg/threeten/bp/d;

    .line 43
    .line 44
    const-string v9, "FRIDAY"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v7, Lorg/threeten/bp/d;->FRIDAY:Lorg/threeten/bp/d;

    .line 51
    .line 52
    new-instance v9, Lorg/threeten/bp/d;

    .line 53
    .line 54
    const-string v11, "SATURDAY"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v9, Lorg/threeten/bp/d;->SATURDAY:Lorg/threeten/bp/d;

    .line 61
    .line 62
    new-instance v11, Lorg/threeten/bp/d;

    .line 63
    .line 64
    const-string v13, "SUNDAY"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v11, Lorg/threeten/bp/d;->SUNDAY:Lorg/threeten/bp/d;

    .line 71
    const/4 v13, 0x7

    .line 72
    .line 73
    new-array v13, v13, [Lorg/threeten/bp/d;

    .line 74
    .line 75
    aput-object v0, v13, v2

    .line 76
    .line 77
    aput-object v1, v13, v4

    .line 78
    .line 79
    aput-object v3, v13, v6

    .line 80
    .line 81
    aput-object v5, v13, v8

    .line 82
    .line 83
    aput-object v7, v13, v10

    .line 84
    .line 85
    aput-object v9, v13, v12

    .line 86
    .line 87
    aput-object v11, v13, v14

    .line 88
    .line 89
    sput-object v13, Lorg/threeten/bp/d;->$VALUES:[Lorg/threeten/bp/d;

    .line 90
    .line 91
    new-instance v0, Lorg/threeten/bp/d$a;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0}, Lorg/threeten/bp/d$a;-><init>()V

    .line 95
    .line 96
    sput-object v0, Lorg/threeten/bp/d;->FROM:Lorg/threeten/bp/temporal/j;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lorg/threeten/bp/d;->values()[Lorg/threeten/bp/d;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    sput-object v0, Lorg/threeten/bp/d;->ENUMS:[Lorg/threeten/bp/d;

    .line 103
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static a(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/d;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p0, Lorg/threeten/bp/d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lorg/threeten/bp/d;

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/e;->f(Lorg/threeten/bp/temporal/h;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lorg/threeten/bp/d;->n(I)Lorg/threeten/bp/d;

    .line 17
    move-result-object p0
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .line 21
    new-instance v1, Lorg/threeten/bp/b;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v3, "Unable to obtain DayOfWeek from TemporalAccessor: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, ", type "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    throw v1
.end method

.method public static n(I)Lorg/threeten/bp/d;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    const/4 v1, 0x7

    .line 5
    .line 6
    if-gt p0, v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lorg/threeten/bp/d;->ENUMS:[Lorg/threeten/bp/d;

    .line 9
    sub-int/2addr p0, v0

    .line 10
    .line 11
    aget-object p0, v1, p0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lorg/threeten/bp/b;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "Invalid value for DayOfWeek: "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/d;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/threeten/bp/d;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/threeten/bp/d;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/d;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/d;->$VALUES:[Lorg/threeten/bp/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/threeten/bp/d;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/threeten/bp/d;

    .line 9
    return-object v0
.end method


# virtual methods
.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/threeten/bp/d;->getValue()I

    .line 6
    move-result v1

    .line 7
    int-to-long v1, v1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v2, "Unsupported field: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
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
    invoke-static {}, Lorg/threeten/bp/temporal/i;->e()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lorg/threeten/bp/temporal/b;->DAYS:Lorg/threeten/bp/temporal/b;

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eq p1, v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-eq p1, v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-ne p1, v0, :cond_1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/j;->a(Lorg/threeten/bp/temporal/e;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 53
    return-object p1
.end method

.method public f(Lorg/threeten/bp/temporal/h;)I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/d;->getValue()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/d;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lorg/threeten/bp/d;->k(Lorg/threeten/bp/temporal/h;)J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getValue()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    move v1, v2

    .line 12
    :cond_0
    return v1

    .line 13
    .line 14
    :cond_1
    if-eqz p1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    move v1, v2

    .line 22
    :cond_2
    return v1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/d;->getValue()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0

    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    .line 21
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "Unsupported field: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
.end method
