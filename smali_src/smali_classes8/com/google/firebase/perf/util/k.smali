.class public abstract enum Lcom/google/firebase/perf/util/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/util/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/util/k;

.field public static final enum BYTES:Lcom/google/firebase/perf/util/k;

.field public static final enum GIGABYTES:Lcom/google/firebase/perf/util/k;

.field public static final enum KILOBYTES:Lcom/google/firebase/perf/util/k;

.field public static final enum MEGABYTES:Lcom/google/firebase/perf/util/k;

.field public static final enum TERABYTES:Lcom/google/firebase/perf/util/k;


# instance fields
.field numBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/perf/util/k$a;

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v1, 0x10000000000L

    .line 8
    .line 9
    const-string v3, "TERABYTES"

    .line 10
    const/4 v4, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/firebase/perf/util/k$a;-><init>(Ljava/lang/String;IJ)V

    .line 14
    .line 15
    sput-object v0, Lcom/google/firebase/perf/util/k;->TERABYTES:Lcom/google/firebase/perf/util/k;

    .line 16
    .line 17
    new-instance v1, Lcom/google/firebase/perf/util/k$b;

    .line 18
    .line 19
    .line 20
    const-wide/32 v2, 0x40000000

    .line 21
    .line 22
    const-string v5, "GIGABYTES"

    .line 23
    const/4 v6, 0x1

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v5, v6, v2, v3}, Lcom/google/firebase/perf/util/k$b;-><init>(Ljava/lang/String;IJ)V

    .line 27
    .line 28
    sput-object v1, Lcom/google/firebase/perf/util/k;->GIGABYTES:Lcom/google/firebase/perf/util/k;

    .line 29
    .line 30
    new-instance v2, Lcom/google/firebase/perf/util/k$c;

    .line 31
    .line 32
    .line 33
    const-wide/32 v7, 0x100000

    .line 34
    .line 35
    const-string v3, "MEGABYTES"

    .line 36
    const/4 v5, 0x2

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3, v5, v7, v8}, Lcom/google/firebase/perf/util/k$c;-><init>(Ljava/lang/String;IJ)V

    .line 40
    .line 41
    sput-object v2, Lcom/google/firebase/perf/util/k;->MEGABYTES:Lcom/google/firebase/perf/util/k;

    .line 42
    .line 43
    new-instance v3, Lcom/google/firebase/perf/util/k$d;

    .line 44
    .line 45
    const-wide/16 v7, 0x400

    .line 46
    .line 47
    const-string v9, "KILOBYTES"

    .line 48
    const/4 v10, 0x3

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, v9, v10, v7, v8}, Lcom/google/firebase/perf/util/k$d;-><init>(Ljava/lang/String;IJ)V

    .line 52
    .line 53
    sput-object v3, Lcom/google/firebase/perf/util/k;->KILOBYTES:Lcom/google/firebase/perf/util/k;

    .line 54
    .line 55
    new-instance v7, Lcom/google/firebase/perf/util/k$e;

    .line 56
    .line 57
    const-wide/16 v8, 0x1

    .line 58
    .line 59
    const-string v11, "BYTES"

    .line 60
    const/4 v12, 0x4

    .line 61
    .line 62
    .line 63
    invoke-direct {v7, v11, v12, v8, v9}, Lcom/google/firebase/perf/util/k$e;-><init>(Ljava/lang/String;IJ)V

    .line 64
    .line 65
    sput-object v7, Lcom/google/firebase/perf/util/k;->BYTES:Lcom/google/firebase/perf/util/k;

    .line 66
    const/4 v8, 0x5

    .line 67
    .line 68
    new-array v8, v8, [Lcom/google/firebase/perf/util/k;

    .line 69
    .line 70
    aput-object v0, v8, v4

    .line 71
    .line 72
    aput-object v1, v8, v6

    .line 73
    .line 74
    aput-object v2, v8, v5

    .line 75
    .line 76
    aput-object v3, v8, v10

    .line 77
    .line 78
    aput-object v7, v8, v12

    .line 79
    .line 80
    sput-object v8, Lcom/google/firebase/perf/util/k;->$VALUES:[Lcom/google/firebase/perf/util/k;

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/google/firebase/perf/util/k;->numBytes:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IJLcom/google/firebase/perf/util/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/perf/util/k;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/util/k;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/perf/util/k;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/google/firebase/perf/util/k;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/perf/util/k;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/util/k;->$VALUES:[Lcom/google/firebase/perf/util/k;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/google/firebase/perf/util/k;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/google/firebase/perf/util/k;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/firebase/perf/util/k;->numBytes:J

    .line 3
    mul-long/2addr p1, v0

    .line 4
    .line 5
    sget-object v0, Lcom/google/firebase/perf/util/k;->KILOBYTES:Lcom/google/firebase/perf/util/k;

    .line 6
    .line 7
    iget-wide v0, v0, Lcom/google/firebase/perf/util/k;->numBytes:J

    .line 8
    div-long/2addr p1, v0

    .line 9
    return-wide p1
.end method
