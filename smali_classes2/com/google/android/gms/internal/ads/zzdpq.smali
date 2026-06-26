.class final Lcom/google/android/gms/internal/ads/zzdpq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdqb<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzhju:Lcom/google/android/gms/internal/ads/zzdpk;

.field private final zzhjv:Z

.field private final zzhke:Lcom/google/android/gms/internal/ads/zzdqt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdqt<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdnp<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqt<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzdnp<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdpk;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhke:Lcom/google/android/gms/internal/ads/zzdqt;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdpk;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhjv:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhju:Lcom/google/android/gms/internal/ads/zzdpk;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdpq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdqt<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzdnp<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdpk;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdpq<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzdpk;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhke:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqt;->zzao(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhke:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzdqt;->zzao(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhjv:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdns;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdnp;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdns;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdns;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhke:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqt;->zzao(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhjv:Z

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdns;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdns;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhju:Lcom/google/android/gms/internal/ads/zzdpk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpk;->zzaxu()Lcom/google/android/gms/internal/ads/zzdpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpl;->zzaxz()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdqa;Lcom/google/android/gms/internal/ads/zzdno;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzdqa;",
            "Lcom/google/android/gms/internal/ads/zzdno;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhke:Lcom/google/android/gms/internal/ads/zzdqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 108
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqt;->zzap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdns;

    move-result-object v3

    .line 110
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaws()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 112
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdqt;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 115
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdqa;->getTag()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_4

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 120
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhju:Lcom/google/android/gms/internal/ads/zzdpk;

    ushr-int/lit8 v4, v4, 0x3

    .line 122
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/ads/zzdnp;->zza(Lcom/google/android/gms/internal/ads/zzdno;Lcom/google/android/gms/internal/ads/zzdpk;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 124
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/ads/zzdnp;->zza(Lcom/google/android/gms/internal/ads/zzdqa;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdno;Lcom/google/android/gms/internal/ads/zzdns;)V

    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzdqt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdqa;)Z

    move-result v4

    goto :goto_2

    .line 127
    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdqa;->zzawt()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    .line 131
    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaws()I

    move-result v8

    if-eq v8, v5, :cond_9

    .line 133
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdqa;->getTag()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    .line 135
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdqa;->zzawd()I

    move-result v4

    .line 136
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhju:Lcom/google/android/gms/internal/ads/zzdpk;

    .line 137
    invoke-virtual {v1, p3, v6, v4}, Lcom/google/android/gms/internal/ads/zzdnp;->zza(Lcom/google/android/gms/internal/ads/zzdno;Lcom/google/android/gms/internal/ads/zzdpk;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    .line 141
    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/ads/zzdnp;->zza(Lcom/google/android/gms/internal/ads/zzdqa;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdno;Lcom/google/android/gms/internal/ads/zzdns;)V

    goto :goto_0

    .line 143
    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdqa;->zzawc()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v7

    goto :goto_0

    .line 145
    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdqa;->zzawt()Z

    move-result v8

    if-nez v8, :cond_5

    .line 146
    :cond_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdqa;->getTag()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    if-eqz v7, :cond_b

    if-eqz v6, :cond_a

    .line 150
    invoke-virtual {v1, v7, v6, p3, v3}, Lcom/google/android/gms/internal/ads/zzdnp;->zza(Lcom/google/android/gms/internal/ads/zzdmr;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdno;Lcom/google/android/gms/internal/ads/zzdns;)V

    goto :goto_1

    .line 151
    :cond_a
    invoke-virtual {v0, v2, v4, v7}, Lcom/google/android/gms/internal/ads/zzdqt;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzdmr;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    .line 154
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdqt;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 147
    :cond_c
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdok;->zzayh()Lcom/google/android/gms/internal/ads/zzdok;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    .line 156
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdqt;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdro;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzdro;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdns;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdns;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdnu;

    .line 32
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdnu;->zzaxm()Lcom/google/android/gms/internal/ads/zzdrn;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrn;->zzhnk:Lcom/google/android/gms/internal/ads/zzdrn;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdnu;->zzaxn()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdnu;->zzaxo()Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzdop;

    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdnu;->zzac()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdop;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdop;->zzayn()Lcom/google/android/gms/internal/ads/zzdon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdor;->zzavf()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v1

    .line 37
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzdro;->zzb(ILjava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdnu;->zzac()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzdro;->zzb(ILjava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhke:Lcom/google/android/gms/internal/ads/zzdqt;

    .line 41
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqt;->zzao(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqt;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdro;)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzdmo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzdmo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdob;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdob;->zzhhd:Lcom/google/android/gms/internal/ads/zzdqu;

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqu;->zzazz()Lcom/google/android/gms/internal/ads/zzdqu;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqu;->zzbaa()Lcom/google/android/gms/internal/ads/zzdqu;

    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdob;->zzhhd:Lcom/google/android/gms/internal/ads/zzdqu;

    .line 47
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdob$zzc;

    .line 49
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdob$zzc;->zzhhj:Lcom/google/android/gms/internal/ads/zzdns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdns;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdob$zzc;->zzhhj:Lcom/google/android/gms/internal/ads/zzdns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdns;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdns;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzdob$zzc;->zzhhj:Lcom/google/android/gms/internal/ads/zzdns;

    .line 51
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdob$zzc;->zzhhj:Lcom/google/android/gms/internal/ads/zzdns;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-ge p3, p4, :cond_b

    .line 54
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/ads/zzdmn;->zza([BILcom/google/android/gms/internal/ads/zzdmo;)I

    move-result v4

    .line 55
    iget v2, p5, Lcom/google/android/gms/internal/ads/zzdmo;->zzhcl:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_4

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_3

    .line 60
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v0, p5, Lcom/google/android/gms/internal/ads/zzdmo;->zzhco:Lcom/google/android/gms/internal/ads/zzdno;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhju:Lcom/google/android/gms/internal/ads/zzdpk;

    ushr-int/lit8 v5, v2, 0x3

    .line 62
    invoke-virtual {p3, v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzdnp;->zza(Lcom/google/android/gms/internal/ads/zzdno;Lcom/google/android/gms/internal/ads/zzdpk;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdob$zzd;

    if-nez v0, :cond_2

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 67
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdmn;->zza(I[BIILcom/google/android/gms/internal/ads/zzdqu;Lcom/google/android/gms/internal/ads/zzdmo;)I

    move-result p3

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpx;->zzazg()Lcom/google/android/gms/internal/ads/zzdpx;

    .line 65
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    .line 68
    :cond_3
    invoke-static {v2, p2, v4, p4, p5}, Lcom/google/android/gms/internal/ads/zzdmn;->zza(I[BIILcom/google/android/gms/internal/ads/zzdmo;)I

    move-result p3

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    if-ge v4, p4, :cond_9

    .line 73
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/ads/zzdmn;->zza([BILcom/google/android/gms/internal/ads/zzdmo;)I

    move-result v4

    .line 74
    iget v5, p5, Lcom/google/android/gms/internal/ads/zzdmo;->zzhcl:I

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v7, v5, 0x7

    if-eq v6, v3, :cond_7

    const/4 v8, 0x3

    if-eq v6, v8, :cond_5

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    if-ne v7, v3, :cond_8

    .line 92
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/ads/zzdmn;->zze([BILcom/google/android/gms/internal/ads/zzdmo;)I

    move-result v4

    .line 93
    iget-object v2, p5, Lcom/google/android/gms/internal/ads/zzdmo;->zzhcn:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdmr;

    goto :goto_1

    .line 89
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpx;->zzazg()Lcom/google/android/gms/internal/ads/zzdpx;

    .line 90
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_7
    if-nez v7, :cond_8

    .line 83
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/ads/zzdmn;->zza([BILcom/google/android/gms/internal/ads/zzdmo;)I

    move-result v4

    .line 84
    iget p3, p5, Lcom/google/android/gms/internal/ads/zzdmo;->zzhcl:I

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v5, p5, Lcom/google/android/gms/internal/ads/zzdmo;->zzhco:Lcom/google/android/gms/internal/ads/zzdno;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhju:Lcom/google/android/gms/internal/ads/zzdpk;

    .line 86
    invoke-virtual {v0, v5, v6, p3}, Lcom/google/android/gms/internal/ads/zzdnp;->zza(Lcom/google/android/gms/internal/ads/zzdno;Lcom/google/android/gms/internal/ads/zzdpk;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdob$zzd;

    goto :goto_1

    :cond_8
    :goto_2
    const/16 v6, 0xc

    if-eq v5, v6, :cond_9

    .line 96
    invoke-static {v5, p2, v4, p4, p5}, Lcom/google/android/gms/internal/ads/zzdmn;->zza(I[BIILcom/google/android/gms/internal/ads/zzdmo;)I

    move-result v4

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    .line 102
    invoke-virtual {v1, p3, v2}, Lcom/google/android/gms/internal/ads/zzdqu;->zzc(ILjava/lang/Object;)V

    :cond_a
    move p3, v4

    goto/16 :goto_0

    :cond_b
    if-ne p3, p4, :cond_c

    return-void

    .line 105
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdok;->zzayj()Lcom/google/android/gms/internal/ads/zzdok;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final zzaa(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhke:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqt;->zzaa(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzaa(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzak(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhke:Lcom/google/android/gms/internal/ads/zzdqt;

    .line 163
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqt;->zzao(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqt;->zzaq(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 166
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhjv:Z

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdns;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdns;->zzaxk()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzam(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdns;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdns;->isInitialized()Z

    move-result p1

    return p1
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhke:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqd;->zza(Lcom/google/android/gms/internal/ads/zzdqt;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhjv:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpq;->zzhkf:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqd;->zza(Lcom/google/android/gms/internal/ads/zzdnp;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
