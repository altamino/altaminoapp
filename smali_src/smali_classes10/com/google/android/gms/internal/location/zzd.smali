.class final Lcom/google/android/gms/internal/location/zzd;
.super Lcom/google/android/gms/internal/location/zzf;
.source "SourceFile"


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzg;Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)V
    .locals 0

    .line 1
    .line 2
    iput-wide p3, p0, Lcom/google/android/gms/internal/location/zzd;->zza:J

    .line 3
    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/location/zzd;->zzb:Landroid/app/PendingIntent;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/location/zzaz;

    .line 3
    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/location/zzd;->zza:J

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzd;->zzb:Landroid/app/PendingIntent;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/location/zzaz;->zzq(JLandroid/app/PendingIntent;)V

    .line 10
    .line 11
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 15
    return-void
.end method
