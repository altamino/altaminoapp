.class final Lcom/google/android/gms/internal/ads/zzyr;
.super Lcom/google/android/gms/internal/ads/zzys;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzys<",
        "Lcom/google/android/gms/internal/ads/zzatt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzchu:Ljava/lang/String;

.field private final synthetic zzchv:Lcom/google/android/gms/internal/ads/zzamp;

.field private final synthetic zzchw:Lcom/google/android/gms/internal/ads/zzyh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzyh;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyr;->zzchw:Lcom/google/android/gms/internal/ads/zzyh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyr;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzyr;->zzchu:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzyr;->zzchv:Lcom/google/android/gms/internal/ads/zzamp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzys;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzzv;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyr;->val$context:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyr;->zzchu:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyr;->zzchv:Lcom/google/android/gms/internal/ads/zzamp;

    const v3, 0xe4e1c0

    .line 12
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzzv;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamp;I)Lcom/google/android/gms/internal/ads/zzatt;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzov()Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyr;->val$context:Landroid/content/Context;

    const-string v1, "rewarded"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzyh;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabv;-><init>()V

    return-object v0
.end method

.method public final synthetic zzow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyr;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyr;->zzchu:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyr;->zzchv:Lcom/google/android/gms/internal/ads/zzamp;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzauj;->zzd(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamp;)Lcom/google/android/gms/internal/ads/zzatt;

    move-result-object v0

    return-object v0
.end method
