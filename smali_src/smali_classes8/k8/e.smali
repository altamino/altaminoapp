.class public final enum Lk8/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk8/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lz7/a;

.field private static final synthetic $VALUES:[Lk8/e;

.field public static final enum DAYS:Lk8/e;

.field public static final enum HOURS:Lk8/e;

.field public static final enum MICROSECONDS:Lk8/e;

.field public static final enum MILLISECONDS:Lk8/e;

.field public static final enum MINUTES:Lk8/e;

.field public static final enum NANOSECONDS:Lk8/e;

.field public static final enum SECONDS:Lk8/e;


# instance fields
.field private final timeUnit:Ljava/util/concurrent/TimeUnit;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lk8/e;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    const-string v3, "NANOSECONDS"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v3, v1, v2}, Lk8/e;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 11
    .line 12
    sput-object v0, Lk8/e;->NANOSECONDS:Lk8/e;

    .line 13
    .line 14
    new-instance v0, Lk8/e;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    const-string v3, "MICROSECONDS"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v3, v1, v2}, Lk8/e;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 23
    .line 24
    sput-object v0, Lk8/e;->MICROSECONDS:Lk8/e;

    .line 25
    .line 26
    new-instance v0, Lk8/e;

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    const-string v3, "MILLISECONDS"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v3, v1, v2}, Lk8/e;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 35
    .line 36
    sput-object v0, Lk8/e;->MILLISECONDS:Lk8/e;

    .line 37
    .line 38
    new-instance v0, Lk8/e;

    .line 39
    const/4 v1, 0x3

    .line 40
    .line 41
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    const-string v3, "SECONDS"

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v3, v1, v2}, Lk8/e;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 47
    .line 48
    sput-object v0, Lk8/e;->SECONDS:Lk8/e;

    .line 49
    .line 50
    new-instance v0, Lk8/e;

    .line 51
    const/4 v1, 0x4

    .line 52
    .line 53
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    const-string v3, "MINUTES"

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v3, v1, v2}, Lk8/e;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 59
    .line 60
    sput-object v0, Lk8/e;->MINUTES:Lk8/e;

    .line 61
    .line 62
    new-instance v0, Lk8/e;

    .line 63
    const/4 v1, 0x5

    .line 64
    .line 65
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 66
    .line 67
    const-string v3, "HOURS"

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v3, v1, v2}, Lk8/e;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 71
    .line 72
    sput-object v0, Lk8/e;->HOURS:Lk8/e;

    .line 73
    .line 74
    new-instance v0, Lk8/e;

    .line 75
    const/4 v1, 0x6

    .line 76
    .line 77
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    const-string v3, "DAYS"

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v3, v1, v2}, Lk8/e;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 83
    .line 84
    sput-object v0, Lk8/e;->DAYS:Lk8/e;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lk8/e;->a()[Lk8/e;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    sput-object v0, Lk8/e;->$VALUES:[Lk8/e;

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lz7/b;->a([Ljava/lang/Enum;)Lz7/a;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    sput-object v0, Lk8/e;->$ENTRIES:Lz7/a;

    .line 97
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lk8/e;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 6
    return-void
.end method

.method private static final synthetic a()[Lk8/e;
    .locals 3

    .line 1
    const/4 v0, 0x7

    new-array v0, v0, [Lk8/e;

    const/4 v1, 0x0

    sget-object v2, Lk8/e;->NANOSECONDS:Lk8/e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lk8/e;->MICROSECONDS:Lk8/e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lk8/e;->MILLISECONDS:Lk8/e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lk8/e;->SECONDS:Lk8/e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lk8/e;->MINUTES:Lk8/e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lk8/e;->HOURS:Lk8/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lk8/e;->DAYS:Lk8/e;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lk8/e;
    .locals 1

    .line 1
    const-class v0, Lk8/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk8/e;

    return-object p0
.end method

.method public static values()[Lk8/e;
    .locals 1

    .line 1
    sget-object v0, Lk8/e;->$VALUES:[Lk8/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk8/e;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/concurrent/TimeUnit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lk8/e;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method
