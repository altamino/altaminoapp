.class public abstract Lcom/google/android/gms/internal/ads/zzbco;
.super Landroid/view/TextureView;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdj;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field protected final zzebr:Lcom/google/android/gms/internal/ads/zzbcy;

.field protected final zzebs:Lcom/google/android/gms/internal/ads/zzbdi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzebr:Lcom/google/android/gms/internal/ads/zzbcy;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzbdi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzebs:Lcom/google/android/gms/internal/ads/zzbdi;

    return-void
.end method


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method

.method public abstract zza(FF)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzbcn;)V
.end method

.method public zzb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbco;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public zzcy(I)V
    .locals 0

    return-void
.end method

.method public zzcz(I)V
    .locals 0

    return-void
.end method

.method public zzda(I)V
    .locals 0

    return-void
.end method

.method public zzdb(I)V
    .locals 0

    return-void
.end method

.method public zzdc(I)V
    .locals 0

    return-void
.end method

.method public abstract zzxg()Ljava/lang/String;
.end method

.method public abstract zzxk()V
.end method
