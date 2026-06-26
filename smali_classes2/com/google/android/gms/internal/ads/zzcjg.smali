.class public final Lcom/google/android/gms/internal/ads/zzcjg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbro;
.implements Lcom/google/android/gms/internal/ads/zzbsr;


# static fields
.field private static final zzfyh:Ljava/lang/Object;

.field private static zzfyi:I


# instance fields
.field private final zzfyj:Lcom/google/android/gms/internal/ads/zzcjm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfyh:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfyj:Lcom/google/android/gms/internal/ads/zzcjm;

    return-void
.end method

.method private static zzakj()V
    .locals 2

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfyh:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    sget v1, Lcom/google/android/gms/internal/ads/zzcjg;->zzfyi:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/gms/internal/ads/zzcjg;->zzfyi:I

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static zzakk()Z
    .locals 4

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfyh:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    sget v1, Lcom/google/android/gms/internal/ads/zzcjg;->zzfyi:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzacu;->zzcwu:Lcom/google/android/gms/internal/ads/zzacj;

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 1

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcwt:Lcom/google/android/gms/internal/ads/zzacj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcjg;->zzakk()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfyj:Lcom/google/android/gms/internal/ads/zzcjm;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcjm;->zzba(Z)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcjg;->zzakj()V

    :cond_0
    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcwt:Lcom/google/android/gms/internal/ads/zzacj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcjg;->zzakk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfyj:Lcom/google/android/gms/internal/ads/zzcjm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjm;->zzba(Z)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcjg;->zzakj()V

    :cond_0
    return-void
.end method
