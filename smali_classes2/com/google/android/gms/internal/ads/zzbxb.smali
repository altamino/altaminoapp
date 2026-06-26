.class public final Lcom/google/android/gms/internal/ads/zzbxb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzbxa;",
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

.field private final zzfej:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbai;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfgq:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfhf:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfhj:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcxm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcxm;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbai;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzeoj:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzfhf:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzfhj:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzfej:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzfgq:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)Lcom/google/android/gms/internal/ads/zzbxb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcxm;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbai;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbxb;"
        }
    .end annotation

    .line 8
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbxb;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbxb;-><init>(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .line 10
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbxa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzeoj:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzfhf:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzfhj:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzfej:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzfgq:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbxa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzbai;I)V

    return-object v6
.end method
