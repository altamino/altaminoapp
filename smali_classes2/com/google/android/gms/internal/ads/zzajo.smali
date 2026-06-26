.class final Lcom/google/android/gms/internal/ads/zzajo;
.super Ljava/lang/Object;


# instance fields
.field private final zzdbl:Lcom/google/android/gms/internal/ads/zzajt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzajt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzdbl:Lcom/google/android/gms/internal/ads/zzajt;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzajt;Lcom/google/android/gms/internal/ads/zzajn;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajo;-><init>(Lcom/google/android/gms/internal/ads/zzajt;)V

    return-void
.end method


# virtual methods
.method public final notify(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzdbl:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzajt;->zzcs(Ljava/lang/String;)Z

    return-void
.end method
