.class public final Lcom/google/android/gms/internal/ads/zzcir;
.super Ljava/lang/Object;


# static fields
.field public static final zzfxv:Lcom/google/android/gms/internal/ads/zzalm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalm<",
            "Lcom/google/android/gms/internal/ads/zzcir;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzfxs:Lcom/google/android/gms/internal/ads/zzciw;

.field public final zzfxt:Lorg/json/JSONObject;

.field public final zzfxu:Lcom/google/android/gms/internal/ads/zzasd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcis;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcir;->zzfxv:Lcom/google/android/gms/internal/ads/zzalm;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzciw;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzasd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzfxs:Lcom/google/android/gms/internal/ads/zzciw;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzfxt:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzfxu:Lcom/google/android/gms/internal/ads/zzasd;

    return-void
.end method
