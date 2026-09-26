.class final Lcom/google/android/gms/internal/measurement/zzdz;
.super Lcom/google/android/gms/internal/measurement/zzdf$zza;
.source "SourceFile"


# instance fields
.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Z

.field private final synthetic zzf:Lcom/google/android/gms/internal/measurement/zzcs;

.field private final synthetic zzg:Lcom/google/android/gms/internal/measurement/zzdf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzcs;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzg:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzc:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzd:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zze:Z

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzf:Lcom/google/android/gms/internal/measurement/zzcs;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzdf$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzdf;)V

    .line 14
    return-void
.end method


# virtual methods
.method final zza()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzg:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Lcom/google/android/gms/internal/measurement/zzdf;)Lcom/google/android/gms/internal/measurement/zzcu;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcu;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzc:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzd:Ljava/lang/String;

    .line 17
    .line 18
    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zze:Z

    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzf:Lcom/google/android/gms/internal/measurement/zzcs;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcu;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzcv;)V

    .line 24
    return-void
.end method

.method protected final zzb()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzf:Lcom/google/android/gms/internal/measurement/zzcs;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcs;->zza(Landroid/os/Bundle;)V

    .line 7
    return-void
.end method
