.class public final Lcom/google/firebase/perf/v1/g;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/perf/v1/g;",
        "Lcom/google/firebase/perf/v1/g$b;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANDROID_MEMORY_READINGS_FIELD_NUMBER:I = 0x4

.field public static final CPU_METRIC_READINGS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

.field public static final GAUGE_METADATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private androidMemoryReadings_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/perf/v1/b;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private cpuMetricReadings_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/perf/v1/e;",
            ">;"
        }
    .end annotation
.end field

.field private gaugeMetadata_:Lcom/google/firebase/perf/v1/f;

.field private sessionId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/perf/v1/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/perf/v1/g;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    .line 8
    .line 9
    const-class v1, Lcom/google/firebase/perf/v1/g;

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/firebase/perf/v1/g;->sessionId_:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/perf/v1/g;->cpuMetricReadings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/firebase/perf/v1/g;->androidMemoryReadings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    return-void
.end method

.method static synthetic a()Lcom/google/firebase/perf/v1/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    return-object v0
.end method

.method static synthetic d(Lcom/google/firebase/perf/v1/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/g;->setSessionId(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/g;->l(Lcom/google/firebase/perf/v1/b;)V

    .line 4
    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/f;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/g;->v(Lcom/google/firebase/perf/v1/f;)V

    .line 4
    return-void
.end method

.method static synthetic k(Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/e;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/g;->m(Lcom/google/firebase/perf/v1/e;)V

    .line 4
    return-void
.end method

.method private l(Lcom/google/firebase/perf/v1/b;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/g;->n()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->androidMemoryReadings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method private m(Lcom/google/firebase/perf/v1/e;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/g;->o()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->cpuMetricReadings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->androidMemoryReadings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/firebase/perf/v1/g;->androidMemoryReadings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 15
    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->cpuMetricReadings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/firebase/perf/v1/g;->cpuMetricReadings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 15
    :cond_0
    return-void
.end method

.method public static r()Lcom/google/firebase/perf/v1/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    return-object v0
.end method

.method private setSessionId(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    iget v0, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/perf/v1/g;->sessionId_:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static u()Lcom/google/firebase/perf/v1/g$b;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/perf/v1/g$b;

    .line 9
    return-object v0
.end method

.method private v(Lcom/google/firebase/perf/v1/f;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/perf/v1/g;->gaugeMetadata_:Lcom/google/firebase/perf/v1/f;

    .line 6
    .line 7
    iget p1, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    iput p1, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    .line 12
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    sget-object p2, Lcom/google/firebase/perf/v1/g$a;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    .line 8
    aget p1, p2, p1

    .line 9
    const/4 p2, 0x1

    .line 10
    const/4 p3, 0x0

    .line 11
    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 19
    throw p1

    .line 20
    :pswitch_0
    return-object p3

    .line 21
    .line 22
    .line 23
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    .line 27
    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/g;->PARSER:Lcom/google/protobuf/Parser;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const-class p2, Lcom/google/firebase/perf/v1/g;

    .line 32
    monitor-enter p2

    .line 33
    .line 34
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/g;->PARSER:Lcom/google/protobuf/Parser;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 39
    .line 40
    sget-object p3, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 44
    .line 45
    sput-object p1, Lcom/google/firebase/perf/v1/g;->PARSER:Lcom/google/protobuf/Parser;

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit p2

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_2
    return-object p1

    .line 54
    .line 55
    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const/4 p1, 0x7

    .line 58
    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 60
    const/4 p3, 0x0

    .line 61
    .line 62
    const-string v0, "bitField0_"

    .line 63
    .line 64
    aput-object v0, p1, p3

    .line 65
    .line 66
    const-string p3, "sessionId_"

    .line 67
    .line 68
    aput-object p3, p1, p2

    .line 69
    const/4 p2, 0x2

    .line 70
    .line 71
    const-string p3, "cpuMetricReadings_"

    .line 72
    .line 73
    aput-object p3, p1, p2

    .line 74
    const/4 p2, 0x3

    .line 75
    .line 76
    const-class p3, Lcom/google/firebase/perf/v1/e;

    .line 77
    .line 78
    aput-object p3, p1, p2

    .line 79
    const/4 p2, 0x4

    .line 80
    .line 81
    const-string p3, "gaugeMetadata_"

    .line 82
    .line 83
    aput-object p3, p1, p2

    .line 84
    const/4 p2, 0x5

    .line 85
    .line 86
    const-string p3, "androidMemoryReadings_"

    .line 87
    .line 88
    aput-object p3, p1, p2

    .line 89
    const/4 p2, 0x6

    .line 90
    .line 91
    const-class p3, Lcom/google/firebase/perf/v1/b;

    .line 92
    .line 93
    aput-object p3, p1, p2

    .line 94
    .line 95
    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u001b"

    .line 96
    .line 97
    sget-object p3, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    .line 98
    .line 99
    .line 100
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    .line 104
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/g$b;

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/g$b;-><init>(Lcom/google/firebase/perf/v1/g$a;)V

    .line 108
    return-object p1

    .line 109
    .line 110
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/g;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1}, Lcom/google/firebase/perf/v1/g;-><init>()V

    .line 114
    return-object p1

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasSessionId()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public p()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->androidMemoryReadings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->cpuMetricReadings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public s()Lcom/google/firebase/perf/v1/f;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->gaugeMetadata_:Lcom/google/firebase/perf/v1/f;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/firebase/perf/v1/f;->k()Lcom/google/firebase/perf/v1/f;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
