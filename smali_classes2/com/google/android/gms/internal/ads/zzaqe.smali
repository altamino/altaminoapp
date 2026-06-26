.class final synthetic Lcom/google/android/gms/internal/ads/zzaqe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbaf;


# static fields
.field static final zzbzd:Lcom/google/android/gms/internal/ads/zzbaf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaqe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqe;->zzbzd:Lcom/google/android/gms/internal/ads/zzbaf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdai;->zzam(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzdah;

    move-result-object p1

    return-object p1
.end method
