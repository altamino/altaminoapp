.class public final Lcom/google/android/gms/internal/ads/zzbnp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzcxn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfhp:Lcom/google/android/gms/internal/ads/zzbnk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzfhp:Lcom/google/android/gms/internal/ads/zzbnk;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbnk;)Lcom/google/android/gms/internal/ads/zzcxn;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnk;->zzafp()Lcom/google/android/gms/internal/ads/zzcxn;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcxn;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzfhp:Lcom/google/android/gms/internal/ads/zzbnk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbnp;->zzb(Lcom/google/android/gms/internal/ads/zzbnk;)Lcom/google/android/gms/internal/ads/zzcxn;

    move-result-object v0

    return-object v0
.end method
