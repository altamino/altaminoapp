.class public final Lcom/google/android/gms/internal/ads/zzcox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzado;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgdc:Lcom/google/android/gms/internal/ads/zzcow;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzgdc:Lcom/google/android/gms/internal/ads/zzcow;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcow;)Lcom/google/android/gms/internal/ads/zzcox;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcox;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcox;-><init>(Lcom/google/android/gms/internal/ads/zzcow;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzgdc:Lcom/google/android/gms/internal/ads/zzcow;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcow;->zzakv()Lcom/google/android/gms/internal/ads/zzado;

    move-result-object v0

    return-object v0
.end method
