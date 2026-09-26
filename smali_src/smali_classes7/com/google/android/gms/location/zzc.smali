.class final synthetic Lcom/google/android/gms/location/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:J

.field private final zzb:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(JLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/location/zzc;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/location/zzc;->zzb:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/location/zzc;->zza:J

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/location/zzc;->zzb:Landroid/app/PendingIntent;

    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/location/zzaz;

    .line 7
    .line 8
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/location/zzaz;->zzq(JLandroid/app/PendingIntent;)V

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 16
    return-void
.end method
