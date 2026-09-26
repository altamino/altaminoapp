.class public final Lcom/google/firebase/perf/v1/c;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/c$b;,
        Lcom/google/firebase/perf/v1/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/perf/v1/c;",
        "Lcom/google/firebase/perf/v1/c$b;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANDROID_APP_INFO_FIELD_NUMBER:I = 0x3

.field public static final APPLICATION_PROCESS_STATE_FIELD_NUMBER:I = 0x5

.field public static final APP_INSTANCE_ID_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

.field public static final GOOGLE_APP_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private androidAppInfo_:Lcom/google/firebase/perf/v1/a;

.field private appInstanceId_:Ljava/lang/String;

.field private applicationProcessState_:I

.field private bitField0_:I

.field private customAttributes_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private googleAppId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/perf/v1/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/perf/v1/c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 8
    .line 9
    const-class v1, Lcom/google/firebase/perf/v1/c;

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
    .line 6
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->googleAppId_:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->appInstanceId_:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static synthetic a()Lcom/google/firebase/perf/v1/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    return-object v0
.end method

.method static synthetic d(Lcom/google/firebase/perf/v1/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->y(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/c;Lcom/google/firebase/perf/v1/d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->x(Lcom/google/firebase/perf/v1/d;)V

    .line 4
    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/c;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/c;->o()Ljava/util/Map;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic k(Lcom/google/firebase/perf/v1/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->w(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic l(Lcom/google/firebase/perf/v1/c;Lcom/google/firebase/perf/v1/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->v(Lcom/google/firebase/perf/v1/a;)V

    .line 4
    return-void
.end method

.method public static n()Lcom/google/firebase/perf/v1/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    return-object v0
.end method

.method private o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/c;->t()Lcom/google/protobuf/MapFieldLite;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private t()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 19
    return-object v0
.end method

.method public static u()Lcom/google/firebase/perf/v1/c$b;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/perf/v1/c$b;

    .line 9
    return-object v0
.end method

.method private v(Lcom/google/firebase/perf/v1/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/perf/v1/c;->androidAppInfo_:Lcom/google/firebase/perf/v1/a;

    .line 6
    .line 7
    iget p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x4

    .line 10
    .line 11
    iput p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 12
    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    iput v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/perf/v1/c;->appInstanceId_:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private x(Lcom/google/firebase/perf/v1/d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/d;->getNumber()I

    .line 4
    move-result p1

    .line 5
    .line 6
    iput p1, p0, Lcom/google/firebase/perf/v1/c;->applicationProcessState_:I

    .line 7
    .line 8
    iget p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 9
    .line 10
    or-int/lit8 p1, p1, 0x8

    .line 11
    .line 12
    iput p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 13
    return-void
.end method

.method private y(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/perf/v1/c;->googleAppId_:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    sget-object p2, Lcom/google/firebase/perf/v1/c$a;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/c;->PARSER:Lcom/google/protobuf/Parser;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const-class p2, Lcom/google/firebase/perf/v1/c;

    .line 32
    monitor-enter p2

    .line 33
    .line 34
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/c;->PARSER:Lcom/google/protobuf/Parser;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 39
    .line 40
    sget-object p3, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 44
    .line 45
    sput-object p1, Lcom/google/firebase/perf/v1/c;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 56
    return-object p1

    .line 57
    .line 58
    :pswitch_4
    const/16 p1, 0x8

    .line 59
    .line 60
    new-array p1, p1, [Ljava/lang/Object;

    .line 61
    const/4 p3, 0x0

    .line 62
    .line 63
    const-string v0, "bitField0_"

    .line 64
    .line 65
    aput-object v0, p1, p3

    .line 66
    .line 67
    const-string p3, "googleAppId_"

    .line 68
    .line 69
    aput-object p3, p1, p2

    .line 70
    const/4 p2, 0x2

    .line 71
    .line 72
    const-string p3, "appInstanceId_"

    .line 73
    .line 74
    aput-object p3, p1, p2

    .line 75
    const/4 p2, 0x3

    .line 76
    .line 77
    const-string p3, "androidAppInfo_"

    .line 78
    .line 79
    aput-object p3, p1, p2

    .line 80
    const/4 p2, 0x4

    .line 81
    .line 82
    const-string p3, "applicationProcessState_"

    .line 83
    .line 84
    aput-object p3, p1, p2

    .line 85
    const/4 p2, 0x5

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/google/firebase/perf/v1/d;->b()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 89
    move-result-object p3

    .line 90
    .line 91
    aput-object p3, p1, p2

    .line 92
    const/4 p2, 0x6

    .line 93
    .line 94
    const-string p3, "customAttributes_"

    .line 95
    .line 96
    aput-object p3, p1, p2

    .line 97
    const/4 p2, 0x7

    .line 98
    .line 99
    sget-object p3, Lcom/google/firebase/perf/v1/c$c;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    .line 100
    .line 101
    aput-object p3, p1, p2

    .line 102
    .line 103
    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0005\u100c\u0003\u00062"

    .line 104
    .line 105
    sget-object p3, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 106
    .line 107
    .line 108
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    .line 112
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/c$b;

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/c$b;-><init>(Lcom/google/firebase/perf/v1/c$a;)V

    .line 116
    return-object p1

    .line 117
    .line 118
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/c;

    .line 119
    .line 120
    .line 121
    invoke-direct {p1}, Lcom/google/firebase/perf/v1/c;-><init>()V

    .line 122
    return-object p1

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
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
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

.method public m()Lcom/google/firebase/perf/v1/a;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->androidAppInfo_:Lcom/google/firebase/perf/v1/a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/firebase/perf/v1/a;->k()Lcom/google/firebase/perf/v1/a;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
