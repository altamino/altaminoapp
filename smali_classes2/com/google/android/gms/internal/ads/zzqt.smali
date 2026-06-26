.class public final Lcom/google/android/gms/internal/ads/zzqt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznw;


# instance fields
.field private final zzajh:I

.field private zzajn:J

.field private zzajp:I

.field private final zzbac:Lcom/google/android/gms/internal/ads/zzst;

.field private final zzbic:Lcom/google/android/gms/internal/ads/zzrt;

.field private final zzbke:Lcom/google/android/gms/internal/ads/zzqr;

.field private final zzbkf:Lcom/google/android/gms/internal/ads/zzqs;

.field private final zzbkg:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

.field private zzbki:Lcom/google/android/gms/internal/ads/zzqu;

.field private zzbkj:Lcom/google/android/gms/internal/ads/zzlh;

.field private zzbkk:Z

.field private zzbkl:Lcom/google/android/gms/internal/ads/zzlh;

.field private zzbkm:Lcom/google/android/gms/internal/ads/zzqv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzrt;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbic:Lcom/google/android/gms/internal/ads/zzrt;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzrt;->zzfz()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajh:I

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkf:Lcom/google/android/gms/internal/ads/zzqs;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzst;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzst;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkg:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajh:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqu;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzqu;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbki:Lcom/google/android/gms/internal/ads/zzqu;

    return-void
.end method

