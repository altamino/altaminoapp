.class final synthetic Lcom/google/android/gms/internal/ads/zzame;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzdea:Lcom/google/android/gms/internal/ads/zzamd;

.field private final zzdeb:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamd;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzdea:Lcom/google/android/gms/internal/ads/zzamd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzame;->zzdeb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzame;->zzdea:Lcom/google/android/gms/internal/ads/zzamd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzdeb:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalf;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzamd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzalf;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
