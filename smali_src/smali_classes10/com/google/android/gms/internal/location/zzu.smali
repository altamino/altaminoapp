.class final Lcom/google/android/gms/internal/location/zzu;
.super Lcom/google/android/gms/internal/location/zzx;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic zzb:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzz;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzu;->zza:Lcom/google/android/gms/location/LocationRequest;

    .line 3
    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/location/zzu;->zzb:Landroid/app/PendingIntent;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/zzx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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
    new-instance v0, Lcom/google/android/gms/internal/location/zzy;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzu;->zza:Lcom/google/android/gms/location/LocationRequest;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzu;->zzb:Landroid/app/PendingIntent;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/location/zzaz;->zzE(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzai;)V

    .line 15
    return-void
.end method
