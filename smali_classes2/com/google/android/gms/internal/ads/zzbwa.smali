.class final synthetic Lcom/google/android/gms/internal/ads/zzbwa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsr;


# instance fields
.field private final zzdef:Landroid/content/Context;

.field private final zzfhl:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzfhn:Lcom/google/android/gms/internal/ads/zzcxv;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcxv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzdef:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfhl:Lcom/google/android/gms/internal/ads/zzbai;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfhn:Lcom/google/android/gms/internal/ads/zzcxv;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzdef:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfhl:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfhn:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlq()Lcom/google/android/gms/internal/ads/zzayi;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkj:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    .line 4
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzayi;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
