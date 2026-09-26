.class public Lcom/airbnb/lottie/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static final DBG:Z = false

.field private static final MAX_DEPTH:I = 0x14

.field public static final TAG:Ljava/lang/String; = "LOTTIE"

.field private static depthPastMaxDepth:I

.field private static sections:[Ljava/lang/String;

.field private static startTimeNs:[J

.field private static traceDepth:I

.field private static traceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    sget-boolean v0, Lcom/airbnb/lottie/d;->traceEnabled:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    sget v0, Lcom/airbnb/lottie/d;->traceDepth:I

    .line 8
    .line 9
    const/16 v1, 0x14

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    sget p0, Lcom/airbnb/lottie/d;->depthPastMaxDepth:I

    .line 14
    .line 15
    add-int/lit8 p0, p0, 0x1

    .line 16
    .line 17
    sput p0, Lcom/airbnb/lottie/d;->depthPastMaxDepth:I

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    sget-object v1, Lcom/airbnb/lottie/d;->sections:[Ljava/lang/String;

    .line 21
    .line 22
    aput-object p0, v1, v0

    .line 23
    .line 24
    sget-object v1, Lcom/airbnb/lottie/d;->startTimeNs:[J

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 28
    move-result-wide v2

    .line 29
    .line 30
    aput-wide v2, v1, v0

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Landroidx/core/os/TraceCompat;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    sget p0, Lcom/airbnb/lottie/d;->traceDepth:I

    .line 36
    .line 37
    add-int/lit8 p0, p0, 0x1

    .line 38
    .line 39
    sput p0, Lcom/airbnb/lottie/d;->traceDepth:I

    .line 40
    return-void
.end method

.method public static b(Ljava/lang/String;)F
    .locals 4

    .line 1
    .line 2
    sget v0, Lcom/airbnb/lottie/d;->depthPastMaxDepth:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    sput v0, Lcom/airbnb/lottie/d;->depthPastMaxDepth:I

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    sget-boolean v0, Lcom/airbnb/lottie/d;->traceEnabled:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return v1

    .line 16
    .line 17
    :cond_1
    sget v0, Lcom/airbnb/lottie/d;->traceDepth:I

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    sput v0, Lcom/airbnb/lottie/d;->traceDepth:I

    .line 22
    const/4 v1, -0x1

    .line 23
    .line 24
    if-eq v0, v1, :cond_3

    .line 25
    .line 26
    sget-object v1, Lcom/airbnb/lottie/d;->sections:[Ljava/lang/String;

    .line 27
    .line 28
    aget-object v0, v1, v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/core/os/TraceCompat;->b()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    sget-object p0, Lcom/airbnb/lottie/d;->startTimeNs:[J

    .line 44
    .line 45
    sget v2, Lcom/airbnb/lottie/d;->traceDepth:I

    .line 46
    .line 47
    aget-wide v2, p0, v2

    .line 48
    sub-long/2addr v0, v2

    .line 49
    long-to-float p0, v0

    .line 50
    .line 51
    .line 52
    const v0, 0x49742400    # 1000000.0f

    .line 53
    div-float/2addr p0, v0

    .line 54
    return p0

    .line 55
    .line 56
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v2, "Unbalanced trace call "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p0, ". Expected "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    sget-object p0, Lcom/airbnb/lottie/d;->sections:[Ljava/lang/String;

    .line 77
    .line 78
    sget v2, Lcom/airbnb/lottie/d;->traceDepth:I

    .line 79
    .line 80
    aget-object p0, p0, v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string p0, "."

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    throw v0

    .line 97
    .line 98
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    const-string v0, "Can\'t end trace section. There are none."

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p0
.end method
