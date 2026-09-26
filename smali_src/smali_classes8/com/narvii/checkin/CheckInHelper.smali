.class public Lcom/narvii/checkin/CheckInHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field nvContext:Lcom/narvii/app/NVContext;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/checkin/CheckInHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 13
    return-void
.end method

.method private static isBitSet(BI)Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    rsub-int/lit8 p1, p1, 0x7

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    shl-int p1, v0, p1

    .line 6
    and-int/2addr p0, p1

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public getFixedStartTime(Lcom/narvii/model/CheckInHistory;I)J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-wide v1, p1, Lcom/narvii/model/CheckInHistory;->stopTime:J

    .line 7
    .line 8
    const-wide/16 v3, 0x3e8

    .line 9
    mul-long/2addr v1, v3

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    .line 14
    add-int/lit8 p2, p2, -0x1

    .line 15
    neg-int p1, p2

    .line 16
    const/4 p2, 0x6

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->add(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method public getHistoryRequest(IJ)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p2, v0

    .line 4
    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    int-to-long v0, p1

    .line 7
    .line 8
    .line 9
    const-wide/32 v2, 0x15180

    .line 10
    mul-long/2addr v0, v2

    .line 11
    .line 12
    sub-long v0, p2, v0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v2, "/check-in/history"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v2, "startTime"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "timezone"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string v0, "stopTime"

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 60
    move-result-object p1

    .line 61
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/checkin/CheckInHelper;->parseCheckInHistory(Lcom/narvii/model/CheckInHistory;)[Z

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_1
    iget-boolean v2, p1, Lcom/narvii/model/CheckInHistory;->hasAnyCheckIn:Z

    .line 14
    .line 15
    if-nez v2, :cond_2

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    iget-wide v3, p1, Lcom/narvii/model/CheckInHistory;->joinedTime:J

    .line 28
    .line 29
    const-wide/16 v5, 0x3e8

    .line 30
    mul-long/2addr v3, v5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 34
    .line 35
    const/16 v3, 0xb

    .line 36
    const/4 v4, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 40
    .line 41
    const/16 v3, 0xc

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 45
    .line 46
    const/16 v3, 0xd

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 50
    .line 51
    const/16 v3, 0xe

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 55
    array-length v3, v1

    .line 56
    const/4 v4, 0x1

    .line 57
    sub-int/2addr v3, v4

    .line 58
    :goto_0
    array-length v5, v1

    .line 59
    .line 60
    add-int/lit8 v5, v5, -0x8

    .line 61
    const/4 v6, -0x1

    .line 62
    .line 63
    .line 64
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result v5

    .line 66
    .line 67
    if-le v3, v5, :cond_6

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 71
    move-result-object v5

    .line 72
    array-length v6, v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1, v6}, Lcom/narvii/checkin/CheckInHelper;->getFixedStartTime(Lcom/narvii/model/CheckInHistory;I)J

    .line 76
    move-result-wide v6

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 80
    const/4 v6, 0x6

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 87
    move-result v5

    .line 88
    .line 89
    if-eqz v5, :cond_3

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_3
    aget-boolean v5, v1, v3

    .line 93
    .line 94
    if-eqz v5, :cond_4

    .line 95
    const/4 v5, 0x2

    .line 96
    .line 97
    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    array-length v5, v1

    .line 105
    sub-int/2addr v5, v4

    .line 106
    .line 107
    if-ne v3, v5, :cond_5

    .line 108
    const/4 v5, 0x4

    .line 109
    .line 110
    .line 111
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v5

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 116
    .line 117
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 118
    goto :goto_0

    .line 119
    .line 120
    :cond_5
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 124
    move-result p1

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 134
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/checkin/CheckInHelper;->parseCheckInHistory(Lcom/narvii/model/CheckInHistory;)[Z

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    iget-wide v3, p1, Lcom/narvii/model/CheckInHistory;->joinedTime:J

    .line 23
    .line 24
    const-wide/16 v5, 0x3e8

    .line 25
    mul-long/2addr v3, v5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 29
    .line 30
    const/16 v3, 0xb

    .line 31
    const/4 v4, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 35
    .line 36
    const/16 v3, 0xc

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 40
    .line 41
    const/16 v3, 0xd

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 45
    .line 46
    const/16 v3, 0xe

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 50
    array-length v3, v1

    .line 51
    .line 52
    add-int/lit8 v3, v3, -0x1

    .line 53
    :goto_0
    array-length v4, v1

    .line 54
    .line 55
    add-int/lit8 v4, v4, -0x8

    .line 56
    const/4 v5, -0x1

    .line 57
    .line 58
    .line 59
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result v4

    .line 61
    .line 62
    if-le v3, v4, :cond_5

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 66
    move-result-object v4

    .line 67
    array-length v5, v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, v5}, Lcom/narvii/checkin/CheckInHelper;->getFixedStartTime(Lcom/narvii/model/CheckInHistory;I)J

    .line 71
    move-result-wide v5

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 75
    const/4 v5, 0x6

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 82
    move-result v4

    .line 83
    .line 84
    if-eqz v4, :cond_2

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_2
    aget-boolean v4, v1, v3

    .line 88
    .line 89
    if-eqz v4, :cond_3

    .line 90
    const/4 v4, 0x2

    .line 91
    .line 92
    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    array-length v4, v1

    .line 100
    .line 101
    add-int/lit8 v4, v4, -0x1

    .line 102
    .line 103
    if-ne v3, v4, :cond_4

    .line 104
    const/4 v4, 0x4

    .line 105
    .line 106
    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v4

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    const/4 v4, 0x3

    .line 114
    .line 115
    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 121
    .line 122
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_5
    :goto_2
    return-object v0
.end method

.method public parseCheckInHistory(Lcom/narvii/model/CheckInHistory;)[Z
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/checkin/CheckInHelper;->parseCheckInHistory(Lcom/narvii/model/CheckInHistory;I)[Z

    move-result-object p1

    return-object p1
.end method

.method public parseCheckInHistory(Lcom/narvii/model/CheckInHistory;I)[Z
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-wide v0, p1, Lcom/narvii/model/CheckInHistory;->stopTime:J

    iget-wide v2, p1, Lcom/narvii/model/CheckInHistory;->startTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    if-eq p2, v0, :cond_2

    .line 3
    sget-boolean v1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 4
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

    .line 5
    :cond_2
    :goto_0
    new-array v0, p2, [Z

    .line 6
    iget-object v1, p1, Lcom/narvii/model/CheckInHistory;->history:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7
    iget-object v1, p1, Lcom/narvii/model/CheckInHistory;->history:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 8
    iget-wide v3, p1, Lcom/narvii/model/CheckInHistory;->startTime:J

    .line 9
    iget-wide v5, p1, Lcom/narvii/model/CheckInHistory;->stopTime:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_5

    .line 10
    array-length p1, v1

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, p1, :cond_5

    aget-byte v5, v1, v3

    move v6, v2

    :goto_2
    const/4 v7, 0x7

    if-gt v6, v7, :cond_4

    if-ne v4, p2, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    invoke-static {v5, v6}, Lcom/narvii/checkin/CheckInHelper;->isBitSet(BI)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;)Z
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/checkin/CheckInHelper;->shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;I)Z

    move-result p1

    return p1
.end method

.method public shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/narvii/checkin/CheckInHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 2
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-boolean v1, p1, Lcom/narvii/model/CheckInHistory;->hasAnyCheckIn:Z

    if-nez v1, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInHelper;->parseCheckInHistory(Lcom/narvii/model/CheckInHistory;I)[Z

    move-result-object p2

    if-nez p2, :cond_3

    return v0

    .line 5
    :cond_3
    array-length v1, p2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    return v0

    .line 6
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 7
    iget-wide v3, p1, Lcom/narvii/model/CheckInHistory;->joinedTime:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    .line 8
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 9
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 10
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 11
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 12
    array-length v3, p2

    sub-int/2addr v3, v2

    :goto_0
    array-length v2, p2

    add-int/lit8 v2, v2, -0x8

    const/4 v4, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v3, v2, :cond_7

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 14
    array-length v4, p2

    invoke-virtual {p0, p1, v4}, Lcom/narvii/checkin/CheckInHelper;->getFixedStartTime(Lcom/narvii/model/CheckInHistory;I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x6

    .line 15
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v0

    .line 17
    :cond_5
    aget-boolean v2, p2, v3

    if-nez v2, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public startStreakRepairDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 1
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

    const/4 v0, 0x7

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/checkin/CheckInHelper;->getHistoryRequest(IJ)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    .line 3
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 4
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v3, p0, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v3, Lcom/narvii/checkin/CheckInHelper$1;

    const-class v4, Lcom/narvii/checkin/CheckInHistoryResponse;

    invoke-direct {v3, p0, v4, v2, p1}, Lcom/narvii/checkin/CheckInHelper$1;-><init>(Lcom/narvii/checkin/CheckInHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v1, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 6
    new-instance p1, Lcom/narvii/checkin/CheckInHelper$2;

    invoke-direct {p1, p0, v1, v0}, Lcom/narvii/checkin/CheckInHelper$2;-><init>(Lcom/narvii/checkin/CheckInHelper;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method
