.class final synthetic Lcom/google/android/gms/location/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/android/gms/location/ActivityRecognitionClient;

.field private final zzb:Landroid/app/PendingIntent;

.field private final zzc:Lcom/google/android/gms/location/SleepSegmentRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/ActivityRecognitionClient;Landroid/app/PendingIntent;Lcom/google/android/gms/location/SleepSegmentRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/zzd;->zza:Lcom/google/android/gms/location/ActivityRecognitionClient;

    iput-object p2, p0, Lcom/google/android/gms/location/zzd;->zzb:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gms/location/zzd;->zzc:Lcom/google/android/gms/location/SleepSegmentRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/location/zzd;->zza:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/location/zzd;->zzb:Landroid/app/PendingIntent;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/location/zzd;->zzc:Lcom/google/android/gms/location/SleepSegmentRequest;

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/location/zzaz;

    .line 9
    .line 10
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    .line 12
    new-instance v3, Lcom/google/android/gms/location/zzi;

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v0, p2}, Lcom/google/android/gms/location/zzi;-><init>(Lcom/google/android/gms/location/ActivityRecognitionClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/google/android/gms/internal/location/zzam;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/location/zzam;->zzv(Landroid/app/PendingIntent;Lcom/google/android/gms/location/SleepSegmentRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    .line 25
    return-void
.end method
