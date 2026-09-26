.class final Lcom/google/android/gms/measurement/internal/zzjl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/os/Bundle;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zziq;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjl;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjl;->zza:Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "creation_timestamp"

    .line 5
    .line 6
    const-string v2, "app_id"

    .line 7
    .line 8
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzjl;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    .line 9
    .line 10
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzjl;->zza:Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    const-string v5, "name"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    .line 28
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v7

    .line 30
    .line 31
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    const-string v2, "Conditional property not cleared since app measurement is disabled"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 51
    return-void

    .line 52
    .line 53
    :cond_0
    new-instance v12, Lcom/google/android/gms/measurement/internal/zznc;

    .line 54
    .line 55
    const-wide/16 v8, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    .line 58
    const-string v11, ""

    .line 59
    move-object v6, v12

    .line 60
    .line 61
    .line 62
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zznc;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    .line 66
    move-result-object v13

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v14

    .line 71
    .line 72
    const-string v5, "expired_event_name"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v15

    .line 77
    .line 78
    const-string v5, "expired_event_params"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 82
    move-result-object v16

    .line 83
    .line 84
    const-string v17, ""

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 88
    move-result-wide v18

    .line 89
    .line 90
    const/16 v20, 0x1

    .line 91
    .line 92
    const/16 v21, 0x1

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {v13 .. v21}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbg;

    .line 96
    move-result-object v18
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzad;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    .line 104
    const-string v6, ""

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 108
    move-result-wide v8

    .line 109
    .line 110
    const-string v1, "active"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 114
    move-result v10

    .line 115
    .line 116
    const-string v1, "trigger_event_name"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v11

    .line 121
    const/4 v1, 0x0

    .line 122
    .line 123
    const-string v2, "trigger_timeout"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 127
    move-result-wide v13

    .line 128
    const/4 v2, 0x0

    .line 129
    .line 130
    const-string v7, "time_to_live"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 134
    move-result-wide v16

    .line 135
    move-object v4, v15

    .line 136
    move-object v7, v12

    .line 137
    move-object v12, v1

    .line 138
    move-object v1, v15

    .line 139
    move-object v15, v2

    .line 140
    .line 141
    .line 142
    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznc;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzbg;JLcom/google/android/gms/measurement/internal/zzbg;JLcom/google/android/gms/measurement/internal/zzbg;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    .line 146
    move-result-object v2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    .line 150
    :catch_0
    return-void
.end method
