.class public final Lcom/google/android/gms/internal/ads/zzcqv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgfu:Lcom/google/android/gms/internal/ads/zzcqt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcqt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzgfu:Lcom/google/android/gms/internal/ads/zzcqt;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzgfu:Lcom/google/android/gms/internal/ads/zzcqt;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqt;->zzall()I

    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
