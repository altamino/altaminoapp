.class final synthetic Lcom/google/android/gms/internal/ads/zzbqv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbam;


# instance fields
.field private final zzdef:Landroid/content/Context;

.field private final zzfhl:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzfjs:Lcom/google/android/gms/internal/ads/zzcxv;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzcxv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzdef:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzfhl:Lcom/google/android/gms/internal/ads/zzbai;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzfjs:Lcom/google/android/gms/internal/ads/zzcxv;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzdef:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzfhl:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzfjs:Lcom/google/android/gms/internal/ads/zzcxv;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxm;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzayb;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzayb;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcxm;->zzdno:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzee(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkj:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzayb;->zzef(Ljava/lang/String;)V

    .line 5
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzayb;->zzp(Ljava/lang/String;)V

    .line 6
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzayb;->setAdUnitId(Ljava/lang/String;)V

    return-object v3
.end method
