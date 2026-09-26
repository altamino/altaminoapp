.class public final Lcom/google/firebase/perf/v1/h;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/h$b;,
        Lcom/google/firebase/perf/v1/h$c;,
        Lcom/google/firebase/perf/v1/h$e;,
        Lcom/google/firebase/perf/v1/h$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/perf/v1/h;",
        "Lcom/google/firebase/perf/v1/h$b;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLIENT_START_TIME_US_FIELD_NUMBER:I = 0x7

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

.field public static final HTTP_METHOD_FIELD_NUMBER:I = 0x2

.field public static final HTTP_RESPONSE_CODE_FIELD_NUMBER:I = 0x5

.field public static final NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERF_SESSIONS_FIELD_NUMBER:I = 0xd

.field public static final REQUEST_PAYLOAD_BYTES_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_CONTENT_TYPE_FIELD_NUMBER:I = 0x6

.field public static final RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER:I = 0x4

.field public static final TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER:I = 0x8

.field public static final TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER:I = 0xa

.field public static final TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER:I = 0x9

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private clientStartTimeUs_:J

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

.field private httpMethod_:I

.field private httpResponseCode_:I

.field private networkClientErrorReason_:I

.field private perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/perf/v1/k;",
            ">;"
        }
    .end annotation
.end field

.field private requestPayloadBytes_:J

.field private responseContentType_:Ljava/lang/String;

.field private responsePayloadBytes_:J

.field private timeToRequestCompletedUs_:J

.field private timeToResponseCompletedUs_:J

.field private timeToResponseInitiatedUs_:J

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/perf/v1/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/perf/v1/h;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    .line 8
    .line 9
    const-class v1, Lcom/google/firebase/perf/v1/h;

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
    iput-object v0, p0, Lcom/google/firebase/perf/v1/h;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/perf/v1/h;->url_:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/firebase/perf/v1/h;->responseContentType_:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/firebase/perf/v1/h;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    return-void
.end method

.method public static R()Lcom/google/firebase/perf/v1/h$b;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/perf/v1/h$b;

    .line 9
    return-object v0
.end method

