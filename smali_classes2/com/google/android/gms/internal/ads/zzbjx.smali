.class public final Lcom/google/android/gms/internal/ads/zzbjx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzbai;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzeof:Lcom/google/android/gms/internal/ads/zzbjn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjx;->zzeof:Lcom/google/android/gms/internal/ads/zzbjn;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbjn;)Lcom/google/android/gms/internal/ads/zzbai;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjn;->zzacq()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbai;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjx;->zzeof:Lcom/google/android/gms/internal/ads/zzbjn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjx;->zzb(Lcom/google/android/gms/internal/ads/zzbjn;)Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v0

    return-object v0
.end method
