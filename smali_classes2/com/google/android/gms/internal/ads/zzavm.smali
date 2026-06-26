.class final synthetic Lcom/google/android/gms/internal/ads/zzavm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzavv;


# static fields
.field static final zzdst:Lcom/google/android/gms/internal/ads/zzavv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavm;->zzdst:Lcom/google/android/gms/internal/ads/zzavv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbjf;)Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjf;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjf;->getCurrentScreenClass()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method
