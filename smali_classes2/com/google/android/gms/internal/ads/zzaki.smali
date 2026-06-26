.class final synthetic Lcom/google/android/gms/internal/ads/zzaki;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdce:Lcom/google/android/gms/internal/ads/zzakh;

.field private final zzdcf:Lcom/google/android/gms/internal/ads/zzdh;

.field private final zzdcg:Lcom/google/android/gms/internal/ads/zzala;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzala;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzdce:Lcom/google/android/gms/internal/ads/zzakh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzdcf:Lcom/google/android/gms/internal/ads/zzdh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzdcg:Lcom/google/android/gms/internal/ads/zzala;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzdce:Lcom/google/android/gms/internal/ads/zzakh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzdcf:Lcom/google/android/gms/internal/ads/zzdh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzdcg:Lcom/google/android/gms/internal/ads/zzala;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzakh;->zza(Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzala;)V

    return-void
.end method
