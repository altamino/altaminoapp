.class final synthetic Lcom/google/android/gms/location/zzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/zzan;


# instance fields
.field private final zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final zzb:Lcom/google/android/gms/location/zzap;

.field private final zzc:Lcom/google/android/gms/location/LocationCallback;

.field private final zzd:Lcom/google/android/gms/location/zzan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/location/zzap;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/location/zzan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/zzx;->zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p2, p0, Lcom/google/android/gms/location/zzx;->zzb:Lcom/google/android/gms/location/zzap;

    iput-object p3, p0, Lcom/google/android/gms/location/zzx;->zzc:Lcom/google/android/gms/location/LocationCallback;

    iput-object p4, p0, Lcom/google/android/gms/location/zzx;->zzd:Lcom/google/android/gms/location/zzan;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/location/zzx;->zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/location/zzx;->zzb:Lcom/google/android/gms/location/zzap;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/location/zzx;->zzc:Lcom/google/android/gms/location/LocationCallback;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/gms/location/zzx;->zzd:Lcom/google/android/gms/location/zzan;

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v4}, Lcom/google/android/gms/location/zzap;->zzb(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v3}, Lcom/google/android/gms/location/zzan;->zza()V

    .line 21
    :cond_0
    return-void
.end method
