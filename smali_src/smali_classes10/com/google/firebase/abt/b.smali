.class public Lcom/google/firebase/abt/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALL_REQUIRED_KEYS:[Ljava/lang/String;

.field static final EXPERIMENT_ID_KEY:Ljava/lang/String; = "experimentId"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXPERIMENT_START_TIME_KEY:Ljava/lang/String; = "experimentStartTime"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TIME_TO_LIVE_KEY:Ljava/lang/String; = "timeToLiveMillis"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TRIGGER_EVENT_KEY:Ljava/lang/String; = "triggerEvent"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TRIGGER_TIMEOUT_KEY:Ljava/lang/String; = "triggerTimeoutMillis"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final VARIANT_ID_KEY:Ljava/lang/String; = "variantId"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final protoTimestampStringParser:Ljava/text/DateFormat;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final experimentId:Ljava/lang/String;

.field private final experimentStartTime:Ljava/util/Date;

.field private final timeToLiveInMillis:J

.field private final triggerEventName:Ljava/lang/String;

.field private final triggerTimeoutInMillis:J

.field private final variantId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "triggerTimeoutMillis"

    .line 3
    .line 4
    const-string v1, "variantId"

    .line 5
    .line 6
    const-string v2, "experimentId"

    .line 7
    .line 8
    const-string v3, "experimentStartTime"

    .line 9
    .line 10
    const-string v4, "timeToLiveMillis"

    .line 11
    .line 12
    .line 13
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/google/firebase/abt/b;->ALL_REQUIRED_KEYS:[Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 21
    .line 22
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 26
    .line 27
    sput-object v0, Lcom/google/firebase/abt/b;->protoTimestampStringParser:Ljava/text/DateFormat;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/abt/b;->experimentId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/abt/b;->variantId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/firebase/abt/b;->triggerEventName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/firebase/abt/b;->experimentStartTime:Ljava/util/Date;

    .line 12
    .line 13
    iput-wide p5, p0, Lcom/google/firebase/abt/b;->triggerTimeoutInMillis:J

    .line 14
    .line 15
    iput-wide p7, p0, Lcom/google/firebase/abt/b;->timeToLiveInMillis:J

    .line 16
    return-void
.end method

.method static a(Lcom/google/firebase/analytics/connector/a$c;)Lcom/google/firebase/abt/b;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/a$c;->triggerEventName:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    :goto_0
    move-object v4, v0

    .line 6
    goto :goto_1

    .line 7
    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :goto_1
    new-instance v0, Lcom/google/firebase/abt/b;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/a$c;->name:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->value:Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    new-instance v5, Ljava/util/Date;

    .line 22
    .line 23
    iget-wide v6, p0, Lcom/google/firebase/analytics/connector/a$c;->creationTimestamp:J

    .line 24
    .line 25
    .line 26
    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 27
    .line 28
    iget-wide v6, p0, Lcom/google/firebase/analytics/connector/a$c;->triggerTimeout:J

    .line 29
    .line 30
    iget-wide v8, p0, Lcom/google/firebase/analytics/connector/a$c;->timeToLive:J

    .line 31
    move-object v1, v0

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/abt/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V

    .line 35
    return-object v0
.end method

.method static b(Ljava/util/Map;)Lcom/google/firebase/abt/b;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/abt/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/a;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "triggerEvent"

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/google/firebase/abt/b;->g(Ljava/util/Map;)V

    .line 6
    .line 7
    :try_start_0
    sget-object v1, Lcom/google/firebase/abt/b;->protoTimestampStringParser:Ljava/text/DateFormat;

    .line 8
    .line 9
    const-string v2, "experimentStartTime"

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 19
    move-result-object v7

    .line 20
    .line 21
    const-string v1, "triggerTimeoutMillis"

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    move-result-wide v8

    .line 32
    .line 33
    const-string v1, "timeToLiveMillis"

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 43
    move-result-wide v10

    .line 44
    .line 45
    new-instance v1, Lcom/google/firebase/abt/b;

    .line 46
    .line 47
    const-string v2, "experimentId"

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    move-object v4, v2

    .line 53
    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, "variantId"

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    move-object v5, v2

    .line 62
    .line 63
    check-cast v5, Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 67
    move-result v2

    .line 68
    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    check-cast p0, Ljava/lang/String;

    .line 76
    :goto_0
    move-object v6, p0

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto :goto_2

    .line 80
    :catch_1
    move-exception p0

    .line 81
    goto :goto_3

    .line 82
    .line 83
    :cond_0
    const-string p0, ""

    .line 84
    goto :goto_0

    .line 85
    :goto_1
    move-object v3, v1

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v3 .. v11}, Lcom/google/firebase/abt/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-object v1

    .line 90
    .line 91
    :goto_2
    new-instance v0, Lcom/google/firebase/abt/a;

    .line 92
    .line 93
    const-string v1, "Could not process experiment: one of the durations could not be converted into a long."

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v1, p0}, Lcom/google/firebase/abt/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 97
    throw v0

    .line 98
    .line 99
    :goto_3
    new-instance v0, Lcom/google/firebase/abt/a;

    .line 100
    .line 101
    const-string v1, "Could not process experiment: parsing experiment start time failed."

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v1, p0}, Lcom/google/firebase/abt/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 105
    throw v0
