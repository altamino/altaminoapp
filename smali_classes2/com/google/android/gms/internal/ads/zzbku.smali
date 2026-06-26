.class final Lcom/google/android/gms/internal/ads/zzbku;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqp;


# instance fields
.field private zzepw:Lcom/google/android/gms/internal/ads/zzcyo;

.field private zzepx:Lcom/google/android/gms/internal/ads/zzbqy;

.field private zzepy:Lcom/google/android/gms/internal/ads/zzcfp;

.field private final synthetic zzeqe:Lcom/google/android/gms/internal/ads/zzbkc;

.field private zzfdv:Lcom/google/android/gms/internal/ads/zzcqt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbkc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzeqe:Lcom/google/android/gms/internal/ads/zzbkc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbkc;Lcom/google/android/gms/internal/ads/zzbkd;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbku;-><init>(Lcom/google/android/gms/internal/ads/zzbkc;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzcqt;)Lcom/google/android/gms/internal/ads/zzcqp;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdto;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcqt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzfdv:Lcom/google/android/gms/internal/ads/zzcqt;

    return-object p0
.end method

.method public final zzaem()Lcom/google/android/gms/internal/ads/zzcqo;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzepw:Lcom/google/android/gms/internal/ads/zzcyo;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcyo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcyo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzepw:Lcom/google/android/gms/internal/ads/zzcyo;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzepx:Lcom/google/android/gms/internal/ads/zzbqy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbqy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzfdv:Lcom/google/android/gms/internal/ads/zzcqt;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcqt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzepy:Lcom/google/android/gms/internal/ads/zzcfp;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcfp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzepy:Lcom/google/android/gms/internal/ads/zzcfp;

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzeqe:Lcom/google/android/gms/internal/ads/zzbkc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzepw:Lcom/google/android/gms/internal/ads/zzcyo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzepx:Lcom/google/android/gms/internal/ads/zzbqy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzfdv:Lcom/google/android/gms/internal/ads/zzcqt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzepy:Lcom/google/android/gms/internal/ads/zzcfp;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbkv;-><init>(Lcom/google/android/gms/internal/ads/zzbkc;Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzbqy;Lcom/google/android/gms/internal/ads/zzcqt;Lcom/google/android/gms/internal/ads/zzcfp;Lcom/google/android/gms/internal/ads/zzbkd;)V

    return-object v0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzbqy;)Lcom/google/android/gms/internal/ads/zzcqp;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdto;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzepx:Lcom/google/android/gms/internal/ads/zzbqy;

    return-object p0
.end method
