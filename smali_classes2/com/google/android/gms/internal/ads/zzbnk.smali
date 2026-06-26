.class public Lcom/google/android/gms/internal/ads/zzbnk;
.super Ljava/lang/Object;


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

.field private final zzfgx:Lcom/google/android/gms/internal/ads/zzcxn;

.field private final zzfgy:Lcom/google/android/gms/internal/ads/zzbpb;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbpb;Lcom/google/android/gms/internal/ads/zzcxn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnk;->view:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zzfgy:Lcom/google/android/gms/internal/ads/zzbpb;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zzfgx:Lcom/google/android/gms/internal/ads/zzcxn;

    return-void
.end method


# virtual methods
.method public zza(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzbso;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbuz<",
            "Lcom/google/android/gms/internal/ads/zzbsr;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/zzbso;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbso;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbso;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final zzafi()Landroid/view/View;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnk;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzafn()Lcom/google/android/gms/internal/ads/zzbgz;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    return-object v0
.end method

.method public final zzafo()Lcom/google/android/gms/internal/ads/zzbpb;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zzfgy:Lcom/google/android/gms/internal/ads/zzbpb;

    return-object v0
.end method

.method public final zzafp()Lcom/google/android/gms/internal/ads/zzcxn;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zzfgx:Lcom/google/android/gms/internal/ads/zzcxn;

    return-object v0
.end method
