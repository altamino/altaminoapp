.class public final Lcom/google/firebase/analytics/connector/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/common/collect/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    .line 2
    const-string v0, "_in"

    .line 3
    .line 4
    const-string v1, "_xa"

    .line 5
    .line 6
    const-string v2, "_xu"

    .line 7
    .line 8
    const-string v3, "_aq"

    .line 9
    .line 10
    const-string v4, "_aa"

    .line 11
    .line 12
    const-string v5, "_ai"

    .line 13
    .line 14
    const-string v6, "_ac"

    .line 15
    .line 16
    const-string v7, "campaign_details"

    .line 17
    .line 18
    const-string v8, "_ug"

    .line 19
    .line 20
    const-string v9, "_iapx"

    .line 21
    .line 22
    const-string v10, "_exp_set"

    .line 23
    .line 24
    const-string v11, "_exp_clear"

    .line 25
    .line 26
    const-string v12, "_exp_activate"

    .line 27
    .line 28
    const-string v13, "_exp_timeout"

    .line 29
    .line 30
    const-string v14, "_exp_expire"

    .line 31
    .line 32
    .line 33
    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 35
    .line 36
    .line 37
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/d0;->C(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/d0;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->zza:Lcom/google/common/collect/d0;

    .line 41
    .line 42
    const-string v1, "_e"

    .line 43
    .line 44
    const-string v2, "_f"

    .line 45
    .line 46
    const-string v3, "_iap"

    .line 47
    .line 48
    const-string v4, "_s"

    .line 49
    .line 50
    const-string v5, "_au"

    .line 51
    .line 52
    const-string v6, "_ui"

    .line 53
    .line 54
    const-string v7, "_cd"

    .line 55
    .line 56
    .line 57
    invoke-static/range {v1 .. v7}, Lcom/google/common/collect/a0;->C(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->zzb:Lcom/google/common/collect/a0;

    .line 61
    .line 62
    const-string v0, "app"

    .line 63
    .line 64
    const-string v1, "am"

    .line 65
    .line 66
    const-string v2, "auto"

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/a0;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->zzc:Lcom/google/common/collect/a0;

    .line 73
    .line 74
    const-string v0, "_r"

    .line 75
    .line 76
    const-string v1, "_dbg"

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lcom/google/common/collect/a0;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->zzd:Lcom/google/common/collect/a0;

    .line 83
    .line 84
    new-instance v0, Lcom/google/common/collect/a0$a;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Lcom/google/common/collect/a0$a;-><init>()V

    .line 88
    .line 89
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzij;->zza:[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/google/common/collect/a0$a;->i([Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzij;->zzb:[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/google/common/collect/a0$a;->i([Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->zze:Lcom/google/common/collect/a0;

    .line 106
    .line 107
    const-string v0, "^_ltv_[A-Z]{3}$"

    .line 108
    .line 109
    const-string v1, "^_cc[1-5]{1}$"

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Lcom/google/common/collect/a0;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->zzf:Lcom/google/common/collect/a0;

    .line 116
    return-void
.end method

.method public static a(Lcom/google/firebase/analytics/connector/a$c;)Landroid/os/Bundle;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->origin:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v2, "origin"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->name:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const-string v2, "name"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->value:Ljava/lang/Object;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 31
    .line 32
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->triggerEventName:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    const-string v2, "trigger_event_name"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    :cond_3
    const-string v1, "trigger_timeout"

    .line 42
    .line 43
    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/a$c;->triggerTimeout:J

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->timedOutEventName:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    const-string v2, "timed_out_event_name"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    :cond_4
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->timedOutEventParams:Landroid/os/Bundle;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    const-string v2, "timed_out_event_params"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    .line 66
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->triggeredEventName:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    const-string v2, "triggered_event_name"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    :cond_6
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->triggeredEventParams:Landroid/os/Bundle;

    .line 76
    .line 77
    if-eqz v1, :cond_7

    .line 78
    .line 79
    const-string v2, "triggered_event_params"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    .line 84
    :cond_7
    const-string v1, "time_to_live"

    .line 85
    .line 86
    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/a$c;->timeToLive:J

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 90
    .line 91
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->expiredEventName:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v1, :cond_8

    .line 94
    .line 95
    const-string v2, "expired_event_name"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    :cond_8
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->expiredEventParams:Landroid/os/Bundle;

    .line 101
    .line 102
    if-eqz v1, :cond_9

    .line 103
    .line 104
    const-string v2, "expired_event_params"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    .line 109
    :cond_9
    const-string v1, "creation_timestamp"

    .line 110
    .line 111
    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/a$c;->creationTimestamp:J

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 115
    .line 116
    const-string v1, "active"

    .line 117
    .line 118
    iget-boolean v2, p0, Lcom/google/firebase/analytics/connector/a$c;->active:Z

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    .line 123
    const-string v1, "triggered_timestamp"

    .line 124
    .line 125
    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/a$c;->triggeredTimestamp:J

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 129
    return-object v0
.end method

.method public static b(Landroid/os/Bundle;)Lcom/google/firebase/analytics/connector/a$c;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v0, Lcom/google/firebase/analytics/connector/a$c;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/a$c;-><init>()V

    .line 9
    .line 10
    const-string v1, "origin"

    .line 11
    .line 12
    const-class v2, Ljava/lang/String;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/google/firebase/analytics/connector/a$c;->origin:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "name"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    iput-object v1, v0, Lcom/google/firebase/analytics/connector/a$c;->name:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "value"

    .line 46
    .line 47
    const-class v4, Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    iput-object v1, v0, Lcom/google/firebase/analytics/connector/a$c;->value:Ljava/lang/Object;

    .line 54
    .line 55
    const-string v1, "trigger_event_name"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    iput-object v1, v0, Lcom/google/firebase/analytics/connector/a$c;->triggerEventName:Ljava/lang/String;

    .line 64
    .line 65
    const-wide/16 v4, 0x0

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    const-string v4, "trigger_timeout"

    .line 72
    .line 73
    const-class v5, Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    check-cast v4, Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 83
    move-result-wide v6

    .line 84
    .line 85
    iput-wide v6, v0, Lcom/google/firebase/analytics/connector/a$c;->triggerTimeout:J

    .line 86
    .line 87
    const-string v4, "timed_out_event_name"

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    check-cast v4, Ljava/lang/String;

    .line 94
    .line 95
    iput-object v4, v0, Lcom/google/firebase/analytics/connector/a$c;->timedOutEventName:Ljava/lang/String;

    .line 96
    .line 97
    const-string v4, "timed_out_event_params"

    .line 98
    .line 99
    const-class v6, Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    invoke-static {p0, v4, v6, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    check-cast v4, Landroid/os/Bundle;

    .line 106
    .line 107
    iput-object v4, v0, Lcom/google/firebase/analytics/connector/a$c;->timedOutEventParams:Landroid/os/Bundle;

    .line 108
    .line 109
    const-string v4, "triggered_event_name"

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    check-cast v4, Ljava/lang/String;

    .line 116
    .line 117
    iput-object v4, v0, Lcom/google/firebase/analytics/connector/a$c;->triggeredEventName:Ljava/lang/String;

    .line 118
    .line 119
    const-string v4, "triggered_event_params"

    .line 120
    .line 121
    .line 122
    invoke-static {p0, v4, v6, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    check-cast v4, Landroid/os/Bundle;

    .line 126
    .line 127
    iput-object v4, v0, Lcom/google/firebase/analytics/connector/a$c;->triggeredEventParams:Landroid/os/Bundle;

    .line 128
    .line 129
    const-string v4, "time_to_live"

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-result-object v4

    .line 134
    .line 135
    check-cast v4, Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 139
    move-result-wide v7

    .line 140
    .line 141
    iput-wide v7, v0, Lcom/google/firebase/analytics/connector/a$c;->timeToLive:J

    .line 142
    .line 143
    const-string v4, "expired_event_name"

    .line 144
    .line 145
    .line 146
    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    check-cast v2, Ljava/lang/String;

    .line 150
    .line 151
    iput-object v2, v0, Lcom/google/firebase/analytics/connector/a$c;->expiredEventName:Ljava/lang/String;

    .line 152
    .line 153
    const-string v2, "expired_event_params"

    .line 154
    .line 155
    .line 156
    invoke-static {p0, v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    check-cast v2, Landroid/os/Bundle;

    .line 160
    .line 161
    iput-object v2, v0, Lcom/google/firebase/analytics/connector/a$c;->expiredEventParams:Landroid/os/Bundle;

    .line 162
    .line 163
    const-class v2, Ljava/lang/Boolean;

    .line 164
    .line 165
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 166
    .line 167
    const-string v4, "active"

    .line 168
    .line 169
    .line 170
    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    check-cast v2, Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    move-result v2

    .line 178
    .line 179
    iput-boolean v2, v0, Lcom/google/firebase/analytics/connector/a$c;->active:Z

    .line 180
    .line 181
    const-string v2, "creation_timestamp"

    .line 182
    .line 183
    .line 184
    invoke-static {p0, v2, v5, v1}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-result-object v2

    .line 186
    .line 187
    check-cast v2, Ljava/lang/Long;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 191
    move-result-wide v2

    .line 192
    .line 193
    iput-wide v2, v0, Lcom/google/firebase/analytics/connector/a$c;->creationTimestamp:J

    .line 194
    .line 195
    const-string v2, "triggered_timestamp"

    .line 196
    .line 197
    .line 198
    invoke-static {p0, v2, v5, v1}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    move-result-object p0

    .line 200
    .line 201
    check-cast p0, Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 205
    move-result-wide v1

    .line 206
    .line 207
    iput-wide v1, v0, Lcom/google/firebase/analytics/connector/a$c;->triggeredTimestamp:J

    .line 208
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "clx"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string p0, "_ae"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-string p0, "_r"

    .line 19
    .line 20
    const-wide/16 v0, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 24
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/a;->zzb:Lcom/google/common/collect/a0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/google/common/collect/a0;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/a;->zzd:Lcom/google/common/collect/a0;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 18
    move-result v1

    .line 19
    move v2, v0

    .line 20
    .line 21
    :cond_1
    if-ge v2, v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    return v0

    .line 37
    :cond_2
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    .line 2
    const-string v0, "_ce1"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const-string v1, "fcm"

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_7

    .line 13
    .line 14
    const-string v0, "_ce2"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    const-string v0, "_ln"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    const-string p1, "fiam"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return v3

    .line 46
    :cond_2
    :goto_0
    return v2

    .line 47
    .line 48
    :cond_3
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/a;->zze:Lcom/google/common/collect/a0;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/common/collect/a0;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result p0

    .line 53
    .line 54
    if-eqz p0, :cond_4

    .line 55
    return v3

    .line 56
    .line 57
    :cond_4
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/a;->zzf:Lcom/google/common/collect/a0;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 61
    move-result v0

    .line 62
    move v1, v3

    .line 63
    .line 64
    :cond_5
    if-ge v1, v0, :cond_6

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    check-cast v4, Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 76
    move-result v4

    .line 77
    .line 78
    if-eqz v4, :cond_5

    .line 79
    return v3

    .line 80
    :cond_6
    return v2

    .line 81
    .line 82
    .line 83
    :cond_7
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-nez p1, :cond_9

    .line 87
    .line 88
    const-string p1, "frc"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result p0

    .line 93
    .line 94
    if-eqz p0, :cond_8

    .line 95
    goto :goto_2

    .line 96
    :cond_8
    return v3

    .line 97
    :cond_9
    :goto_2
    return v2
.end method

.method public static g(Lcom/google/firebase/analytics/connector/a$c;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/a$c;->origin:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_b

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/a$c;->value:Ljava/lang/Object;

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkf;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    return v0

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-static {v1}, Lcom/google/firebase/analytics/connector/internal/a;->j(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    return v0

    .line 34
    .line 35
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/a$c;->name:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/google/firebase/analytics/connector/internal/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-nez v2, :cond_4

    .line 42
    return v0

    .line 43
    .line 44
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/a$c;->expiredEventName:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v2, :cond_6

    .line 47
    .line 48
    iget-object v3, p0, Lcom/google/firebase/analytics/connector/a$c;->expiredEventParams:Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/a;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-nez v2, :cond_5

    .line 55
    return v0

    .line 56
    .line 57
    :cond_5
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/a$c;->expiredEventName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/google/firebase/analytics/connector/a$c;->expiredEventParams:Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2, v3}, Lcom/google/firebase/analytics/connector/internal/a;->h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 63
    move-result v2

    .line 64
    .line 65
    if-nez v2, :cond_6

    .line 66
    return v0

    .line 67
    .line 68
    :cond_6
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/a$c;->triggeredEventName:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v2, :cond_8

    .line 71
    .line 72
    iget-object v3, p0, Lcom/google/firebase/analytics/connector/a$c;->triggeredEventParams:Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/a;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-nez v2, :cond_7

    .line 79
    return v0

    .line 80
    .line 81
    :cond_7
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/a$c;->triggeredEventName:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/google/firebase/analytics/connector/a$c;->triggeredEventParams:Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2, v3}, Lcom/google/firebase/analytics/connector/internal/a;->h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 87
    move-result v2

    .line 88
    .line 89
    if-nez v2, :cond_8

    .line 90
    return v0

    .line 91
    .line 92
    :cond_8
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/a$c;->timedOutEventName:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v2, :cond_a

    .line 95
    .line 96
    iget-object v3, p0, Lcom/google/firebase/analytics/connector/a$c;->timedOutEventParams:Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/a;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 100
    move-result v2

    .line 101
    .line 102
    if-nez v2, :cond_9

    .line 103
    return v0

    .line 104
    .line 105
    :cond_9
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/a$c;->timedOutEventName:Ljava/lang/String;

    .line 106
    .line 107
    iget-object p0, p0, Lcom/google/firebase/analytics/connector/a$c;->timedOutEventParams:Landroid/os/Bundle;

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v2, p0}, Lcom/google/firebase/analytics/connector/internal/a;->h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 111
    move-result p0

    .line 112
    .line 113
    if-nez p0, :cond_a

    .line 114
    return v0

    .line 115
    :cond_a
    const/4 p0, 0x1

    .line 116
    return p0

    .line 117
    :cond_b
    :goto_0
    return v0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    .line 2
    const-string v0, "_cmp"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/a;->j(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_1
    if-nez p2, :cond_2

    .line 21
    return v1

    .line 22
    .line 23
    :cond_2
    sget-object p1, Lcom/google/firebase/analytics/connector/internal/a;->zzd:Lcom/google/common/collect/a0;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 27
    move-result v2

    .line 28
    move v3, v1

    .line 29
    .line 30
    :cond_3
    if-ge v3, v2, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 42
    move-result v4

    .line 43
    .line 44
    if-eqz v4, :cond_3

    .line 45
    return v1

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 52
    move-result p1

    .line 53
    const/4 v2, -0x1

    .line 54
    .line 55
    .line 56
    sparse-switch p1, :sswitch_data_0

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :sswitch_0
    const-string p1, "fiam"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p0

    .line 64
    .line 65
    if-nez p0, :cond_5

    .line 66
    goto :goto_0

    .line 67
    :cond_5
    const/4 v2, 0x2

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :sswitch_1
    const-string p1, "fdl"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p0

    .line 75
    .line 76
    if-nez p0, :cond_6

    .line 77
    goto :goto_0

    .line 78
    :cond_6
    move v2, v0

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :sswitch_2
    const-string p1, "fcm"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result p0

    .line 86
    .line 87
    if-nez p0, :cond_7

    .line 88
    goto :goto_0

    .line 89
    :cond_7
    move v2, v1

    .line 90
    .line 91
    :goto_0
    const-string p0, "_cis"

    .line 92
    .line 93
    .line 94
    packed-switch v2, :pswitch_data_0

    .line 95
    return v1

    .line 96
    .line 97
    :pswitch_0
    const-string p1, "fiam_integration"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v0

    .line 102
    .line 103
    :pswitch_1
    const-string p1, "fdl_integration"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return v0

    .line 108
    .line 109
    :pswitch_2
    const-string p1, "fcm_integration"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return v0

    .line 114
    nop

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
    :sswitch_data_0
    .sparse-switch
        0x18b50 -> :sswitch_2
        0x18b6e -> :sswitch_1
        0x2ff42f -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/a;->zza:Lcom/google/common/collect/d0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/google/common/collect/y;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/a;->zzc:Lcom/google/common/collect/a0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/google/common/collect/a0;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
