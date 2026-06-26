.class public final Lcom/google/android/gms/internal/ads/zzbkn;
.super Ljava/lang/Object;


# instance fields
.field private zzeol:Lcom/google/android/gms/internal/ads/zzbjn;

.field private zzfbv:Lcom/google/android/gms/internal/ads/zzcye;

.field private zzfbw:Lcom/google/android/gms/internal/ads/zzbld;

.field private zzfbx:Lcom/google/android/gms/internal/ads/zzbkw;

.field private zzfby:Lcom/google/android/gms/internal/ads/zzdac;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbkd;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbkw;)Lcom/google/android/gms/internal/ads/zzbkn;
    .locals 0

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdto;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbkw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfbx:Lcom/google/android/gms/internal/ads/zzbkw;

    return-object p0
.end method

.method public final zzaec()Lcom/google/android/gms/internal/ads/zzbjm;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfbv:Lcom/google/android/gms/internal/ads/zzcye;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcye;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcye;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfbv:Lcom/google/android/gms/internal/ads/zzcye;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzeol:Lcom/google/android/gms/internal/ads/zzbjn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbjn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfbw:Lcom/google/android/gms/internal/ads/zzbld;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbld;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbld;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfbw:Lcom/google/android/gms/internal/ads/zzbld;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfbx:Lcom/google/android/gms/internal/ads/zzbkw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbkw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfby:Lcom/google/android/gms/internal/ads/zzdac;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdac;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfby:Lcom/google/android/gms/internal/ads/zzdac;

    .line 10
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfbv:Lcom/google/android/gms/internal/ads/zzcye;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzeol:Lcom/google/android/gms/internal/ads/zzbjn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfbw:Lcom/google/android/gms/internal/ads/zzbld;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfbx:Lcom/google/android/gms/internal/ads/zzbkw;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzfby:Lcom/google/android/gms/internal/ads/zzdac;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbkc;-><init>(Lcom/google/android/gms/internal/ads/zzcye;Lcom/google/android/gms/internal/ads/zzbjn;Lcom/google/android/gms/internal/ads/zzbld;Lcom/google/android/gms/internal/ads/zzbkw;Lcom/google/android/gms/internal/ads/zzdac;Lcom/google/android/gms/internal/ads/zzbkd;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbjn;)Lcom/google/android/gms/internal/ads/zzbkn;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdto;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbjn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkn;->zzeol:Lcom/google/android/gms/internal/ads/zzbjn;

    return-object p0
.end method