.method private final zza(J[BI)V
    .locals 6

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqt;->zzdu(J)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p4, :cond_1

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzbkn:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    sub-int v1, p4, v0

    .line 107
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajh:I

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 108
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzqu;->zzbkp:Lcom/google/android/gms/internal/ads/zzrs;

    .line 109
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzrs;->data:[B

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzrs;->zzbj(I)I

    move-result v2

    invoke-static {v4, v2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v1

    add-long/2addr p1, v4

    add-int/2addr v0, v1

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzbdz:J

    cmp-long v4, p1, v1

    if-nez v4, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbic:Lcom/google/android/gms/internal/ads/zzrt;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzrt;->zza(Lcom/google/android/gms/internal/ads/zzrs;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqu;->zzjq()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzbe(I)I
    .locals 6

    .line 196
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajh:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbki:Lcom/google/android/gms/internal/ads/zzqu;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzbko:Z

    if-eqz v1, :cond_0

    .line 199
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzbkq:Lcom/google/android/gms/internal/ads/zzqu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbki:Lcom/google/android/gms/internal/ads/zzqu;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbki:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbic:Lcom/google/android/gms/internal/ads/zzrt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzrt;->zzjt()Lcom/google/android/gms/internal/ads/zzrs;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbki:Lcom/google/android/gms/internal/ads/zzqu;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzqu;->zzbdz:J

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajh:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzqu;-><init>(JI)V

    .line 201
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzbkp:Lcom/google/android/gms/internal/ads/zzrs;

    .line 202
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzbkq:Lcom/google/android/gms/internal/ads/zzqu;

    const/4 v1, 0x1

    .line 203
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzbko:Z

    .line 204
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final zzdu(J)V
    .locals 4

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzbdz:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 118
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbic:Lcom/google/android/gms/internal/ads/zzrt;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzbkp:Lcom/google/android/gms/internal/ads/zzrs;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzrt;->zza(Lcom/google/android/gms/internal/ads/zzrs;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqu;->zzjq()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzjh()V
    .locals 7

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqr;->zzjh()V

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    .line 181
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzbko:Z

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbki:Lcom/google/android/gms/internal/ads/zzqu;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzbko:Z

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzbkn:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzbkn:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajh:I

    div-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 183
    new-array v1, v2, [Lcom/google/android/gms/internal/ads/zzrs;

    const/4 v2, 0x0

    .line 185
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 186
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzbkp:Lcom/google/android/gms/internal/ads/zzrs;

    aput-object v3, v1, v2

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqu;->zzjq()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbic:Lcom/google/android/gms/internal/ads/zzrt;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzrt;->zza([Lcom/google/android/gms/internal/ads/zzrs;)V

    .line 190
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajh:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzqu;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbki:Lcom/google/android/gms/internal/ads/zzqu;

    .line 192
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajn:J

    .line 193
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbic:Lcom/google/android/gms/internal/ads/zzrt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrt;->zzn()V

    return-void
.end method

.method private final zzjo()Z
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkg:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private final zzjp()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkg:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjh()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkg:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjh()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlj;Lcom/google/android/gms/internal/ads/zznd;ZZJ)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 34
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkj:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkf:Lcom/google/android/gms/internal/ads/zzqs;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzqr;->zza(Lcom/google/android/gms/internal/ads/zzlj;Lcom/google/android/gms/internal/ads/zznd;ZZLcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzqs;)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_10

    const/4 v2, -0x4

    if-eq v1, v2, :cond_1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    return v2

    .line 102
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 38
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzmy;->zzic()Z

    move-result v1

    if-nez v1, :cond_f

    .line 39
    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/zznd;->zzaga:J

    cmp-long v1, v3, p5

    if-gez v1, :cond_2

    const/high16 v1, -0x80000000

    .line 40
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzmy;->zzal(I)V

    .line 41
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zznd;->zzeo()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 42
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkf:Lcom/google/android/gms/internal/ads/zzqs;

    .line 43
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzqs;->zzajx:J

    .line 44
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzst;->reset(I)V

    .line 45
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzst;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzqt;->zza(J[BI)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 47
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzst;->data:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v9, v5, 0x80

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_0
    and-int/lit8 v5, v5, 0x7f

    .line 50
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zznd;->zzaze:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzmz;->iv:[B

    if-nez v11, :cond_4

    const/16 v11, 0x10

    new-array v11, v11, [B

    .line 51
    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzmz;->iv:[B

    .line 52
    :cond_4
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zznd;->zzaze:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzmz;->iv:[B

    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zzqt;->zza(J[BI)V

    int-to-long v10, v5

    add-long/2addr v3, v10

    if-eqz v9, :cond_5

    .line 55
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzst;->reset(I)V

    .line 56
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzst;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzqt;->zza(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 58
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzst;->readUnsignedShort()I

    move-result v6

    move v11, v6

    goto :goto_1

    :cond_5
    const/4 v11, 0x1

    .line 60
    :goto_1
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zznd;->zzaze:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzmz;->numBytesOfClearData:[I

    if-eqz v5, :cond_6

    .line 61
    array-length v6, v5

    if-ge v6, v11, :cond_7

    .line 62
    :cond_6
    new-array v5, v11, [I

    :cond_7
    move-object v12, v5

    .line 63
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zznd;->zzaze:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzmz;->numBytesOfEncryptedData:[I

    if-eqz v5, :cond_8

    .line 64
    array-length v6, v5

    if-ge v6, v11, :cond_9

    .line 65
    :cond_8
    new-array v5, v11, [I

    :cond_9
    move-object v13, v5

    if-eqz v9, :cond_a

    mul-int/lit8 v5, v11, 0x6

    .line 68
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzst;->reset(I)V

    .line 69
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzst;->data:[B

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzqt;->zza(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 71
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzst;->setPosition(I)V

    :goto_2
    if-ge v7, v11, :cond_b

    .line 73
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzst;->readUnsignedShort()I

    move-result v5

    aput v5, v12, v7

    .line 74
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbac:Lcom/google/android/gms/internal/ads/zzst;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzst;->zzgg()I

    move-result v5

    aput v5, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 77
    :cond_a
    aput v7, v12, v7

    .line 78
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzqs;->size:I

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzqs;->zzajx:J

    sub-long v9, v3, v9

    long-to-int v6, v9

    sub-int/2addr v5, v6

    aput v5, v13, v7

    .line 79
    :cond_b
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzqs;->zzbbj:Lcom/google/android/gms/internal/ads/zznx;

    .line 80
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zznd;->zzaze:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zznx;->zzazq:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzmz;->iv:[B

    iget v5, v5, Lcom/google/android/gms/internal/ads/zznx;->zzazp:I

    move/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzmz;->set(I[I[I[B[BI)V

    .line 81
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzqs;->zzajx:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    int-to-long v9, v4

    add-long/2addr v5, v9

    .line 82
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzqs;->zzajx:J

    .line 83
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzqs;->size:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzqs;->size:I

    .line 84
    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkf:Lcom/google/android/gms/internal/ads/zzqs;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzqs;->size:I

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zznd;->zzan(I)V

    .line 85
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkf:Lcom/google/android/gms/internal/ads/zzqs;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzqs;->zzajx:J

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zznd;->zzde:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzqs;->size:I

    .line 87
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzqt;->zzdu(J)V

    :cond_d
    :goto_3
    if-lez v1, :cond_e

    .line 89
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzqu;->zzbkn:J

    sub-long v6, v3, v6

    long-to-int v7, v6

    .line 90
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzajh:I

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 91
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzqu;->zzbkp:Lcom/google/android/gms/internal/ads/zzrs;

    .line 92
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzrs;->data:[B

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzrs;->zzbj(I)I

    move-result v7

    invoke-virtual {v5, v9, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v9, v6

    add-long/2addr v3, v9

    sub-int/2addr v1, v6

    .line 95
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzqu;->zzbdz:J

    cmp-long v9, v3, v6

    if-nez v9, :cond_d

    .line 96
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbic:Lcom/google/android/gms/internal/ads/zzrt;

    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/ads/zzrt;->zza(Lcom/google/android/gms/internal/ads/zzrs;)V

    .line 97
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqu;->zzjq()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkh:Lcom/google/android/gms/internal/ads/zzqu;

    goto :goto_3

    .line 99
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkf:Lcom/google/android/gms/internal/ads/zzqs;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzqs;->zzbkd:J

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzqt;->zzdu(J)V

    :cond_f
    return v2

    :cond_10
    move-object/from16 v1, p1

    .line 36
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlj;->zzaue:Lcom/google/android/gms/internal/ads/zzlh;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkj:Lcom/google/android/gms/internal/ads/zzlh;

    return v2
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzno;IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjo()Z

    move-result p3

    const/4 v0, -0x1

    if-nez p3, :cond_1

    .line 137
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzno;->zzaq(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    return p1

    .line 139
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 141
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzqt;->zzbe(I)I

    move-result p2

    .line 142
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbki:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzqu;->zzbkp:Lcom/google/android/gms/internal/ads/zzrs;

    .line 143
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzrs;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    .line 144
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzrs;->zzbj(I)I

    move-result p3

    .line 145
    invoke-interface {p1, v1, p3, p2}, Lcom/google/android/gms/internal/ads/zzno;->read([BII)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 148
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    .line 149
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajn:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjp()V

    return p1

    .line 147
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 153
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjp()V

    throw p1
.end method

.method public final zza(JIIILcom/google/android/gms/internal/ads/zznx;)V
    .locals 10

    move-object v1, p0

    .line 167
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    move-wide v3, p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqr;->zzep(J)V

    return-void

    :cond_0
    move-wide v3, p1

    .line 170
    :try_start_0
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzqt;->zzajn:J

    move v0, p4

    int-to-long v7, v0

    sub-long v7, v5, v7

    .line 171
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    move-wide v3, p1

    move v5, p3

    move-wide v6, v7

    move v8, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzqr;->zza(JIJILcom/google/android/gms/internal/ads/zznx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjp()V

    return-void

    :catchall_0
    move-exception v0

    .line 174
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjp()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqv;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkm:Lcom/google/android/gms/internal/ads/zzqv;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzst;I)V
    .locals 5

    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzst;->zzac(I)V

    return-void

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 158
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzqt;->zzbe(I)I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbki:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzbkp:Lcom/google/android/gms/internal/ads/zzrs;

    .line 160
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrs;->data:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzrs;->zzbj(I)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzst;->zzb([BII)V

    .line 161
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajp:I

    .line 162
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajn:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzajn:J

    sub-int/2addr p2, v0

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjp()V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzlh;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzqr;->zzg(Lcom/google/android/gms/internal/ads/zzlh;)Z

    move-result v1

    .line 131
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkl:Lcom/google/android/gms/internal/ads/zzlh;

    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkk:Z

    .line 133
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkm:Lcom/google/android/gms/internal/ads/zzqv;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 134
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzqv;->zzf(Lcom/google/android/gms/internal/ads/zzlh;)V

    :cond_1
    return-void
.end method

.method public final zzh(JZ)Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzqr;->zzg(JZ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqt;->zzdu(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzje()J
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqr;->zzje()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzjj()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqr;->zzjj()I

    move-result v0

    return v0
.end method

.method public final zzjk()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqr;->zzjk()Z

    move-result v0

    return v0
.end method

.method public final zzjl()Lcom/google/android/gms/internal/ads/zzlh;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqr;->zzjl()Lcom/google/android/gms/internal/ads/zzlh;

    move-result-object v0

    return-object v0
.end method

.method public final zzjn()V
    .locals 5

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqr;->zzjm()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzqt;->zzdu(J)V

    :cond_0
    return-void
.end method

.method public final zzk(Z)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkg:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzjh()V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbke:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqr;->zzji()V

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbkj:Lcom/google/android/gms/internal/ads/zzlh;

    :cond_1
    return-void
.end method
