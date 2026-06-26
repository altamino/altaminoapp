.class final synthetic Lcom/google/android/gms/internal/ads/zzcks;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzfzz:Lcom/google/android/gms/internal/ads/zzckr;

.field private final zzgaa:Landroid/net/Uri;

.field private final zzgab:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzgac:Lcom/google/android/gms/internal/ads/zzcxm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckr;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzfzz:Lcom/google/android/gms/internal/ads/zzckr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzgaa:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzgab:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzgac:Lcom/google/android/gms/internal/ads/zzcxm;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzfzz:Lcom/google/android/gms/internal/ads/zzckr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzgaa:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzgab:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzgac:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzckr;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
