.class final synthetic Lcom/google/android/gms/internal/ads/zzbjc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzems:Lcom/google/android/gms/internal/ads/zzbjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbjb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjc;->zzems:Lcom/google/android/gms/internal/ads/zzbjb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjc;->zzems:Lcom/google/android/gms/internal/ads/zzbjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjb;->zzacb()V

    return-void
.end method
