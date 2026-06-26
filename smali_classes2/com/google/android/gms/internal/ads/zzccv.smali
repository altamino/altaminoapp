.class public final Lcom/google/android/gms/internal/ads/zzccv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzccj;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzeoj:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfhi:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfjy:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbai;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfni:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzdh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfrr:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/ads/internal/zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfsx:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbhf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzdh;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbai;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/ads/internal/zza;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbhf;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzeoj:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfhi:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfni:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfjy:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfrr:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfsx:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    .line 10
    new-instance v7, Lcom/google/android/gms/internal/ads/zzccj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzeoj:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfhi:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfni:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfjy:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfrr:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/ads/internal/zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfsx:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbhf;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzccj;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbhf;)V

    return-object v7
.end method
