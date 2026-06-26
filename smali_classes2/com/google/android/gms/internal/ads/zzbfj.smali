.class final Lcom/google/android/gms/internal/ads/zzbfj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private uri:Landroid/net/Uri;

.field private final zzegg:J

.field private zzegi:J

.field private final zzehm:Lcom/google/android/gms/internal/ads/zzrv;

.field private final zzehn:Lcom/google/android/gms/internal/ads/zzrv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrv;ILcom/google/android/gms/internal/ads/zzrv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzehm:Lcom/google/android/gms/internal/ads/zzrv;

    int-to-long p1, p2

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegg:J

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzehn:Lcom/google/android/gms/internal/ads/zzrv;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzehm:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrv;->close()V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzehn:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrv;->close()V

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfj;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegi:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegg:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    int-to-long v4, p3

    sub-long/2addr v2, v0

    .line 37
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzehm:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzrv;->read([BII)I

    move-result v0

    .line 39
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegi:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegi:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegi:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegg:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    sub-int/2addr p3, v0

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzehn:Lcom/google/android/gms/internal/ads/zzrv;

    add-int/2addr p2, v0

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzrv;->read([BII)I

    move-result p1

    add-int/2addr v0, p1

    .line 44
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegi:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegi:J

    :cond_1
    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzry;)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzry;->uri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzbfj;->uri:Landroid/net/Uri;

    .line 8
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegg:J

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    cmp-long v4, v5, v2

    if-ltz v4, :cond_0

    move-object v2, v10

    goto :goto_1

    .line 11
    :cond_0
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzry;->zzcd:J

    cmp-long v4, v7, v11

    if-eqz v4, :cond_1

    sub-long/2addr v2, v5

    .line 12
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    sub-long/2addr v2, v5

    :goto_0
    move-wide v7, v2

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/zzry;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzry;->uri:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzry;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 17
    :goto_1
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzry;->zzcd:J

    cmp-long v5, v3, v11

    if-eqz v5, :cond_2

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    add-long/2addr v5, v3

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegg:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_2

    move-object v3, v10

    goto :goto_3

    .line 19
    :cond_2
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegg:J

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    .line 20
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzry;->zzcd:J

    cmp-long v5, v3, v11

    if-eqz v5, :cond_3

    .line 21
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    add-long/2addr v5, v3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegg:J

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide/from16 v17, v3

    goto :goto_2

    :cond_3
    move-wide/from16 v17, v11

    .line 23
    :goto_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzry;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzry;->uri:Landroid/net/Uri;

    const/16 v19, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzry;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :goto_3
    const-wide/16 v4, 0x0

    if-eqz v2, :cond_4

    .line 28
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbfj;->zzehm:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Lcom/google/android/gms/internal/ads/zzry;)J

    move-result-wide v6

    goto :goto_4

    :cond_4
    move-wide v6, v4

    :goto_4
    if-eqz v3, :cond_5

    .line 30
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbfj;->zzehn:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Lcom/google/android/gms/internal/ads/zzry;)J

    move-result-wide v4

    .line 31
    :cond_5
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbfj;->zzegi:J

    cmp-long v1, v6, v11

    if-eqz v1, :cond_7

    cmp-long v1, v4, v11

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    add-long/2addr v6, v4

    return-wide v6

    :cond_7
    :goto_5
    return-wide v11
.end method
