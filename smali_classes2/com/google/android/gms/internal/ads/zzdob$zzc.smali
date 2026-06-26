.class public abstract Lcom/google/android/gms/internal/ads/zzdob$zzc;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzdob$zzc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# instance fields
.field protected zzhhj:Lcom/google/android/gms/internal/ads/zzdns;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdns<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdns;->zzaxi()Lcom/google/android/gms/internal/ads/zzdns;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zzc;->zzhhj:Lcom/google/android/gms/internal/ads/zzdns;

    return-void
.end method
