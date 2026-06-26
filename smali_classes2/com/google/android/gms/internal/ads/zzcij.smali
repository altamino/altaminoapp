.class final synthetic Lcom/google/android/gms/internal/ads/zzcij;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzall;


# static fields
.field static final zzddk:Lcom/google/android/gms/internal/ads/zzall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcij;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcij;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcij;->zzddk:Lcom/google/android/gms/internal/ads/zzall;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzasd;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