.end method

.method private static g(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/a;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/google/firebase/abt/b;->ALL_REQUIRED_KEYS:[Ljava/lang/String;

    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    .line 12
    :goto_0
    if-ge v4, v2, :cond_1

    .line 13
    .line 14
    aget-object v5, v1, v4

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result v6

    .line 19
    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result p0

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    return-void

    .line 34
    .line 35
    :cond_2
    new-instance p0, Lcom/google/firebase/abt/a;

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v0, v1, v3

    .line 41
    .line 42
    const-string v0, "The following keys are missing from the experiment info map: %s"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/google/firebase/abt/a;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0
.end method


# virtual methods
.method c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/abt/b;->experimentId:Ljava/lang/String;

    return-object v0
.end method

.method d()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/abt/b;->experimentStartTime:Ljava/util/Date;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/abt/b;->variantId:Ljava/lang/String;

    return-object v0
.end method

.method f(Ljava/lang/String;)Lcom/google/firebase/analytics/connector/a$c;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/analytics/connector/a$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/a$c;-><init>()V

    .line 6
    .line 7
    iput-object p1, v0, Lcom/google/firebase/analytics/connector/a$c;->origin:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/abt/b;->d()J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    iput-wide v1, v0, Lcom/google/firebase/analytics/connector/a$c;->creationTimestamp:J

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/firebase/abt/b;->experimentId:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, v0, Lcom/google/firebase/analytics/connector/a$c;->name:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/firebase/abt/b;->variantId:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, v0, Lcom/google/firebase/analytics/connector/a$c;->value:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/firebase/abt/b;->triggerEventName:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    const/4 p1, 0x0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/abt/b;->triggerEventName:Ljava/lang/String;

    .line 34
    .line 35
    :goto_0
    iput-object p1, v0, Lcom/google/firebase/analytics/connector/a$c;->triggerEventName:Ljava/lang/String;

    .line 36
    .line 37
    iget-wide v1, p0, Lcom/google/firebase/abt/b;->triggerTimeoutInMillis:J

    .line 38
    .line 39
    iput-wide v1, v0, Lcom/google/firebase/analytics/connector/a$c;->triggerTimeout:J

    .line 40
    .line 41
    iget-wide v1, p0, Lcom/google/firebase/abt/b;->timeToLiveInMillis:J

    .line 42
    .line 43
    iput-wide v1, v0, Lcom/google/firebase/analytics/connector/a$c;->timeToLive:J

    .line 44
    return-object v0
.end method
