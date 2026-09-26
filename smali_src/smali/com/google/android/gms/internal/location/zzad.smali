.class final Lcom/google/android/gms/internal/location/zzad;
.super Lcom/google/android/gms/internal/location/zzae;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/location/zzbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/zzbq;)V
    .locals 0

    .line 1
    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzad;->zza:Lcom/google/android/gms/location/zzbq;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/zzae;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1
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
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzad;->zza:Lcom/google/android/gms/location/zzbq;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/location/zzaz;->zzw(Lcom/google/android/gms/location/zzbq;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 8
    return-void
.end method
