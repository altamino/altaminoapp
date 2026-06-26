.class public final Lcom/google/android/gms/internal/ads/zzalr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# static fields
.field private static final zzddl:Lcom/google/android/gms/internal/ads/zzayp;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzayp<",
            "Lcom/google/android/gms/internal/ads/zzajw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzddm:Lcom/google/android/gms/internal/ads/zzayp;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzayp<",
            "Lcom/google/android/gms/internal/ads/zzajw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzddn:Lcom/google/android/gms/internal/ads/zzakh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzals;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzals;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalr;->zzddl:Lcom/google/android/gms/internal/ads/zzayp;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalr;->zzddm:Lcom/google/android/gms/internal/ads/zzayp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzakh;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzalr;->zzddl:Lcom/google/android/gms/internal/ads/zzayp;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzalr;->zzddm:Lcom/google/android/gms/internal/ads/zzayp;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzakh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzayp;Lcom/google/android/gms/internal/ads/zzayp;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzalr;->zzddn:Lcom/google/android/gms/internal/ads/zzakh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzalj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzalm<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzall<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzalj<",
            "TI;TO;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalr;->zzddn:Lcom/google/android/gms/internal/ads/zzakh;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzalu;-><init>(Lcom/google/android/gms/internal/ads/zzakh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)V

    return-object v0
.end method

.method public final zzsc()Lcom/google/android/gms/internal/ads/zzaly;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaly;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalr;->zzddn:Lcom/google/android/gms/internal/ads/zzakh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaly;-><init>(Lcom/google/android/gms/internal/ads/zzakh;)V

    return-object v0
.end method
