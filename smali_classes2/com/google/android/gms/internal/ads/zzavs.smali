.class final synthetic Lcom/google/android/gms/internal/ads/zzavs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzavv;


# static fields
.field static final zzdst:Lcom/google/android/gms/internal/ads/zzavv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavs;->zzdst:Lcom/google/android/gms/internal/ads/zzavv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbjf;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjf;->generateEventId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
