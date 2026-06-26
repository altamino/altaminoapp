.class final synthetic Lcom/google/android/gms/internal/ads/zzcvp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzfvh:Lcom/google/android/gms/internal/ads/zzbbr;

.field private final zzgis:Lcom/google/android/gms/internal/ads/zzcvo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvo;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgis:Lcom/google/android/gms/internal/ads/zzcvo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzfvh:Lcom/google/android/gms/internal/ads/zzbbr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgis:Lcom/google/android/gms/internal/ads/zzcvo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzfvh:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcvo;->zzb(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbr;)V

    return-void
.end method
