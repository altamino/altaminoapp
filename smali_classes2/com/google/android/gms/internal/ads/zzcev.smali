.class public final Lcom/google/android/gms/internal/ads/zzcev;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzcez;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfug:Lcom/google/android/gms/internal/ads/zzcev;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcev;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcev;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcev;->zzfug:Lcom/google/android/gms/internal/ads/zzcev;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzajv()Lcom/google/android/gms/internal/ads/zzcev;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcev;->zzfug:Lcom/google/android/gms/internal/ads/zzcev;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcez;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;->zzbyc:Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;->zzbyd:Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;->zzbyt:Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcez;-><init>(Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcez;

    return-object v0
.end method
