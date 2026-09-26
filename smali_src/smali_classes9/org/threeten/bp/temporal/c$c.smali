.class final enum Lorg/threeten/bp/temporal/c$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/c$c;",
        ">;",
        "Lorg/threeten/bp/temporal/k;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/c$c;

.field public static final enum QUARTER_YEARS:Lorg/threeten/bp/temporal/c$c;

.field public static final enum WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/c$c;


# instance fields
.field private final duration:Lorg/threeten/bp/e;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/temporal/c$c;

    .line 3
    .line 4
    .line 5
    const-wide/32 v1, 0x1e18558

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "WEEK_BASED_YEARS"

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    const-string v4, "WeekBasedYears"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v2, v3, v4, v1}, Lorg/threeten/bp/temporal/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 18
    .line 19
    sput-object v0, Lorg/threeten/bp/temporal/c$c;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/c$c;

    .line 20
    .line 21
    new-instance v1, Lorg/threeten/bp/temporal/c$c;

    .line 22
    .line 23
    .line 24
    const-wide/32 v4, 0x786156

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v5}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    const-string v4, "QUARTER_YEARS"

    .line 31
    const/4 v5, 0x1

    .line 32
    .line 33
    const-string v6, "QuarterYears"

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v4, v5, v6, v2}, Lorg/threeten/bp/temporal/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 37
    .line 38
    sput-object v1, Lorg/threeten/bp/temporal/c$c;->QUARTER_YEARS:Lorg/threeten/bp/temporal/c$c;

    .line 39
    const/4 v2, 0x2

    .line 40
    .line 41
    new-array v2, v2, [Lorg/threeten/bp/temporal/c$c;

    .line 42
    .line 43
    aput-object v0, v2, v3

    .line 44
    .line 45
    aput-object v1, v2, v5

    .line 46
    .line 47
    sput-object v2, Lorg/threeten/bp/temporal/c$c;->$VALUES:[Lorg/threeten/bp/temporal/c$c;

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/e;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lorg/threeten/bp/temporal/c$c;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/threeten/bp/temporal/c$c;->duration:Lorg/threeten/bp/e;

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/c$c;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/threeten/bp/temporal/c$c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/threeten/bp/temporal/c$c;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/c$c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/c$c;->$VALUES:[Lorg/threeten/bp/temporal/c$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/c$c;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/threeten/bp/temporal/c$c;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/d;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/c$a;->$SwitchMap$org$threeten$bp$temporal$IsoFields$Unit:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const-wide/16 v0, 0x100

    .line 17
    .line 18
    div-long v2, p2, v0

    .line 19
    .line 20
    sget-object v4, Lorg/threeten/bp/temporal/b;->YEARS:Lorg/threeten/bp/temporal/b;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v2, v3, v4}, Lorg/threeten/bp/temporal/d;->l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;

    .line 24
    move-result-object p1

    .line 25
    rem-long/2addr p2, v0

    .line 26
    .line 27
    const-wide/16 v0, 0x3

    .line 28
    mul-long/2addr p2, v0

    .line 29
    .line 30
    sget-object v0, Lorg/threeten/bp/temporal/b;->MONTHS:Lorg/threeten/bp/temporal/b;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p2, p3, v0}, Lorg/threeten/bp/temporal/d;->l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p2, "Unreachable"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1

    .line 44
    .line 45
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/c;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/h;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->f(Lorg/threeten/bp/temporal/h;)I

    .line 49
    move-result v1

    .line 50
    int-to-long v1, v1

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2, p2, p3}, Lra/d;->k(JJ)J

    .line 54
    move-result-wide p2

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v0, p2, p3}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/temporal/c$c;->name:Ljava/lang/String;

    return-object v0
.end method
