.class final Lcom/google/android/gms/measurement/internal/zzkz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzki;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzkp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;Lcom/google/android/gms/measurement/internal/zzki;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzb:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzb:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkp;)Lcom/google/android/gms/measurement/internal/zzfk;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzb:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "Failed to send current screen to service"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzb:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    .line 45
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzc:J

    .line 51
    .line 52
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzb:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    .line 67
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzb:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze(Lcom/google/android/gms/measurement/internal/zzkp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 74
    .line 75
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzb:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    const-string v2, "Failed to send current screen to the service"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    return-void
.end method
