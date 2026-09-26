.class public Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/statistics/FirebaseLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirebaseTimeTrack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private lastResumeTime:J

.field spendTimePrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "stat_firebase"

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->spendTimePrefs:Landroid/content/SharedPreferences;

    .line 14
    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    iget-wide p1, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->lastResumeTime:J

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide p1

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->lastResumeTime:J

    .line 15
    sub-long/2addr p1, v2

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "time spend in current session "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    const-string v3, "FirebaseTimeTrack"

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->spendTimePrefs:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    const-string v3, "spendTime"

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->spendTimePrefs:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 52
    move-result-object v2

    .line 53
    add-long/2addr v0, p1

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    :cond_0
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->lastResumeTime:J

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->spendTimePrefs:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    const-string v0, "spendTime"

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "time spend before this session "

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    const-string v2, "FirebaseTimeTrack"

    .line 37
    .line 38
    .line 39
    invoke-static {v2, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-wide/32 v3, 0xea60

    .line 43
    div-long/2addr v0, v3

    .line 44
    .line 45
    const-wide/16 v3, 0x1e

    .line 46
    .line 47
    cmp-long p2, v0, v3

    .line 48
    const/4 v3, 0x1

    .line 49
    const/4 v4, 0x0

    .line 50
    .line 51
    if-lez p2, :cond_0

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->spendTimePrefs:Landroid/content/SharedPreferences;

    .line 54
    .line 55
    const-string v5, "spentTime30m"

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 59
    move-result p2

    .line 60
    .line 61
    if-nez p2, :cond_0

    .line 62
    .line 63
    .line 64
    const-string/jumbo p2, "user spends 30 minutes"

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p2, v4}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->spendTimePrefs:Landroid/content/SharedPreferences;

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v5}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_0
    const-wide/16 v5, 0x3c

    .line 87
    .line 88
    cmp-long p2, v0, v5

    .line 89
    .line 90
    if-lez p2, :cond_1

    .line 91
    .line 92
    iget-object p2, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->spendTimePrefs:Landroid/content/SharedPreferences;

    .line 93
    .line 94
    const-string v5, "spentTime1h"

    .line 95
    .line 96
    .line 97
    invoke-interface {p2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 98
    move-result p2

    .line 99
    .line 100
    if-nez p2, :cond_1

    .line 101
    .line 102
    .line 103
    const-string/jumbo p2, "user spends 1 hour"

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p2, v4}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->spendTimePrefs:Landroid/content/SharedPreferences;

    .line 109
    .line 110
    .line 111
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    .line 121
    .line 122
    invoke-static {v2, v5}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    goto :goto_0

    .line 124
    .line 125
    :cond_1
    const-wide/16 v5, 0xb4

    .line 126
    .line 127
    cmp-long p2, v0, v5

    .line 128
    .line 129
    if-lez p2, :cond_2

    .line 130
    .line 131
    iget-object p2, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->spendTimePrefs:Landroid/content/SharedPreferences;

    .line 132
    .line 133
    const-string v0, "spentTime3h"

    .line 134
    .line 135
    .line 136
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 137
    move-result p2

    .line 138
    .line 139
    if-nez p2, :cond_2

    .line 140
    .line 141
    .line 142
    const-string/jumbo p2, "user spends 3 hour"

    .line 143
    .line 144
    .line 145
    invoke-static {p1, p2, v4}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    iget-object p1, p0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;->spendTimePrefs:Landroid/content/SharedPreferences;

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    .line 161
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    :cond_2
    :goto_0
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-string p2, "prefs"

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/content/SharedPreferences;

    .line 13
    .line 14
    const-string v2, "firebaseZeroTime"

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 20
    move-result-wide v5

    .line 21
    .line 22
    const-string v7, "firstLaunchNotifyScheduleTime"

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 26
    move-result v7

    .line 27
    .line 28
    if-nez v7, :cond_0

    .line 29
    .line 30
    cmp-long v7, v5, v3

    .line 31
    .line 32
    if-nez v7, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_0
    cmp-long v2, v5, v3

    .line 48
    .line 49
    if-eqz v2, :cond_4

    .line 50
    sub-long/2addr v0, v5

    .line 51
    .line 52
    .line 53
    const-wide/32 v2, 0x5265c00

    .line 54
    div-long/2addr v0, v2

    .line 55
    .line 56
    const-wide/16 v2, 0x2

    .line 57
    .line 58
    cmp-long v2, v0, v2

    .line 59
    const/4 v3, 0x1

    .line 60
    const/4 v4, 0x0

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    const-string v2, "firebareFired2"

    .line 65
    .line 66
    .line 67
    invoke-interface {p2, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 68
    move-result v5

    .line 69
    .line 70
    if-nez v5, :cond_1

    .line 71
    .line 72
    const-string v5, "New Retention 2 Days"

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v5, v4}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 79
    move-result-object v5

    .line 80
    .line 81
    .line 82
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    .line 88
    :cond_1
    const-wide/16 v5, 0x3

    .line 89
    .line 90
    cmp-long v2, v0, v5

    .line 91
    .line 92
    if-nez v2, :cond_2

    .line 93
    .line 94
    const-string v2, "firebareFired3"

    .line 95
    .line 96
    .line 97
    invoke-interface {p2, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 98
    move-result v5

    .line 99
    .line 100
    if-nez v5, :cond_2

    .line 101
    .line 102
    const-string v5, "New Retention 3 Days"

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v5, v4}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    .line 112
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    .line 118
    :cond_2
    const-wide/16 v5, 0x7

    .line 119
    .line 120
    cmp-long v2, v0, v5

    .line 121
    .line 122
    if-nez v2, :cond_3

    .line 123
    .line 124
    const-string v2, "firebareFired7"

    .line 125
    .line 126
    .line 127
    invoke-interface {p2, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 128
    move-result v5

    .line 129
    .line 130
    if-nez v5, :cond_3

    .line 131
    .line 132
    const-string v5, "New Retention 7 Days"

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v5, v4}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 139
    move-result-object v5

    .line 140
    .line 141
    .line 142
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    .line 146
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    .line 148
    :cond_3
    const-wide/16 v5, 0x1e

    .line 149
    .line 150
    cmp-long v0, v0, v5

    .line 151
    .line 152
    if-nez v0, :cond_4

    .line 153
    .line 154
    const-string v0, "firebareFired30"

    .line 155
    .line 156
    .line 157
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 158
    move-result v1

    .line 159
    .line 160
    if-nez v1, :cond_4

    .line 161
    .line 162
    const-string v1, "New Retention 30 Days"

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v1, v4}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    move-result-object p1

    .line 174
    .line 175
    .line 176
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    :cond_4
    :goto_0
    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
