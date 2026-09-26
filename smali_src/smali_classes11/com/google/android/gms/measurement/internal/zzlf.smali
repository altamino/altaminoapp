.class final Lcom/google/android/gms/measurement/internal/zzlf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzbg;

.field private final synthetic zze:Ljava/lang/String;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzkp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;ZLcom/google/android/gms/measurement/internal/zzo;ZLcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzf:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zza:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzc:Z

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzd:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zze:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzf:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkp;)Lcom/google/android/gms/measurement/internal/zzfk;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzf:Lcom/google/android/gms/measurement/internal/zzkp;

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
    const-string v1, "Discarding data. Failed to send event to service"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zza:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzf:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 36
    .line 37
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzc:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    const/4 v2, 0x0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzd:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 44
    .line 45
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zze:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzd:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 70
    goto :goto_2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzd:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zze:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzf:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzx()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzf:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    const-string v2, "Failed to send event to the service"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    .line 107
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzf:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 111
    return-void
.end method
