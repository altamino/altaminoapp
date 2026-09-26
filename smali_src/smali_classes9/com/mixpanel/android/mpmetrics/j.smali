.class Lcom/mixpanel/android/mpmetrics/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEventsCounter:J

.field private mPeopleCounter:J

.field private final mRandom:Ljava/security/SecureRandom;

.field private mSessionID:Ljava/lang/String;

.field private mSessionStartEpoch:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/j;->d()V

    .line 7
    .line 8
    new-instance v0, Ljava/security/SecureRandom;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->mRandom:Ljava/security/SecureRandom;

    .line 14
    return-void
.end method

.method private c(Z)Lorg/json/JSONObject;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    :try_start_0
    const-string v1, "$mp_event_id"

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/j;->mRandom:Ljava/security/SecureRandom;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    .line 13
    move-result-wide v2

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    const-string v1, "$mp_session_id"

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/j;->mSessionID:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    const-string v1, "$mp_session_seq_id"

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/j;->mEventsCounter:J

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/j;->mPeopleCounter:J

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    .line 43
    const-string v1, "$mp_session_start_sec"

    .line 44
    .line 45
    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/j;->mSessionStartEpoch:J

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    .line 50
    const-wide/16 v1, 0x1

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-wide v3, p0, Lcom/mixpanel/android/mpmetrics/j;->mEventsCounter:J

    .line 55
    add-long/2addr v3, v1

    .line 56
    .line 57
    iput-wide v3, p0, Lcom/mixpanel/android/mpmetrics/j;->mEventsCounter:J

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_1
    iget-wide v3, p0, Lcom/mixpanel/android/mpmetrics/j;->mPeopleCounter:J

    .line 61
    add-long/2addr v3, v1

    .line 62
    .line 63
    iput-wide v3, p0, Lcom/mixpanel/android/mpmetrics/j;->mPeopleCounter:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :goto_1
    sget-object v1, Lcom/mixpanel/android/mpmetrics/b;->LOGTAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string v2, "Cannot create session metadata JSON object"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :goto_2
    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/j;->c(Z)Lorg/json/JSONObject;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/j;->c(Z)Lorg/json/JSONObject;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method protected d()V
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/j;->mEventsCounter:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/j;->mPeopleCounter:J

    .line 7
    .line 8
    new-instance v0, Ljava/security/SecureRandom;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->mSessionID:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    const-wide/16 v2, 0x3e8

    .line 28
    div-long/2addr v0, v2

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/j;->mSessionStartEpoch:J

    .line 31
    return-void
.end method
