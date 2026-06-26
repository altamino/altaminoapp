.class public final Lcom/google/android/gms/internal/ads/zzboj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzcjv<",
        "Lcom/google/android/gms/internal/ads/zzbnf;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfhi:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbbl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfhv:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzczt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfhz:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzckm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfia:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcoc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzczt;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbbl;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzckm;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcoc;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzfhv:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzfhi:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzfhz:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzfia:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzfhv:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzczt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzfhi:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbbl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzfhz:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzckm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzfia:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 12
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcoc;

    .line 16
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcoe;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcoe;-><init>(Lcom/google/android/gms/internal/ads/zzczt;Lcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcka;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjv;

    return-object v0
.end method