.method private S(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/h;->clientStartTimeUs_:J

    return-void
.end method

.method private T(Lcom/google/firebase/perf/v1/h$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/h$d;->getNumber()I

    .line 4
    move-result p1

    .line 5
    .line 6
    iput p1, p0, Lcom/google/firebase/perf/v1/h;->httpMethod_:I

    .line 7
    .line 8
    iget p1, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    .line 9
    .line 10
    or-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    iput p1, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    .line 13
    return-void
.end method

.method private U(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    iput p1, p0, Lcom/google/firebase/perf/v1/h;->httpResponseCode_:I

    return-void
.end method

.method private V(Lcom/google/firebase/perf/v1/h$e;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/h$e;->getNumber()I

    .line 4
    move-result p1

    .line 5
    .line 6
    iput p1, p0, Lcom/google/firebase/perf/v1/h;->networkClientErrorReason_:I

    .line 7
    .line 8
    iget p1, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    .line 9
    .line 10
    or-int/lit8 p1, p1, 0x10

    .line 11
    .line 12
    iput p1, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    .line 13
    return-void
.end method

.method private W(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/h;->requestPayloadBytes_:J

    return-void
.end method

.method private X(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x40

    .line 8
    .line 9
    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/perf/v1/h;->responseContentType_:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private Y(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/h;->responsePayloadBytes_:J

    return-void
.end method

.method private Z(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/h;->timeToRequestCompletedUs_:J

    return-void
.end method

.method static synthetic a()Lcom/google/firebase/perf/v1/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    return-object v0
.end method

.method private a0(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/h;->timeToResponseCompletedUs_:J

    return-void
.end method

.method private b0(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/h;->timeToResponseInitiatedUs_:J

    return-void
.end method

.method private c0(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/perf/v1/h;->url_:Ljava/lang/String;

    .line 12
    return-void
.end method

.method static synthetic d(Lcom/google/firebase/perf/v1/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/h;->c0(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/h;Lcom/google/firebase/perf/v1/h$e;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/h;->V(Lcom/google/firebase/perf/v1/h$e;)V

    .line 4
    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/h;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/h;->U(I)V

    .line 4
    return-void
.end method

.method static synthetic k(Lcom/google/firebase/perf/v1/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/h;->X(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic l(Lcom/google/firebase/perf/v1/h;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/h;->v()V

    .line 4
    return-void
.end method

.method static synthetic m(Lcom/google/firebase/perf/v1/h;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/h;->S(J)V

    .line 4
    return-void
.end method

.method static synthetic n(Lcom/google/firebase/perf/v1/h;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/h;->Z(J)V

    .line 4
    return-void
.end method

.method static synthetic o(Lcom/google/firebase/perf/v1/h;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/h;->b0(J)V

    .line 4
    return-void
.end method

.method static synthetic p(Lcom/google/firebase/perf/v1/h;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/h;->a0(J)V

    .line 4
    return-void
.end method

.method static synthetic q(Lcom/google/firebase/perf/v1/h;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/h;->u(Ljava/lang/Iterable;)V

    .line 4
    return-void
.end method

.method static synthetic r(Lcom/google/firebase/perf/v1/h;Lcom/google/firebase/perf/v1/h$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/h;->T(Lcom/google/firebase/perf/v1/h$d;)V

    .line 4
    return-void
.end method

.method static synthetic s(Lcom/google/firebase/perf/v1/h;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/h;->W(J)V

    .line 4
    return-void
.end method

.method static synthetic t(Lcom/google/firebase/perf/v1/h;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/h;->Y(J)V

    .line 4
    return-void
.end method

.method private u(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/h;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/perf/v1/h;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    .line 3
    .line 4
    and-int/lit8 v0, v0, -0x41

    .line 5
    .line 6
    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/firebase/perf/v1/h;->y()Lcom/google/firebase/perf/v1/h;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/h;->D()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/firebase/perf/v1/h;->responseContentType_:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/v1/h;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

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
    iput-object v0, p0, Lcom/google/firebase/perf/v1/h;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 15
    :cond_0
    return-void
.end method

.method public static y()Lcom/google/firebase/perf/v1/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->httpResponseCode_:I

    return v0
.end method

.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/v1/h;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public C()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/h;->requestPayloadBytes_:J

    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/v1/h;->responseContentType_:Ljava/lang/String;

    return-object v0
.end method

.method public E()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/h;->responsePayloadBytes_:J

    return-wide v0
.end method

.method public F()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/h;->timeToRequestCompletedUs_:J

    return-wide v0
.end method

.method public G()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/h;->timeToResponseCompletedUs_:J

    return-wide v0
.end method

.method public H()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/h;->timeToResponseInitiatedUs_:J

    return-wide v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/v1/h;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    sget-object p2, Lcom/google/firebase/perf/v1/h$a;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/h;->PARSER:Lcom/google/protobuf/Parser;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const-class p2, Lcom/google/firebase/perf/v1/h;

    .line 32
    monitor-enter p2

    .line 33
    .line 34
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/h;->PARSER:Lcom/google/protobuf/Parser;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 39
    .line 40
    sget-object p3, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 44
    .line 45
    sput-object p1, Lcom/google/firebase/perf/v1/h;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    .line 56
    return-object p1

    .line 57
    .line 58
    :pswitch_4
    const/16 p1, 0x12

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
    const-string p3, "url_"

    .line 68
    .line 69
    aput-object p3, p1, p2

    .line 70
    const/4 p2, 0x2

    .line 71
    .line 72
    const-string p3, "httpMethod_"

    .line 73
    .line 74
    aput-object p3, p1, p2

    .line 75
    const/4 p2, 0x3

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/google/firebase/perf/v1/h$d;->b()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    aput-object p3, p1, p2

    .line 82
    const/4 p2, 0x4

    .line 83
    .line 84
    const-string p3, "requestPayloadBytes_"

    .line 85
    .line 86
    aput-object p3, p1, p2

    .line 87
    const/4 p2, 0x5

    .line 88
    .line 89
    const-string p3, "responsePayloadBytes_"

    .line 90
    .line 91
    aput-object p3, p1, p2

    .line 92
    const/4 p2, 0x6

    .line 93
    .line 94
    const-string p3, "httpResponseCode_"

    .line 95
    .line 96
    aput-object p3, p1, p2

    .line 97
    const/4 p2, 0x7

    .line 98
    .line 99
    const-string p3, "responseContentType_"

    .line 100
    .line 101
    aput-object p3, p1, p2

    .line 102
    .line 103
    const/16 p2, 0x8

    .line 104
    .line 105
    const-string p3, "clientStartTimeUs_"

    .line 106
    .line 107
    aput-object p3, p1, p2

    .line 108
    .line 109
    const/16 p2, 0x9

    .line 110
    .line 111
    const-string p3, "timeToRequestCompletedUs_"

    .line 112
    .line 113
    aput-object p3, p1, p2

    .line 114
    .line 115
    const/16 p2, 0xa

    .line 116
    .line 117
    const-string p3, "timeToResponseInitiatedUs_"

    .line 118
    .line 119
    aput-object p3, p1, p2

    .line 120
    .line 121
    const/16 p2, 0xb

    .line 122
    .line 123
    const-string p3, "timeToResponseCompletedUs_"

    .line 124
    .line 125
    aput-object p3, p1, p2

    .line 126
    .line 127
    const/16 p2, 0xc

    .line 128
    .line 129
    const-string p3, "networkClientErrorReason_"

    .line 130
    .line 131
    aput-object p3, p1, p2

    .line 132
    .line 133
    const/16 p2, 0xd

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lcom/google/firebase/perf/v1/h$e;->b()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 137
    move-result-object p3

    .line 138
    .line 139
    aput-object p3, p1, p2

    .line 140
    .line 141
    const/16 p2, 0xe

    .line 142
    .line 143
    const-string p3, "customAttributes_"

    .line 144
    .line 145
    aput-object p3, p1, p2

    .line 146
    .line 147
    const/16 p2, 0xf

    .line 148
    .line 149
    sget-object p3, Lcom/google/firebase/perf/v1/h$c;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    .line 150
    .line 151
    aput-object p3, p1, p2

    .line 152
    .line 153
    const/16 p2, 0x10

    .line 154
    .line 155
    const-string p3, "perfSessions_"

    .line 156
    .line 157
    aput-object p3, p1, p2

    .line 158
    .line 159
    const/16 p2, 0x11

    .line 160
    .line 161
    const-class p3, Lcom/google/firebase/perf/v1/k;

    .line 162
    .line 163
    aput-object p3, p1, p2

    .line 164
    .line 165
    const-string p2, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001\u1008\u0000\u0002\u100c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1004\u0005\u0006\u1008\u0006\u0007\u1002\u0007\u0008\u1002\u0008\t\u1002\t\n\u1002\n\u000b\u100c\u0004\u000c2\r\u001b"

    .line 166
    .line 167
    sget-object p3, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    .line 168
    .line 169
    .line 170
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-result-object p1

    .line 172
    return-object p1

    .line 173
    .line 174
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/h$b;

    .line 175
    .line 176
    .line 177
    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/h$b;-><init>(Lcom/google/firebase/perf/v1/h$a;)V

    .line 178
    return-object p1

    .line 179
    .line 180
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/h;

    .line 181
    .line 182
    .line 183
    invoke-direct {p1}, Lcom/google/firebase/perf/v1/h;-><init>()V

    .line 184
    return-object p1

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
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

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/h;->clientStartTimeUs_:J

    return-wide v0
.end method

.method public z()Lcom/google/firebase/perf/v1/h$d;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/firebase/perf/v1/h;->httpMethod_:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/perf/v1/h$d;->a(I)Lcom/google/firebase/perf/v1/h$d;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/google/firebase/perf/v1/h$d;->HTTP_METHOD_UNKNOWN:Lcom/google/firebase/perf/v1/h$d;

    .line 11
    :cond_0
    return-object v0
.end method
