.class public final Lcom/google/android/gms/internal/ads/zzbqr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtk;


# instance fields
.field private final zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzduk:Lcom/google/android/gms/internal/ads/zzaxb;

.field private final zzfeh:Lcom/google/android/gms/internal/ads/zzcgb;

.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzys:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzaxb;Lcom/google/android/gms/internal/ads/zzcgb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqr;->zzys:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqr;->zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbqr;->zzduk:Lcom/google/android/gms/internal/ads/zzaxb;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbqr;->zzfeh:Lcom/google/android/gms/internal/ads/zzcgb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcxu;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzarx;)V
    .locals 4

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcsv:Lcom/google/android/gms/internal/ads/zzacj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqr;->zzduk:Lcom/google/android/gms/internal/ads/zzaxb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaxb;->zzvr()Lcom/google/android/gms/internal/ads/zzawl;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlo()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqr;->zzys:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqr;->zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/ads/internal/zzd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawl;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqr;->zzfeh:Lcom/google/android/gms/internal/ads/zzcgb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgb;->zzajx()V

    return-void
.end method
