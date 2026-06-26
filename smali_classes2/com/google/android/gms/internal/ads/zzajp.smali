.class final Lcom/google/android/gms/internal/ads/zzajp;
.super Lcom/google/android/gms/internal/ads/zzbiz;


# instance fields
.field private final synthetic zzdbm:Lcom/google/android/gms/internal/ads/zzajj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzajj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbm:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzajj;Lcom/google/android/gms/internal/ads/zzajn;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(Lcom/google/android/gms/internal/ads/zzajj;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbja;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbm:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajj;->zza(Lcom/google/android/gms/internal/ads/zzajj;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbm:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajj;->zza(Lcom/google/android/gms/internal/ads/zzajj;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajx;->zzrv()V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbja;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbm:Lcom/google/android/gms/internal/ads/zzajj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbja;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaju;->zzg(Landroid/net/Uri;)Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbja;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbm:Lcom/google/android/gms/internal/ads/zzajj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbja;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaju;->zzg(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
