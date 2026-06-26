.class public final Lcom/google/android/gms/internal/ads/zzazm;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# static fields
.field private static zzdya:Lcom/google/android/gms/internal/ads/zzazm;


# instance fields
.field zzdyb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzws()Lcom/google/android/gms/internal/ads/zzazm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazm;->zzdya:Lcom/google/android/gms/internal/ads/zzazm;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazm;->zzdya:Lcom/google/android/gms/internal/ads/zzazm;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazm;->zzdya:Lcom/google/android/gms/internal/ads/zzazm;

    return-object v0
.end method
