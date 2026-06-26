.class final Lcom/google/android/gms/internal/ads/zzyl;
.super Lcom/google/android/gms/internal/ads/zzys;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzys<",
        "Lcom/google/android/gms/internal/ads/zzzk;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzcht:Lcom/google/android/gms/internal/ads/zzyd;

.field private final synthetic zzchu:Ljava/lang/String;

.field private final synthetic zzchv:Lcom/google/android/gms/internal/ads/zzamp;

.field private final synthetic zzchw:Lcom/google/android/gms/internal/ads/zzyh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzyh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzchw:Lcom/google/android/gms/internal/ads/zzyh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyl;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzcht:Lcom/google/android/gms/internal/ads/zzyd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzchu:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzchv:Lcom/google/android/gms/internal/ads/zzamp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzys;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzzv;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyl;->val$context:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzcht:Lcom/google/android/gms/internal/ads/zzyd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzchu:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzchv:Lcom/google/android/gms/internal/ads/zzamp;

    const v6, 0xe4e1c0

    move-object v1, p1

    .line 12
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzzv;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamp;I)Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzov()Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyl;->val$context:Landroid/content/Context;

    const-string v1, "interstitial"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzyh;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabp;-><init>()V

    return-object v0
.end method

.method public final synthetic zzow()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzchw:Lcom/google/android/gms/internal/ads/zzyh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzyh;->zza(Lcom/google/android/gms/internal/ads/zzyh;)Lcom/google/android/gms/internal/ads/zzxx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyl;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzcht:Lcom/google/android/gms/internal/ads/zzyd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzchu:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzchv:Lcom/google/android/gms/internal/ads/zzamp;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzxx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamp;I)Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object v0

    return-object v0
.end method
