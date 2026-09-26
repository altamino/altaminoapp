.class public final enum Lcom/google/firebase/perf/util/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/util/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/util/c;

.field public static final enum APP_START_TRACE_NAME:Lcom/google/firebase/perf/util/c;

.field public static final enum BACKGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/c;

.field public static final enum FOREGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/c;

.field public static final enum ON_CREATE_TRACE_NAME:Lcom/google/firebase/perf/util/c;

.field public static final enum ON_RESUME_TRACE_NAME:Lcom/google/firebase/perf/util/c;

.field public static final enum ON_START_TRACE_NAME:Lcom/google/firebase/perf/util/c;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/perf/util/c;

    .line 3
    .line 4
    const-string v1, "_as"

    .line 5
    .line 6
    const-string v2, "APP_START_TRACE_NAME"

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/perf/util/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    sput-object v0, Lcom/google/firebase/perf/util/c;->APP_START_TRACE_NAME:Lcom/google/firebase/perf/util/c;

    .line 13
    .line 14
    new-instance v1, Lcom/google/firebase/perf/util/c;

    .line 15
    .line 16
    const-string v2, "_astui"

    .line 17
    .line 18
    const-string v4, "ON_CREATE_TRACE_NAME"

    .line 19
    const/4 v5, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v4, v5, v2}, Lcom/google/firebase/perf/util/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    sput-object v1, Lcom/google/firebase/perf/util/c;->ON_CREATE_TRACE_NAME:Lcom/google/firebase/perf/util/c;

    .line 25
    .line 26
    new-instance v2, Lcom/google/firebase/perf/util/c;

    .line 27
    .line 28
    const-string v4, "_astfd"

    .line 29
    .line 30
    const-string v6, "ON_START_TRACE_NAME"

    .line 31
    const/4 v7, 0x2

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v6, v7, v4}, Lcom/google/firebase/perf/util/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    sput-object v2, Lcom/google/firebase/perf/util/c;->ON_START_TRACE_NAME:Lcom/google/firebase/perf/util/c;

    .line 37
    .line 38
    new-instance v4, Lcom/google/firebase/perf/util/c;

    .line 39
    .line 40
    const-string v6, "_asti"

    .line 41
    .line 42
    const-string v8, "ON_RESUME_TRACE_NAME"

    .line 43
    const/4 v9, 0x3

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v8, v9, v6}, Lcom/google/firebase/perf/util/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    sput-object v4, Lcom/google/firebase/perf/util/c;->ON_RESUME_TRACE_NAME:Lcom/google/firebase/perf/util/c;

    .line 49
    .line 50
    new-instance v6, Lcom/google/firebase/perf/util/c;

    .line 51
    .line 52
    const-string v8, "_fs"

    .line 53
    .line 54
    const-string v10, "FOREGROUND_TRACE_NAME"

    .line 55
    const/4 v11, 0x4

    .line 56
    .line 57
    .line 58
    invoke-direct {v6, v10, v11, v8}, Lcom/google/firebase/perf/util/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    sput-object v6, Lcom/google/firebase/perf/util/c;->FOREGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/c;

    .line 61
    .line 62
    new-instance v8, Lcom/google/firebase/perf/util/c;

    .line 63
    .line 64
    const-string v10, "_bs"

    .line 65
    .line 66
    const-string v12, "BACKGROUND_TRACE_NAME"

    .line 67
    const/4 v13, 0x5

    .line 68
    .line 69
    .line 70
    invoke-direct {v8, v12, v13, v10}, Lcom/google/firebase/perf/util/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    .line 72
    sput-object v8, Lcom/google/firebase/perf/util/c;->BACKGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/c;

    .line 73
    const/4 v10, 0x6

    .line 74
    .line 75
    new-array v10, v10, [Lcom/google/firebase/perf/util/c;

    .line 76
    .line 77
    aput-object v0, v10, v3

    .line 78
    .line 79
    aput-object v1, v10, v5

    .line 80
    .line 81
    aput-object v2, v10, v7

    .line 82
    .line 83
    aput-object v4, v10, v9

    .line 84
    .line 85
    aput-object v6, v10, v11

    .line 86
    .line 87
    aput-object v8, v10, v13

    .line 88
    .line 89
    sput-object v10, Lcom/google/firebase/perf/util/c;->$VALUES:[Lcom/google/firebase/perf/util/c;

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/firebase/perf/util/c;->mName:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/perf/util/c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/google/firebase/perf/util/c;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/perf/util/c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/util/c;->$VALUES:[Lcom/google/firebase/perf/util/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/google/firebase/perf/util/c;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/google/firebase/perf/util/c;

    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/util/c;->mName:Ljava/lang/String;

    return-object v0
.end method
