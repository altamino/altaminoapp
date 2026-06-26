.class final synthetic Lcom/google/android/gms/internal/ads/zzazy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbac;


# instance fields
.field private final zzdbk:Ljava/lang/String;

.field private final zzdbr:Ljava/util/Map;

.field private final zzddy:Ljava/lang/String;

.field private final zzdyy:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzddy:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzdbk:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzdbr:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzdyy:[B

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/util/JsonWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzddy:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzdbk:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzdbr:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzdyy:[B

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V

    return-void
.end method
