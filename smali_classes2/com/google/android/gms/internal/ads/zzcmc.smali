.class final synthetic Lcom/google/android/gms/internal/ads/zzcmc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzgaq:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzgax:Lcom/google/android/gms/internal/ads/zzclx;

.field private final zzgay:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzgaz:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclx;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzgax:Lcom/google/android/gms/internal/ads/zzclx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzgaq:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzgay:Lcom/google/android/gms/internal/ads/zzcxm;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzgaz:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzgax:Lcom/google/android/gms/internal/ads/zzclx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzgaq:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzgay:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcmc;->zzgaz:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzclx;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzbyn;

    move-result-object v0

    return-object v0
.end method
