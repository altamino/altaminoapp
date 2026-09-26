.class abstract enum Lorg/threeten/bp/temporal/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/c$b;",
        ">;",
        "Lorg/threeten/bp/temporal/h;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/c$b;

.field public static final enum DAY_OF_QUARTER:Lorg/threeten/bp/temporal/c$b;

.field private static final QUARTER_DAYS:[I

.field public static final enum QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/c$b;

.field public static final enum WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/c$b;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/temporal/c$b$a;

    .line 3
    .line 4
    const-string v1, "DAY_OF_QUARTER"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/temporal/c$b$a;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/temporal/c$b;->DAY_OF_QUARTER:Lorg/threeten/bp/temporal/c$b;

    .line 11
    .line 12
    new-instance v1, Lorg/threeten/bp/temporal/c$b$b;

    .line 13
    .line 14
    const-string v3, "QUARTER_OF_YEAR"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lorg/threeten/bp/temporal/c$b$b;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lorg/threeten/bp/temporal/c$b;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/c$b;

    .line 21
    .line 22
    new-instance v3, Lorg/threeten/bp/temporal/c$b$c;

    .line 23
    .line 24
    const-string v5, "WEEK_OF_WEEK_BASED_YEAR"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lorg/threeten/bp/temporal/c$b$c;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lorg/threeten/bp/temporal/c$b;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/c$b;

    .line 31
    .line 32
    new-instance v5, Lorg/threeten/bp/temporal/c$b$d;

    .line 33
    .line 34
    const-string v7, "WEEK_BASED_YEAR"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Lorg/threeten/bp/temporal/c$b$d;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Lorg/threeten/bp/temporal/c$b;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/c$b;

    .line 41
    const/4 v7, 0x4

    .line 42
    .line 43
    new-array v7, v7, [Lorg/threeten/bp/temporal/c$b;

    .line 44
    .line 45
    aput-object v0, v7, v2

    .line 46
    .line 47
    aput-object v1, v7, v4

    .line 48
    .line 49
    aput-object v3, v7, v6

    .line 50
    .line 51
    aput-object v5, v7, v8

    .line 52
    .line 53
    sput-object v7, Lorg/threeten/bp/temporal/c$b;->$VALUES:[Lorg/threeten/bp/temporal/c$b;

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    new-array v0, v0, [I

    .line 58
    .line 59
    .line 60
    fill-array-data v0, :array_0

    .line 61
    .line 62
    sput-object v0, Lorg/threeten/bp/temporal/c$b;->QUARTER_DAYS:[I

    .line 63
    return-void

    .line 64
    nop

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
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
    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/threeten/bp/temporal/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/c$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic i(Lorg/threeten/bp/temporal/e;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/temporal/c$b;->t(Lorg/threeten/bp/temporal/e;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic j()[I
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/c$b;->QUARTER_DAYS:[I

    return-object v0
.end method

.method static synthetic k(Lorg/threeten/bp/g;)Lorg/threeten/bp/temporal/m;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/temporal/c$b;->s(Lorg/threeten/bp/g;)Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic l(Lorg/threeten/bp/g;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/temporal/c$b;->p(Lorg/threeten/bp/g;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic n(Lorg/threeten/bp/g;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/temporal/c$b;->q(Lorg/threeten/bp/g;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic o(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/temporal/c$b;->r(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static p(Lorg/threeten/bp/g;)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/g;->E()Lorg/threeten/bp/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/threeten/bp/g;->F()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    .line 16
    rsub-int/lit8 v0, v0, 0x3

    .line 17
    add-int/2addr v0, v1

    .line 18
    .line 19
    div-int/lit8 v3, v0, 0x7

    .line 20
    .line 21
    mul-int/lit8 v3, v3, 0x7

    .line 22
    sub-int/2addr v0, v3

    .line 23
    .line 24
    add-int/lit8 v3, v0, -0x3

    .line 25
    const/4 v4, -0x3

    .line 26
    .line 27
    if-ge v3, v4, :cond_0

    .line 28
    .line 29
    add-int/lit8 v3, v0, 0x4

    .line 30
    .line 31
    :cond_0
    if-ge v1, v3, :cond_1

    .line 32
    .line 33
    const/16 v0, 0xb4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lorg/threeten/bp/g;->e0(I)Lorg/threeten/bp/g;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    const-wide/16 v0, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/g;->P(J)Lorg/threeten/bp/g;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lorg/threeten/bp/temporal/c$b;->s(Lorg/threeten/bp/g;)Lorg/threeten/bp/temporal/m;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/m;->c()J

    .line 51
    move-result-wide v0

    .line 52
    long-to-int p0, v0

    .line 53
    return p0

    .line 54
    :cond_1
    sub-int/2addr v1, v3

    .line 55
    .line 56
    div-int/lit8 v1, v1, 0x7

    .line 57
    add-int/2addr v1, v2

    .line 58
    .line 59
    const/16 v0, 0x35

    .line 60
    .line 61
    if-ne v1, v0, :cond_2

    .line 62
    .line 63
    if-eq v3, v4, :cond_2

    .line 64
    const/4 v0, -0x2

    .line 65
    .line 66
    if-ne v3, v0, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/threeten/bp/g;->K()Z

    .line 70
    move-result p0

    .line 71
    .line 72
    if-eqz p0, :cond_3

    .line 73
    :cond_2
    move v2, v1

    .line 74
    :cond_3
    return v2
.end method

.method private static q(Lorg/threeten/bp/g;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/g;->J()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/g;->F()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    .line 11
    if-gt v1, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/threeten/bp/g;->E()Lorg/threeten/bp/d;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result p0

    .line 20
    sub-int/2addr v1, p0

    .line 21
    const/4 p0, -0x2

    .line 22
    .line 23
    if-ge v1, p0, :cond_1

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const/16 v2, 0x16b

    .line 29
    .line 30
    if-lt v1, v2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/threeten/bp/g;->E()Lorg/threeten/bp/d;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v3

    .line 39
    sub-int/2addr v1, v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/threeten/bp/g;->K()Z

    .line 43
    move-result p0

    .line 44
    sub-int/2addr v1, p0

    .line 45
    sub-int/2addr v1, v3

    .line 46
    .line 47
    if-ltz v1, :cond_1

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    :cond_1
    :goto_0
    return v0
.end method

.method private static r(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0, v0}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/threeten/bp/g;->E()Lorg/threeten/bp/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Lorg/threeten/bp/d;->THURSDAY:Lorg/threeten/bp/d;

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/threeten/bp/g;->E()Lorg/threeten/bp/d;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sget-object v1, Lorg/threeten/bp/d;->WEDNESDAY:Lorg/threeten/bp/d;

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/threeten/bp/g;->K()Z

    .line 25
    move-result p0

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    const/16 p0, 0x34

    .line 31
    return p0

    .line 32
    .line 33
    :cond_1
    :goto_0
    const/16 p0, 0x35

    .line 34
    return p0
.end method

.method private static s(Lorg/threeten/bp/g;)Lorg/threeten/bp/temporal/m;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/temporal/c$b;->q(Lorg/threeten/bp/g;)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/temporal/c$b;->r(I)I

    .line 8
    move-result p0

    .line 9
    int-to-long v0, p0

    .line 10
    .line 11
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static t(Lorg/threeten/bp/temporal/e;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/chrono/h;->h(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/h;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/h;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/c$b;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/threeten/bp/temporal/c$b;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/threeten/bp/temporal/c$b;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/c$b;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/c$b;->$VALUES:[Lorg/threeten/bp/temporal/c$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/c$b;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/threeten/bp/temporal/c$b;

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

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
