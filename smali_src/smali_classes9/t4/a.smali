.class public final Lt4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/a$b;,
        Lt4/a$d;,
        Lt4/a$c;,
        Lt4/a$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lt4/a;


# instance fields
.field private final analytics_label_:Ljava/lang/String;

.field private final bulk_id_:J

.field private final campaign_id_:J

.field private final collapse_key_:Ljava/lang/String;

.field private final composer_label_:Ljava/lang/String;

.field private final event_:Lt4/a$b;

.field private final instance_id_:Ljava/lang/String;

.field private final message_id_:Ljava/lang/String;

.field private final message_type_:Lt4/a$c;

.field private final package_name_:Ljava/lang/String;

.field private final priority_:I

.field private final project_number_:J

.field private final sdk_platform_:Lt4/a$d;

.field private final topic_:Ljava/lang/String;

.field private final ttl_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lt4/a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lt4/a$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lt4/a$a;->a()Lt4/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lt4/a;->DEFAULT_INSTANCE:Lt4/a;

    .line 12
    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Lt4/a$c;Lt4/a$d;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLt4/a$b;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move-wide v1, p1

    .line 6
    .line 7
    iput-wide v1, v0, Lt4/a;->project_number_:J

    .line 8
    move-object v1, p3

    .line 9
    .line 10
    iput-object v1, v0, Lt4/a;->message_id_:Ljava/lang/String;

    .line 11
    move-object v1, p4

    .line 12
    .line 13
    iput-object v1, v0, Lt4/a;->instance_id_:Ljava/lang/String;

    .line 14
    move-object v1, p5

    .line 15
    .line 16
    iput-object v1, v0, Lt4/a;->message_type_:Lt4/a$c;

    .line 17
    move-object v1, p6

    .line 18
    .line 19
    iput-object v1, v0, Lt4/a;->sdk_platform_:Lt4/a$d;

    .line 20
    move-object v1, p7

    .line 21
    .line 22
    iput-object v1, v0, Lt4/a;->package_name_:Ljava/lang/String;

    .line 23
    move-object v1, p8

    .line 24
    .line 25
    iput-object v1, v0, Lt4/a;->collapse_key_:Ljava/lang/String;

    .line 26
    move v1, p9

    .line 27
    .line 28
    iput v1, v0, Lt4/a;->priority_:I

    .line 29
    move v1, p10

    .line 30
    .line 31
    iput v1, v0, Lt4/a;->ttl_:I

    .line 32
    move-object v1, p11

    .line 33
    .line 34
    iput-object v1, v0, Lt4/a;->topic_:Ljava/lang/String;

    .line 35
    move-wide v1, p12

    .line 36
    .line 37
    iput-wide v1, v0, Lt4/a;->bulk_id_:J

    .line 38
    .line 39
    move-object/from16 v1, p14

    .line 40
    .line 41
    iput-object v1, v0, Lt4/a;->event_:Lt4/a$b;

    .line 42
    .line 43
    move-object/from16 v1, p15

    .line 44
    .line 45
    iput-object v1, v0, Lt4/a;->analytics_label_:Ljava/lang/String;

    .line 46
    .line 47
    move-wide/from16 v1, p16

    .line 48
    .line 49
    iput-wide v1, v0, Lt4/a;->campaign_id_:J

    .line 50
    .line 51
    move-object/from16 v1, p18

    .line 52
    .line 53
    iput-object v1, v0, Lt4/a;->composer_label_:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static p()Lt4/a$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lt4/a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lt4/a$a;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0xd
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/a;->analytics_label_:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0xb
    .end annotation

    .line 1
    iget-wide v0, p0, Lt4/a;->bulk_id_:J

    return-wide v0
.end method

.method public c()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0xe
    .end annotation

    .line 1
    iget-wide v0, p0, Lt4/a;->campaign_id_:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x7
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/a;->collapse_key_:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0xf
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/a;->composer_label_:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lt4/a$b;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0xc
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/a;->event_:Lt4/a$b;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x3
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/a;->instance_id_:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x2
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/a;->message_id_:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lt4/a$c;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x4
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/a;->message_type_:Lt4/a$c;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x6
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/a;->package_name_:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x8
    .end annotation

    .line 1
    iget v0, p0, Lt4/a;->priority_:I

    return v0
.end method

.method public l()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-wide v0, p0, Lt4/a;->project_number_:J

    return-wide v0
.end method

.method public m()Lt4/a$d;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x5
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/a;->sdk_platform_:Lt4/a$d;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0xa
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/a;->topic_:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x9
    .end annotation

    .line 1
    iget v0, p0, Lt4/a;->ttl_:I

    return v0
.end method
