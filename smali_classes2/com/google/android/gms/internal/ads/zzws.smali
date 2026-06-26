.class public final Lcom/google/android/gms/internal/ads/zzws;
.super Ljava/lang/Object;


# instance fields
.field private final zzbze:[B

.field private zzbzf:I

.field private zzbzg:I

.field private final synthetic zzbzh:Lcom/google/android/gms/internal/ads/zzwo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzwo;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzh:Lcom/google/android/gms/internal/ads/zzwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbze:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzwo;[BLcom/google/android/gms/internal/ads/zzwr;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;-><init>(Lcom/google/android/gms/internal/ads/zzwo;[B)V

    return-void
.end method


# virtual methods
.method public final zzbx(I)Lcom/google/android/gms/internal/ads/zzws;
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzf:I

    return-object p0
.end method

.method public final zzby(I)Lcom/google/android/gms/internal/ads/zzws;
    .locals 0

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzg:I

    return-object p0
.end method

.method public final declared-synchronized zzdj()V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzh:Lcom/google/android/gms/internal/ads/zzwo;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwo;->zzbzc:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzh:Lcom/google/android/gms/internal/ads/zzwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwo;->zzbzb:Lcom/google/android/gms/internal/ads/zzfx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbze:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfx;->zzc([B)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzh:Lcom/google/android/gms/internal/ads/zzwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwo;->zzbzb:Lcom/google/android/gms/internal/ads/zzfx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzf:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfx;->zzl(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzh:Lcom/google/android/gms/internal/ads/zzwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwo;->zzbzb:Lcom/google/android/gms/internal/ads/zzfx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzg:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfx;->zzm(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzh:Lcom/google/android/gms/internal/ads/zzwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwo;->zzbzb:Lcom/google/android/gms/internal/ads/zzfx;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfx;->zza([I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zzbzh:Lcom/google/android/gms/internal/ads/zzwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwo;->zzbzb:Lcom/google/android/gms/internal/ads/zzfx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfx;->zzdj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
