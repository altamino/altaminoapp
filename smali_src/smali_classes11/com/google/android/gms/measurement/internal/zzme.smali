.class public final synthetic Lcom/google/android/gms/measurement/internal/zzme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzmb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzmb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzme;->zza:Lcom/google/android/gms/measurement/internal/zzmb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzme;->zza:Lcom/google/android/gms/measurement/internal/zzmb;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzmb;->zzc:Lcom/google/android/gms/measurement/internal/zzmc;

    .line 5
    .line 6
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzmb;->zza:J

    .line 7
    .line 8
    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzmb;->zzb:J

    .line 9
    .line 10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 14
    .line 15
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v4, "Application going to the background"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 29
    .line 30
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzn:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 37
    const/4 v4, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Z)V

    .line 41
    .line 42
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzlx;->zza(Z)V

    .line 46
    .line 47
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzu()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlx;->zzb:Lcom/google/android/gms/measurement/internal/zzmd;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzmd;->zzb(J)V

    .line 65
    .line 66
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 67
    const/4 v4, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v4, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzlx;->zza(ZZJ)Z

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpm;->zza()Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbi;->zzce:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 88
    move-result v0

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    const-string v1, "Application backgrounded at: timestamp_millis"

    .line 103
    .line 104
    .line 105
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-void

    .line 111
    .line 112
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()Lcom/google/android/gms/measurement/internal/zziq;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    const-string v3, "auto"

    .line 119
    .line 120
    const-string v4, "_ab"

    .line 121
    .line 122
    new-instance v7, Landroid/os/Bundle;

    .line 123
    .line 124
    .line 125
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 129
    return-void
.end method
