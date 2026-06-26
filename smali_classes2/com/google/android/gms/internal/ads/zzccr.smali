.class public final Lcom/google/android/gms/internal/ads/zzccr;
.super Ljava/lang/Object;


# instance fields
.field private final zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

.field private final zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

.field private final zzfms:Lcom/google/android/gms/internal/ads/zzbri;

.field private final zzfsq:Lcom/google/android/gms/internal/ads/zzbss;

.field private final zzfsr:Lcom/google/android/gms/internal/ads/zzbtp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbri;Lcom/google/android/gms/internal/ads/zzbse;Lcom/google/android/gms/internal/ads/zzbss;Lcom/google/android/gms/internal/ads/zzbsv;Lcom/google/android/gms/internal/ads/zzbtp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzfms:Lcom/google/android/gms/internal/ads/zzbri;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzfsq:Lcom/google/android/gms/internal/ads/zzbss;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzfsr:Lcom/google/android/gms/internal/ads/zzbtp;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzccj;)V
    .locals 6

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzccj;)Lcom/google/android/gms/internal/ads/zzccq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzfms:Lcom/google/android/gms/internal/ads/zzbri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzfsq:Lcom/google/android/gms/internal/ads/zzbss;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzfsr:Lcom/google/android/gms/internal/ads/zzbtp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccs;->zza(Lcom/google/android/gms/internal/ads/zzbse;)Lcom/google/android/gms/ads/internal/overlay/zzu;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzccq;->zza(Lcom/google/android/gms/internal/ads/zzccq;Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/ads/internal/overlay/zzu;)V

    return-void
.end method
