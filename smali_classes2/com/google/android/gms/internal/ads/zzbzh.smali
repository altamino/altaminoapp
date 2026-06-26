.class public final Lcom/google/android/gms/internal/ads/zzbzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzbyt;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfpe:Lcom/google/android/gms/internal/ads/zzbzf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbzf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzh;->zzfpe:Lcom/google/android/gms/internal/ads/zzbzf;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbzf;)Lcom/google/android/gms/internal/ads/zzbzh;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbzh;-><init>(Lcom/google/android/gms/internal/ads/zzbzf;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbzf;)Lcom/google/android/gms/internal/ads/zzbyt;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbzf;->zzaiq()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbyt;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzh;->zzfpe:Lcom/google/android/gms/internal/ads/zzbzf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbzh;->zzb(Lcom/google/android/gms/internal/ads/zzbzf;)Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v0

    return-object v0
.end method
