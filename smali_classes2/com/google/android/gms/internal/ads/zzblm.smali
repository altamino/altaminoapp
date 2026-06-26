.class public final Lcom/google/android/gms/internal/ads/zzblm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzaql;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfes:Lcom/google/android/gms/internal/ads/zzblm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzblm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblm;->zzfes:Lcom/google/android/gms/internal/ads/zzblm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaey()Lcom/google/android/gms/internal/ads/zzblm;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzblm;->zzfes:Lcom/google/android/gms/internal/ads/zzblm;

    return-object v0
.end method

.method public static zzaez()Lcom/google/android/gms/internal/ads/zzaql;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaql;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaql;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaql;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzblm;->zzaez()Lcom/google/android/gms/internal/ads/zzaql;

    move-result-object v0

    return-object v0
.end method
