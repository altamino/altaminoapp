.class public final Lcom/google/android/gms/internal/ads/zziv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzid;
.implements Lcom/google/android/gms/internal/ads/zzio;


# instance fields
.field private final zzamg:Lcom/google/android/gms/internal/ads/zzkm;

.field private final zzamh:Lcom/google/android/gms/internal/ads/zzkm;

.field private final zzami:Lcom/google/android/gms/internal/ads/zzkm;

.field private final zzamj:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzir;",
            ">;"
        }
    .end annotation
.end field

.field private zzamk:I

.field private zzaml:J

.field private zzamm:I

.field private zzamn:J

.field private zzamo:I

.field private zzamp:Lcom/google/android/gms/internal/ads/zzkm;

.field private zzamq:I

.field private zzamr:I

.field private zzams:I

.field private zzamt:Lcom/google/android/gms/internal/ads/zzif;

.field private zzamu:[Lcom/google/android/gms/internal/ads/zziw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkm;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzkm;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzami:Lcom/google/android/gms/internal/ads/zzkm;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzamj:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzkj;->zzaqt:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzkm;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzamg:Lcom/google/android/gms/internal/ads/zzkm;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkm;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzkm;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzamh:Lcom/google/android/gms/internal/ads/zzkm;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzamk:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzie;Lcom/google/android/gms/internal/ads/zzij;)I
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 14
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamk:I

    const-wide/32 v4, 0x7fffffff

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v3, :cond_30

    const-wide/16 v11, 0x0

    const-wide/32 v13, 0x40000

    if-eq v3, v8, :cond_8

    const-wide v3, 0x7fffffffffffffffL

    move-wide v5, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 196
    :goto_1
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamu:[Lcom/google/android/gms/internal/ads/zziw;

    array-length v10, v15

    if-ge v3, v10, :cond_1

    .line 197
    aget-object v10, v15, v3

    .line 198
    iget v15, v10, Lcom/google/android/gms/internal/ads/zziw;->zzamy:I

    .line 199
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zziw;->zzamw:Lcom/google/android/gms/internal/ads/zziz;

    iget v8, v10, Lcom/google/android/gms/internal/ads/zziz;->zzand:I

    if-eq v15, v8, :cond_0

    .line 200
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zziz;->zzahq:[J

    aget-wide v18, v8, v15

    cmp-long v8, v18, v5

    if-gez v8, :cond_0

    move v4, v3

    move-wide/from16 v5, v18

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v4, v7, :cond_2

    return v7

    .line 209
    :cond_2
    aget-object v3, v15, v4

    .line 210
    iget v4, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamy:I

    .line 211
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamw:Lcom/google/android/gms/internal/ads/zziz;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zziz;->zzahq:[J

    aget-wide v9, v5, v4

    .line 212
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzie;->getPosition()J

    move-result-wide v5

    sub-long v5, v9, v5

    iget v15, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    move-wide/from16 v19, v9

    int-to-long v8, v15

    add-long/2addr v5, v8

    cmp-long v8, v5, v11

    if-ltz v8, :cond_7

    cmp-long v8, v5, v13

    if-ltz v8, :cond_3

    move-wide/from16 v5, v19

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_3
    long-to-int v2, v5

    .line 216
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzie;->zzr(I)V

    .line 217
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamw:Lcom/google/android/gms/internal/ads/zziz;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zziz;->zzahp:[I

    aget v2, v2, v4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamq:I

    .line 218
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamv:Lcom/google/android/gms/internal/ads/zzix;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzix;->zzamf:I

    if-eq v2, v7, :cond_5

    .line 219
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamh:Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkm;->data:[B

    const/4 v6, 0x0

    .line 220
    aput-byte v6, v5, v6

    const/4 v7, 0x1

    .line 221
    aput-byte v6, v5, v7

    const/4 v7, 0x2

    .line 222
    aput-byte v6, v5, v7

    const/4 v5, 0x4

    rsub-int/lit8 v15, v2, 0x4

    .line 225
    :goto_2
    iget v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamq:I

    if-ge v5, v6, :cond_6

    .line 226
    iget v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzams:I

    if-nez v5, :cond_4

    .line 227
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamh:Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkm;->data:[B

    invoke-interface {v1, v5, v15, v2}, Lcom/google/android/gms/internal/ads/zzie;->readFully([BII)V

    .line 228
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamh:Lcom/google/android/gms/internal/ads/zzkm;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzkm;->setPosition(I)V

    .line 229
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamh:Lcom/google/android/gms/internal/ads/zzkm;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzams:I

    .line 230
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamg:Lcom/google/android/gms/internal/ads/zzkm;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzkm;->setPosition(I)V

    .line 231
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamx:Lcom/google/android/gms/internal/ads/zzip;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamg:Lcom/google/android/gms/internal/ads/zzkm;

    const/4 v7, 0x4

    invoke-interface {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzip;->zza(Lcom/google/android/gms/internal/ads/zzkm;I)V

    .line 232
    iget v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    add-int/2addr v5, v7

    iput v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    .line 233
    iget v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamq:I

    add-int/2addr v5, v15

    iput v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamq:I

    goto :goto_2

    .line 234
    :cond_4
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamx:Lcom/google/android/gms/internal/ads/zzip;

    invoke-interface {v6, v1, v5}, Lcom/google/android/gms/internal/ads/zzip;->zza(Lcom/google/android/gms/internal/ads/zzie;I)I

    move-result v5

    .line 235
    iget v6, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    .line 236
    iget v6, v0, Lcom/google/android/gms/internal/ads/zziv;->zzams:I

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/gms/internal/ads/zziv;->zzams:I

    goto :goto_2

    .line 239
    :cond_5
    :goto_3
    iget v2, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamq:I

    if-ge v2, v5, :cond_6

    .line 240
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamx:Lcom/google/android/gms/internal/ads/zzip;

    sub-int/2addr v5, v2

    invoke-interface {v6, v1, v5}, Lcom/google/android/gms/internal/ads/zzip;->zza(Lcom/google/android/gms/internal/ads/zzie;I)I

    move-result v2

    .line 241
    iget v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    .line 242
    iget v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzams:I

    sub-int/2addr v5, v2

    iput v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzams:I

    goto :goto_3

    .line 244
    :cond_6
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamx:Lcom/google/android/gms/internal/ads/zzip;

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamw:Lcom/google/android/gms/internal/ads/zziz;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zziz;->zzane:[J

    aget-wide v10, v2, v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zziz;->zzajr:[I

    aget v12, v1, v4

    iget v13, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamq:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzip;->zza(JIII[B)V

    .line 245
    iget v1, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamy:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v3, Lcom/google/android/gms/internal/ads/zziw;->zzamy:I

    const/4 v3, 0x0

    .line 246
    iput v3, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    .line 247
    iput v3, v0, Lcom/google/android/gms/internal/ads/zziv;->zzams:I

    return v3

    :cond_7
    const/4 v4, 0x1

    move-wide/from16 v5, v19

    .line 214
    :goto_4
    iput-wide v5, v2, Lcom/google/android/gms/internal/ads/zzij;->zzahv:J

    return v4

    :cond_8
    const/4 v3, 0x0

    .line 48
    iput v3, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamk:I

    .line 49
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamn:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamo:I

    int-to-long v7, v3

    sub-long v7, v11, v7

    add-long/2addr v9, v7

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    int-to-long v7, v3

    sub-long v7, v11, v7

    .line 51
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamp:Lcom/google/android/gms/internal/ads/zzkm;

    if-nez v3, :cond_a

    cmp-long v3, v11, v13

    if-gez v3, :cond_9

    cmp-long v3, v11, v4

    if-lez v3, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_b

    .line 53
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzij;->zzahv:J

    goto :goto_6

    .line 54
    :cond_b
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamp:Lcom/google/android/gms/internal/ads/zzkm;

    if-eqz v4, :cond_c

    .line 55
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzkm;->data:[B

    iget v5, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamo:I

    long-to-int v8, v7

    invoke-interface {v1, v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzie;->readFully([BII)V

    .line 56
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamj:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 57
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamj:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzir;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzis;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamm:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamp:Lcom/google/android/gms/internal/ads/zzkm;

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzis;-><init>(ILcom/google/android/gms/internal/ads/zzkm;)V

    .line 58
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzir;->zzama:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    long-to-int v4, v7

    .line 60
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzie;->zzr(I)V

    .line 61
    :cond_d
    :goto_6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamj:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamj:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzir;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzir;->zzalz:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    cmp-long v9, v4, v7

    if-nez v9, :cond_2e

    .line 62
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zziv;->zzamj:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzir;

    .line 63
    iget v5, v4, Lcom/google/android/gms/internal/ads/zziq;->type:I

    sget v7, Lcom/google/android/gms/internal/ads/zziq;->zzako:I

    if-ne v5, v7, :cond_2c

    .line 65
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 66
    :goto_7
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzir;->zzamb:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2b

    .line 67
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzir;->zzamb:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzir;

    .line 68
    iget v9, v8, Lcom/google/android/gms/internal/ads/zziq;->type:I

    sget v10, Lcom/google/android/gms/internal/ads/zziq;->zzakq:I

    if-ne v9, v10, :cond_2a

    .line 69
    sget v9, Lcom/google/android/gms/internal/ads/zziq;->zzakp:I

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzir;->zzv(I)Lcom/google/android/gms/internal/ads/zzis;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzit;->zza(Lcom/google/android/gms/internal/ads/zzir;Lcom/google/android/gms/internal/ads/zzis;)Lcom/google/android/gms/internal/ads/zzix;

    move-result-object v9

    if-eqz v9, :cond_2a

    .line 70
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzix;->type:I

    const v11, 0x736f756e

    if-eq v10, v11, :cond_e

    const v11, 0x76696465

    if-ne v10, v11, :cond_2a

    .line 71
    :cond_e
    sget v10, Lcom/google/android/gms/internal/ads/zziq;->zzakr:I

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzir;->zzw(I)Lcom/google/android/gms/internal/ads/zzir;

    move-result-object v8

    sget v10, Lcom/google/android/gms/internal/ads/zziq;->zzaks:I

    .line 72
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzir;->zzw(I)Lcom/google/android/gms/internal/ads/zzir;

    move-result-object v8

    sget v10, Lcom/google/android/gms/internal/ads/zziq;->zzakt:I

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzir;->zzw(I)Lcom/google/android/gms/internal/ads/zzir;

    move-result-object v8

    .line 74
    sget v10, Lcom/google/android/gms/internal/ads/zziq;->zzalw:I

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzir;->zzv(I)Lcom/google/android/gms/internal/ads/zzis;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzis;->zzamc:Lcom/google/android/gms/internal/ads/zzkm;

    .line 75
    sget v11, Lcom/google/android/gms/internal/ads/zziq;->zzalx:I

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzir;->zzv(I)Lcom/google/android/gms/internal/ads/zzis;

    move-result-object v11

    if-nez v11, :cond_f

    .line 77
    sget v11, Lcom/google/android/gms/internal/ads/zziq;->zzaly:I

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzir;->zzv(I)Lcom/google/android/gms/internal/ads/zzis;

    move-result-object v11

    .line 78
    :cond_f
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzis;->zzamc:Lcom/google/android/gms/internal/ads/zzkm;

    .line 79
    sget v13, Lcom/google/android/gms/internal/ads/zziq;->zzalv:I

    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzir;->zzv(I)Lcom/google/android/gms/internal/ads/zzis;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzis;->zzamc:Lcom/google/android/gms/internal/ads/zzkm;

    .line 80
    sget v14, Lcom/google/android/gms/internal/ads/zziq;->zzals:I

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzir;->zzv(I)Lcom/google/android/gms/internal/ads/zzis;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzis;->zzamc:Lcom/google/android/gms/internal/ads/zzkm;

    .line 81
    sget v15, Lcom/google/android/gms/internal/ads/zziq;->zzalt:I

    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzir;->zzv(I)Lcom/google/android/gms/internal/ads/zzis;

    move-result-object v15

    if-eqz v15, :cond_10

    .line 82
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzis;->zzamc:Lcom/google/android/gms/internal/ads/zzkm;

    goto :goto_8

    :cond_10
    const/4 v15, 0x0

    .line 83
    :goto_8
    sget v6, Lcom/google/android/gms/internal/ads/zziq;->zzalu:I

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzir;->zzv(I)Lcom/google/android/gms/internal/ads/zzis;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 84
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzis;->zzamc:Lcom/google/android/gms/internal/ads/zzkm;

    goto :goto_9

    :cond_11
    const/4 v6, 0x0

    :goto_9
    const/16 v8, 0xc

    .line 85
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzkm;->setPosition(I)V

    .line 86
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v21

    .line 87
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v8

    .line 88
    new-array v2, v8, [I

    .line 89
    new-array v1, v8, [J

    move/from16 v23, v3

    .line 90
    new-array v3, v8, [J

    move-object/from16 v24, v4

    .line 91
    new-array v4, v8, [I

    move-object/from16 v25, v5

    const/16 v5, 0xc

    .line 92
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzkm;->setPosition(I)V

    move/from16 v26, v7

    .line 93
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v7

    .line 94
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzkm;->setPosition(I)V

    .line 95
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v5

    const/4 v0, 0x1

    sub-int/2addr v5, v0

    move-object/from16 v27, v9

    .line 96
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzkm;->readInt()I

    move-result v9

    if-ne v9, v0, :cond_12

    const/4 v9, 0x1

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    if-eqz v9, :cond_29

    .line 99
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v9

    const/4 v0, 0x4

    .line 100
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzac(I)V

    if-lez v5, :cond_13

    .line 103
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    move/from16 v22, v0

    const/16 v0, 0xc

    goto :goto_b

    :cond_13
    const/16 v17, 0x1

    const/16 v0, 0xc

    const/16 v22, -0x1

    .line 106
    :goto_b
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzkm;->setPosition(I)V

    .line 107
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    .line 108
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v29

    .line 109
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v30

    if-eqz v6, :cond_14

    .line 114
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzkm;->setPosition(I)V

    .line 115
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    .line 116
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v32

    .line 117
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzkm;->readInt()I

    move-result v33

    goto :goto_c

    :cond_14
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    :goto_c
    if-eqz v15, :cond_15

    .line 121
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzkm;->setPosition(I)V

    .line 122
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v0

    .line 123
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move/from16 v35, v0

    goto :goto_d

    :cond_15
    const/16 v34, -0x1

    const/16 v35, 0x0

    .line 124
    :goto_d
    iget v0, v11, Lcom/google/android/gms/internal/ads/zziq;->type:I

    move/from16 v36, v5

    sget v5, Lcom/google/android/gms/internal/ads/zziq;->zzalx:I

    if-ne v0, v5, :cond_16

    .line 125
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzkm;->zzge()J

    move-result-wide v37

    goto :goto_e

    .line 126
    :cond_16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzkm;->zzgh()J

    move-result-wide v37

    :goto_e
    move/from16 v41, v9

    move/from16 v40, v22

    move/from16 v5, v33

    move/from16 v39, v36

    const/4 v0, 0x0

    const/16 v36, 0x0

    move-object/from16 v22, v13

    move/from16 v33, v32

    move/from16 v13, v34

    move-object/from16 v32, v12

    move/from16 v12, v30

    move/from16 v34, v31

    const-wide/16 v30, 0x0

    :goto_f
    if-ge v0, v8, :cond_22

    .line 129
    aput-wide v37, v3, v0

    if-nez v21, :cond_17

    .line 130
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v42

    goto :goto_10

    :cond_17
    move/from16 v42, v21

    :goto_10
    aput v42, v2, v0

    move-object/from16 v42, v2

    move-object/from16 v43, v3

    int-to-long v2, v5

    add-long v2, v30, v2

    .line 131
    aput-wide v2, v1, v0

    if-nez v15, :cond_18

    const/4 v2, 0x1

    goto :goto_11

    :cond_18
    const/4 v2, 0x0

    .line 132
    :goto_11
    aput v2, v4, v0

    if-ne v0, v13, :cond_19

    const/4 v2, 0x1

    .line 134
    aput v2, v4, v0

    add-int/lit8 v35, v35, -0x1

    if-lez v35, :cond_19

    .line 137
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v3

    sub-int/2addr v3, v2

    move v13, v3

    :cond_19
    int-to-long v2, v12

    add-long v30, v30, v2

    add-int/lit8 v29, v29, -0x1

    if-nez v29, :cond_1a

    if-lez v28, :cond_1a

    .line 141
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v2

    .line 142
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v3

    add-int/lit8 v28, v28, -0x1

    move/from16 v29, v2

    move v12, v3

    :cond_1a
    if-eqz v6, :cond_1b

    add-int/lit8 v33, v33, -0x1

    if-nez v33, :cond_1b

    if-lez v34, :cond_1b

    .line 147
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v2

    .line 148
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzkm;->readInt()I

    move-result v3

    add-int/lit8 v34, v34, -0x1

    move/from16 v33, v2

    move v5, v3

    :cond_1b
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_20

    add-int/lit8 v2, v36, 0x1

    if-ge v2, v7, :cond_1d

    .line 154
    iget v3, v11, Lcom/google/android/gms/internal/ads/zziq;->type:I

    move/from16 v44, v5

    sget v5, Lcom/google/android/gms/internal/ads/zziq;->zzalx:I

    if-ne v3, v5, :cond_1c

    .line 155
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/ads/zzkm;->zzge()J

    move-result-wide v37

    goto :goto_12

    .line 156
    :cond_1c
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/ads/zzkm;->zzgh()J

    move-result-wide v37

    goto :goto_12

    :cond_1d
    move/from16 v44, v5

    :goto_12
    move/from16 v3, v40

    if-ne v2, v3, :cond_1e

    .line 158
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v41

    move/from16 v16, v3

    move-object/from16 v5, v22

    const/4 v3, 0x4

    .line 159
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzkm;->zzac(I)V

    add-int/lit8 v39, v39, -0x1

    if-lez v39, :cond_1f

    .line 162
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzkm;->zzgg()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v40, v16, -0x1

    move/from16 v16, v40

    goto :goto_13

    :cond_1e
    move/from16 v16, v3

    move-object/from16 v5, v22

    const/4 v3, 0x4

    :cond_1f
    :goto_13
    move/from16 v36, v2

    move-object/from16 v22, v4

    if-ge v2, v7, :cond_21

    move/from16 v9, v41

    goto :goto_14

    :cond_20
    move/from16 v44, v5

    move-object/from16 v5, v22

    move/from16 v16, v40

    const/4 v3, 0x4

    .line 165
    aget v2, v42, v0

    move-object/from16 v22, v4

    int-to-long v3, v2

    add-long v37, v37, v3

    :cond_21
    :goto_14
    add-int/lit8 v0, v0, 0x1

    move/from16 v40, v16

    move-object/from16 v4, v22

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v22, v5

    move/from16 v5, v44

    goto/16 :goto_f

    :cond_22
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move-object/from16 v22, v4

    const-wide/32 v2, 0xf4240

    move-object/from16 v0, v27

    .line 167
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzix;->zzcs:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzkq;->zza([JJJ)V

    if-nez v35, :cond_23

    const/4 v2, 0x1

    goto :goto_15

    :cond_23
    const/4 v2, 0x0

    .line 168
    :goto_15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkh;->checkArgument(Z)V

    if-nez v29, :cond_24

    const/4 v2, 0x1

    goto :goto_16

    :cond_24
    const/4 v2, 0x0

    .line 169
    :goto_16
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkh;->checkArgument(Z)V

    if-nez v9, :cond_25

    const/4 v2, 0x1

    goto :goto_17

    :cond_25
    const/4 v2, 0x0

    .line 170
    :goto_17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkh;->checkArgument(Z)V

    if-nez v28, :cond_26

    const/4 v2, 0x1

    goto :goto_18

    :cond_26
    const/4 v2, 0x0

    .line 171
    :goto_18
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkh;->checkArgument(Z)V

    if-nez v34, :cond_27

    const/4 v2, 0x1

    goto :goto_19

    :cond_27
    const/4 v2, 0x0

    .line 172
    :goto_19
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkh;->checkArgument(Z)V

    .line 173
    new-instance v2, Lcom/google/android/gms/internal/ads/zziz;

    move-object/from16 v5, v22

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v2, v4, v3, v1, v5}, Lcom/google/android/gms/internal/ads/zziz;-><init>([J[I[J[I)V

    .line 175
    iget v1, v2, Lcom/google/android/gms/internal/ads/zziz;->zzand:I

    if-eqz v1, :cond_28

    .line 176
    new-instance v1, Lcom/google/android/gms/internal/ads/zziw;

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamt:Lcom/google/android/gms/internal/ads/zzif;

    move/from16 v15, v26

    invoke-interface {v4, v15}, Lcom/google/android/gms/internal/ads/zzif;->zzs(I)Lcom/google/android/gms/internal/ads/zzip;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zziw;-><init>(Lcom/google/android/gms/internal/ads/zzix;Lcom/google/android/gms/internal/ads/zziz;Lcom/google/android/gms/internal/ads/zzip;)V

    .line 177
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zziw;->zzamx:Lcom/google/android/gms/internal/ads/zzip;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzix;->zzame:Lcom/google/android/gms/internal/ads/zzhj;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzip;->zza(Lcom/google/android/gms/internal/ads/zzhj;)V

    move-object/from16 v0, v25

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_28
    move-object/from16 v3, p0

    move-object/from16 v0, v25

    move/from16 v15, v26

    goto :goto_1a

    :cond_29
    move-object/from16 v3, p0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stsc first chunk must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    move/from16 v23, v3

    move-object/from16 v24, v4

    move v15, v7

    move-object v3, v0

    move-object v0, v5

    :goto_1a
    add-int/lit8 v7, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v0

    move-object v0, v3

    move/from16 v3, v23

    move-object/from16 v4, v24

    goto/16 :goto_7

    :cond_2b
    move/from16 v23, v3

    const/4 v1, 0x0

    move-object v3, v0

    move-object v0, v5

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zziw;

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zziw;

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamu:[Lcom/google/android/gms/internal/ads/zziw;

    .line 181
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamt:Lcom/google/android/gms/internal/ads/zzif;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzif;->zzfi()V

    .line 182
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamt:Lcom/google/android/gms/internal/ads/zzif;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzif;->zza(Lcom/google/android/gms/internal/ads/zzio;)V

    const/4 v0, 0x2

    .line 183
    iput v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamk:I

    goto :goto_1b

    :cond_2c
    move/from16 v23, v3

    move-object/from16 v24, v4

    move-object v3, v0

    const/4 v0, 0x2

    .line 185
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamj:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 186
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamj:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzir;

    .line 187
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzir;->zzamb:Ljava/util/List;

    move-object/from16 v4, v24

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_1b
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v0, v3

    move/from16 v3, v23

    goto/16 :goto_6

    :cond_2e
    move/from16 v23, v3

    move-object v3, v0

    if-eqz v23, :cond_2f

    const/4 v0, 0x1

    return v0

    :cond_2f
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v0, v3

    goto/16 :goto_0

    :cond_30
    move-object v3, v0

    const/4 v0, 0x1

    .line 16
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zziv;->zzami:Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->data:[B

    const/16 v2, 0x8

    move-object/from16 v6, p1

    const/4 v8, 0x0

    invoke-interface {v6, v1, v8, v2, v0}, Lcom/google/android/gms/internal/ads/zzie;->zza([BIIZ)Z

    move-result v1

    if-nez v1, :cond_31

    goto/16 :goto_23

    .line 18
    :cond_31
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzami:Lcom/google/android/gms/internal/ads/zzkm;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzkm;->setPosition(I)V

    .line 19
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzami:Lcom/google/android/gms/internal/ads/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzge()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamn:J

    .line 20
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzami:Lcom/google/android/gms/internal/ads/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->readInt()I

    move-result v0

    iput v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamm:I

    .line 21
    iget-wide v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamn:J

    const-wide/16 v9, 0x1

    cmp-long v7, v0, v9

    if-nez v7, :cond_32

    .line 22
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzami:Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkm;->data:[B

    invoke-interface {v6, v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzie;->readFully([BII)V

    .line 23
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzami:Lcom/google/android/gms/internal/ads/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->readLong()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamn:J

    .line 24
    iget-wide v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    const-wide/16 v11, 0x10

    add-long/2addr v0, v11

    iput-wide v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    const/16 v0, 0x10

    .line 25
    iput v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamo:I

    goto :goto_1c

    .line 26
    :cond_32
    iget-wide v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    const-wide/16 v11, 0x8

    add-long/2addr v0, v11

    iput-wide v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    .line 27
    iput v2, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamo:I

    .line 28
    :goto_1c
    iget v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamm:I

    .line 29
    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzako:I

    if-eq v0, v1, :cond_34

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzakq:I

    if-eq v0, v1, :cond_34

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzakr:I

    if-eq v0, v1, :cond_34

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzaks:I

    if-eq v0, v1, :cond_34

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzakt:I

    if-ne v0, v1, :cond_33

    goto :goto_1d

    :cond_33
    const/4 v0, 0x0

    goto :goto_1e

    :cond_34
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_36

    .line 31
    iget-wide v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamn:J

    cmp-long v2, v0, v9

    if-nez v2, :cond_35

    .line 32
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamj:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzir;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamm:I

    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    add-long/2addr v9, v0

    iget v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamo:I

    int-to-long v0, v0

    sub-long/2addr v9, v0

    invoke-direct {v4, v5, v9, v10}, Lcom/google/android/gms/internal/ads/zzir;-><init>(IJ)V

    invoke-virtual {v2, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 33
    :cond_35
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamj:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzir;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamm:I

    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    add-long/2addr v9, v0

    iget v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamo:I

    int-to-long v0, v0

    sub-long/2addr v9, v0

    invoke-direct {v4, v5, v9, v10}, Lcom/google/android/gms/internal/ads/zzir;-><init>(IJ)V

    invoke-virtual {v2, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :goto_1f
    const/4 v0, 0x0

    .line 34
    iput v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamk:I

    const/4 v8, 0x1

    goto/16 :goto_23

    .line 35
    :cond_36
    iget v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamm:I

    .line 36
    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzakz:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzakp:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzala:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzalp:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzalq:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzalb:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzaka:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzaku:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzake:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzakc:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzals:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzalt:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzalu:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzalv:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzalw:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzalx:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzaly:I

    if-eq v0, v1, :cond_38

    sget v1, Lcom/google/android/gms/internal/ads/zziq;->zzaky:I

    if-ne v0, v1, :cond_37

    goto :goto_20

    :cond_37
    const/4 v0, 0x0

    goto :goto_21

    :cond_38
    :goto_20
    const/4 v0, 0x1

    :goto_21
    if-eqz v0, :cond_3a

    .line 38
    iget-wide v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamn:J

    cmp-long v7, v0, v4

    if-gez v7, :cond_39

    const/4 v0, 0x1

    goto :goto_22

    :cond_39
    const/4 v0, 0x0

    :goto_22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkh;->checkState(Z)V

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkm;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamn:J

    long-to-int v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzkm;-><init>(I)V

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamp:Lcom/google/android/gms/internal/ads/zzkm;

    .line 40
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzami:Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkm;->data:[B

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamp:Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->data:[B

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x1

    .line 41
    iput v8, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamk:I

    goto :goto_23

    :cond_3a
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 42
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamp:Lcom/google/android/gms/internal/ads/zzkm;

    .line 43
    iput v8, v3, Lcom/google/android/gms/internal/ads/zziv;->zzamk:I

    :goto_23
    if-nez v8, :cond_3b

    const/4 v0, -0x1

    return v0

    :cond_3b
    move-object/from16 v2, p2

    move-object v0, v3

    move-object v1, v6

    goto/16 :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzif;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziv;->zzamt:Lcom/google/android/gms/internal/ads/zzif;

    return-void
.end method

.method public final zzdq(J)J
    .locals 11

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move-wide v2, v1

    const/4 v1, 0x0

    .line 252
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zziv;->zzamu:[Lcom/google/android/gms/internal/ads/zziw;

    array-length v5, v4

    if-ge v1, v5, :cond_6

    .line 253
    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zziw;->zzamw:Lcom/google/android/gms/internal/ads/zziz;

    .line 255
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zziz;->zzane:[J

    const/4 v6, 0x1

    invoke-static {v5, p1, p2, v6, v0}, Lcom/google/android/gms/internal/ads/zzkq;->zza([JJZZ)I

    move-result v5

    :goto_1
    const/4 v7, -0x1

    if-ltz v5, :cond_1

    .line 257
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zziz;->zzane:[J

    aget-wide v9, v8, v5

    cmp-long v8, v9, p1

    if-gtz v8, :cond_0

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zziz;->zzajr:[I

    aget v8, v8, v5

    and-int/2addr v8, v6

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_2
    if-ne v5, v7, :cond_4

    .line 264
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zziz;->zzane:[J

    invoke-static {v5, p1, p2, v6, v0}, Lcom/google/android/gms/internal/ads/zzkq;->zzb([JJZZ)I

    move-result v5

    .line 265
    :goto_3
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zziz;->zzane:[J

    array-length v9, v8

    if-ge v5, v9, :cond_3

    .line 266
    aget-wide v9, v8, v5

    cmp-long v8, v9, p1

    if-ltz v8, :cond_2

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zziz;->zzajr:[I

    aget v8, v8, v5

    and-int/2addr v8, v6

    if-eqz v8, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, -0x1

    .line 271
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zziv;->zzamu:[Lcom/google/android/gms/internal/ads/zziw;

    aget-object v7, v6, v1

    iput v5, v7, Lcom/google/android/gms/internal/ads/zziw;->zzamy:I

    .line 272
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zziz;->zzahq:[J

    aget-object v5, v6, v1

    iget v5, v5, Lcom/google/android/gms/internal/ads/zziw;->zzamy:I

    aget-wide v5, v4, v5

    cmp-long v4, v5, v2

    if-gez v4, :cond_5

    move-wide v2, v5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-wide v2
.end method

.method public final zzfc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzfh()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzaml:J

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzamr:I

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzams:I

    return-void
.end method
