.class public final Lcom/google/android/gms/internal/ads/zzbuh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzbuz<",
        "Lcom/google/android/gms/internal/ads/zzbsr;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzfky:Lcom/google/android/gms/internal/ads/zzbtv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbtv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfky:Lcom/google/android/gms/internal/ads/zzbtv;

    return-void
.end method

.method public static zzn(Lcom/google/android/gms/internal/ads/zzbtv;)Lcom/google/android/gms/internal/ads/zzbuh;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbuh;-><init>(Lcom/google/android/gms/internal/ads/zzbtv;)V

    return-object v0
.end method

.method public static zzo(Lcom/google/android/gms/internal/ads/zzbtv;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbtv;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbuz<",
            "Lcom/google/android/gms/internal/ads/zzbsr;",
            ">;>;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbtv;->zzagm()Ljava/util/Set;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfky:Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuh;->zzo(Lcom/google/android/gms/internal/ads/zzbtv;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
