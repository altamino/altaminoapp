.class public final Lcom/google/android/gms/internal/ads/zzbnr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzbnf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfbg:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbnh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfhp:Lcom/google/android/gms/internal/ads/zzbnk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnk;Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbnk;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbnh;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnr;->zzfhp:Lcom/google/android/gms/internal/ads/zzbnk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnr;->zzfbg:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbnk;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbnf;
    .locals 0

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnh;

    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbnf;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnr;->zzfhp:Lcom/google/android/gms/internal/ads/zzbnk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnr;->zzfbg:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnr;->zza(Lcom/google/android/gms/internal/ads/zzbnk;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbnf;

    move-result-object v0

    return-object v0
.end method
