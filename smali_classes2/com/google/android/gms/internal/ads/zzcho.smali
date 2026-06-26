.class final Lcom/google/android/gms/internal/ads/zzcho;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "Lcom/google/android/gms/internal/ads/zzcxu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfwz:Lcom/google/android/gms/internal/ads/zzchl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcho;->zzfwz:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcwt:Lcom/google/android/gms/internal/ads/zzacj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzchl;->zzakf()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcho;->zzfwz:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchl;->zza(Lcom/google/android/gms/internal/ads/zzchl;)Lcom/google/android/gms/internal/ads/zzcji;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcji;->zzdo(I)V

    :cond_0
    return-void
.end method

.method public final synthetic zzk(Ljava/lang/Object;)V
    .locals 3

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxu;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcwt:Lcom/google/android/gms/internal/ads/zzacj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcho;->zzfwz:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchl;->zza(Lcom/google/android/gms/internal/ads/zzchl;)Lcom/google/android/gms/internal/ads/zzcji;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgky:Lcom/google/android/gms/internal/ads/zzcxs;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxs;->zzgku:Lcom/google/android/gms/internal/ads/zzcxo;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcxo;->responseCode:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcji;->zzdo(I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcho;->zzfwz:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchl;->zza(Lcom/google/android/gms/internal/ads/zzchl;)Lcom/google/android/gms/internal/ads/zzcji;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgky:Lcom/google/android/gms/internal/ads/zzcxs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxs;->zzgku:Lcom/google/android/gms/internal/ads/zzcxo;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzcxo;->zzfyb:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcji;->zzeu(J)V

    :cond_0
    return-void
.end method
