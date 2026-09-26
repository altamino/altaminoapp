.class final Lcom/google/android/gms/internal/measurement/zzeb;
.super Lcom/google/android/gms/internal/measurement/zzdf$zza;
.source "SourceFile"


# instance fields
.field private final synthetic zzc:Landroid/os/Bundle;

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzcs;

.field private final synthetic zze:Lcom/google/android/gms/internal/measurement/zzdf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdf;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcs;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeb;->zze:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzeb;->zzc:Landroid/os/Bundle;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzeb;->zzd:Lcom/google/android/gms/internal/measurement/zzcs;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzdf$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzdf;)V

    .line 10
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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeb;->zze:Lcom/google/android/gms/internal/measurement/zzdf;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeb;->zzc:Landroid/os/Bundle;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeb;->zzd:Lcom/google/android/gms/internal/measurement/zzcs;

    .line 17
    .line 18
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzdf$zza;->zza:J

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcu;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcv;J)V

    .line 22
    return-void
.end method

.method protected final zzb()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeb;->zzd:Lcom/google/android/gms/internal/measurement/zzcs;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcs;->zza(Landroid/os/Bundle;)V

    .line 7
    return-void
.end method
