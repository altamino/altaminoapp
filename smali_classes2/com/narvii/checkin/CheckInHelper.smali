.class public Lcom/narvii/checkin/CheckInHelper;
.super Ljava/lang/Object;
.source "CheckInHelper.java"


# instance fields
.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field nvContext:Lcom/narvii/app/NVContext;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 39
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/checkin/CheckInHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method private static isBitSet(BI)Ljava/lang/Boolean;
    .locals 1

    rsub-int/lit8 p1, p1, 0x7

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFixedStartTime(Lcom/narvii/model/CheckInHistory;I)J
    .locals 5

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 139
    iget-wide v1, p1, Lcom/narvii/model/CheckInHistory;->stopTime:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    add-int/lit8 p2, p2, -0x1

    neg-int p1, p2

    const/4 p2, 0x6

    .line 140
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->add(II)V

    .line 141
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    return-wide p1
.end method

.method public getHistoryRequest(IJ)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 246
    div-long/2addr p2, v0

    add-int/lit8 p1, p1, -0x1

    int-to-long v0, p1

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    sub-long v0, p2, v0

    .line 247
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v2, "/check-in/history"

    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "startTime"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "stopTime"

    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getStreakLostList(Lcom/narvii/model/CheckInHistory;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/CheckInHistory;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/checkin/CheckInHelper;->parseCheckInHistory(Lcom/narvii/model/CheckInHistory;)[Z

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 205
    :cond_1
    iget-boolean v2, p1, Lcom/narvii/model/CheckInHistory;->hasAnyCheckIn:Z

    if-nez v2, :cond_2

    return-object v0

    .line 209
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 211
    iget-wide v3, p1, Lcom/narvii/model/CheckInHistory;->joinedTime:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 212
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 213
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 214
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 215
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 217
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    array-length v5, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x7

    const/4 v6, -0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-le v3, v5, :cond_6

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 219
    array-length v6, v1

    invoke-virtual {p0, p1, v6}, Lcom/narvii/checkin/CheckInHelper;->getFixedStartTime(Lcom/narvii/model/CheckInHistory;I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x6

    .line 220
    invoke-virtual {v5, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 222
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 226
    :cond_3
    aget-boolean v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    .line 227
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 230
    :cond_4
    array-length v5, v1

    sub-int/2addr v5, v4

    if-ne v3, v5, :cond_5

    const/4 v5, 0x4

    .line 231
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 234
    :cond_5
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 235
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-object v0
.end method

.method public getStreakRepairCellList(Lcom/narvii/model/CheckInHistory;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/CheckInHistory;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/checkin/CheckInHelper;->parseCheckInHistory(Lcom/narvii/model/CheckInHistory;)[Z

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 160
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 162
    iget-wide v3, p1, Lcom/narvii/model/CheckInHistory;->joinedTime:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 163
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 164
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 165
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 166
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 168
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x7

    const/4 v5, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-le v3, v4, :cond_5

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 170
    array-length v5, v1

    invoke-virtual {p0, p1, v5}, Lcom/narvii/checkin/CheckInHelper;->getFixedStartTime(Lcom/narvii/model/CheckInHistory;I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v5, 0x6

    .line 171
    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 173
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 177
    :cond_2
    aget-boolean v4, v1, v3

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 181
    :cond_3
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_4

    const/4 v4, 0x4

    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public parseCheckInHistory(Lcom/narvii/model/CheckInHistory;)[Z
    .locals 1

    const/4 v0, -0x1

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/narvii/checkin/CheckInHelper;->parseCheckInHistory(Lcom/narvii/model/CheckInHistory;I)[Z

    move-result-object p1

    return-object p1
.end method

.method public parseCheckInHistory(Lcom/narvii/model/CheckInHistory;I)[Z
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x1

    .line 104
    iget-wide v2, p1, Lcom/narvii/model/CheckInHistory;->stopTime:J

    iget-wide v4, p1, Lcom/narvii/model/CheckInHistory;->startTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    add-long/2addr v2, v0

    long-to-int v0, v2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    if-eq p2, v0, :cond_2

    .line 109
    sget-boolean v1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/narvii/model/CheckInHistory;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/narvii/model/CheckInHistory;->stopTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "days"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_2
    :goto_0
    new-array v0, p2, [Z

    .line 116
    iget-object v1, p1, Lcom/narvii/model/CheckInHistory;->history:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 117
    iget-object v1, p1, Lcom/narvii/model/CheckInHistory;->history:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 118
    iget-wide v3, p1, Lcom/narvii/model/CheckInHistory;->startTime:J

    .line 119
    iget-wide v5, p1, Lcom/narvii/model/CheckInHistory;->stopTime:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_5

    .line 122
    array-length p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, p1, :cond_5

    aget-byte v5, v1, v3

    move v6, v4

    const/4 v4, 0x0

    :goto_2
    const/4 v7, 0x7

    if-gt v4, v7, :cond_4

    if-ne v6, p2, :cond_3

    goto :goto_3

    .line 127
    :cond_3
    invoke-static {v5, v4}, Lcom/narvii/checkin/CheckInHelper;->isBitSet(BI)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;)Z
    .locals 1

    const/4 v0, -0x1

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/narvii/checkin/CheckInHelper;->shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;I)Z

    move-result p1

    return p1
.end method

.method public shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/narvii/checkin/CheckInHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 55
    :cond_1
    iget-boolean v1, p1, Lcom/narvii/model/CheckInHistory;->hasAnyCheckIn:Z

    if-nez v1, :cond_2

    return v0

    .line 59
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInHelper;->parseCheckInHistory(Lcom/narvii/model/CheckInHistory;I)[Z

    move-result-object p2

    if-nez p2, :cond_3

    return v0

    .line 65
    :cond_3
    array-length v1, p2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    return v0

    .line 69
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 70
    iget-wide v2, p1, Lcom/narvii/model/CheckInHistory;->joinedTime:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    .line 71
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 72
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 73
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 74
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 77
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v3

    :goto_0
    array-length v4, p2

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x7

    const/4 v5, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-le v2, v4, :cond_7

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 79
    array-length v5, p2

    invoke-virtual {p0, p1, v5}, Lcom/narvii/checkin/CheckInHelper;->getFixedStartTime(Lcom/narvii/model/CheckInHistory;I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v5, 0x6

    .line 80
    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 83
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v0

    .line 87
    :cond_5
    aget-boolean v4, p2, v2

    if-nez v4, :cond_6

    return v3

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public startStreakRepairDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lcom/narvii/checkin/CheckInHelper;->startStreakRepairDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public startStreakRepairDialog(Lcom/narvii/util/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/achievements/StreakRepairDialog;",
            ">;)V"
        }
    .end annotation

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1}, Lcom/narvii/checkin/CheckInHelper;->getHistoryRequest(IJ)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 259
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v3, p0, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 260
    new-instance v3, Lcom/narvii/checkin/CheckInHelper$1;

    const-class v4, Lcom/narvii/checkin/CheckInHistoryResponse;

    invoke-direct {v3, p0, v4, v2, p1}, Lcom/narvii/checkin/CheckInHelper$1;-><init>(Lcom/narvii/checkin/CheckInHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v1, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 294
    new-instance p1, Lcom/narvii/checkin/CheckInHelper$2;

    invoke-direct {p1, p0, v1, v0}, Lcom/narvii/checkin/CheckInHelper$2;-><init>(Lcom/narvii/checkin/CheckInHelper;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 300
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method
