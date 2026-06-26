.class public final Lcom/google/android/gms/internal/ads/zzchy;
.super Lcom/google/android/gms/internal/ads/zzars;


# instance fields
.field private final synthetic zzfxj:Lcom/google/android/gms/internal/ads/zzchx;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzchx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchy;->zzfxj:Lcom/google/android/gms/internal/ads/zzchx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzars;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaym;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchy;->zzfxj:Lcom/google/android/gms/internal/ads/zzchx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzchx;->zzddv:Lcom/google/android/gms/internal/ads/zzbbr;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzayn;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzaym;->zzdwv:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaym;->errorCode:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzayn;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbr;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchy;->zzfxj:Lcom/google/android/gms/internal/ads/zzchx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzchx;->zzddv:Lcom/google/android/gms/internal/ads/zzbbr;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbr;->set(Ljava/lang/Object;)V

    return-void
.end method
