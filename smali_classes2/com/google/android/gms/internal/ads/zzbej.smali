.class final Lcom/google/android/gms/internal/ads/zzbej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final zzegf:Lcom/google/android/gms/internal/ads/zzjp;

.field private final zzegg:J

.field private final zzegh:Lcom/google/android/gms/internal/ads/zzjp;

.field private zzegi:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzjp;ILcom/google/android/gms/internal/ads/zzjp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegf:Lcom/google/android/gms/internal/ads/zzjp;

    int-to-long p1, p2

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegg:J

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegh:Lcom/google/android/gms/internal/ads/zzjp;

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

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegf:Lcom/google/android/gms/internal/ads/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzjp;->close()V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegh:Lcom/google/android/gms/internal/ads/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzjp;->close()V

    return-void
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegi:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegg:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    int-to-long v4, p3

    sub-long/2addr v2, v0

    .line 36
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegf:Lcom/google/android/gms/internal/ads/zzjp;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzjp;->read([BII)I

    move-result v0

    .line 38
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegi:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegi:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegi:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegg:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    sub-int/2addr p3, v0

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegh:Lcom/google/android/gms/internal/ads/zzjp;

    add-int/2addr p2, v0

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzjp;->read([BII)I

    move-result p1

    add-int/2addr v0, p1

    .line 43
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegi:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbej;->zzegi:J

    :cond_1
    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjq;)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzjq;->zzahv:J

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzbej;->zzegg:J

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    cmp-long v6, v4, v2

    if-ltz v6, :cond_0

    move-object v12, v9

    goto :goto_1

    .line 10
    :cond_0
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzjq;->zzcd:J

    cmp-long v8, v6, v10

    if-eqz v8, :cond_1

    sub-long/2addr v2, v4

    .line 11
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    sub-long/2addr v2, v4

    :goto_0
    move-wide v6, v2

    .line 13
    new-instance v12, Lcom/google/android/gms/internal/ads/zzjq;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjq;->uri:Landroid/net/Uri;

    const/4 v8, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzjq;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 16
    :goto_1
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzjq;->zzcd:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzjq;->zzahv:J

    add-long/2addr v4, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzbej;->zzegg:J

    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    move-object v2, v9

    goto :goto_3

    .line 18
    :cond_2
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzbej;->zzegg:J

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzjq;->zzahv:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    .line 19
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzjq;->zzcd:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_3

    .line 20
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzjq;->zzahv:J

    add-long/2addr v4, v2

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzbej;->zzegg:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide/from16 v17, v2

    goto :goto_2

    :cond_3
    move-wide/from16 v17, v10

    .line 22
    :goto_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzjq;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzjq;->uri:Landroid/net/Uri;

    const/16 v19, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzjq;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :goto_3
    const-wide/16 v3, 0x0

    if-eqz v12, :cond_4

    .line 27
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbej;->zzegf:Lcom/google/android/gms/internal/ads/zzjp;

    invoke-interface {v5, v12}, Lcom/google/android/gms/internal/ads/zzjp;->zza(Lcom/google/android/gms/internal/ads/zzjq;)J

    move-result-wide v5

    goto :goto_4

    :cond_4
    move-wide v5, v3

    :goto_4
    if-eqz v2, :cond_5

    .line 29
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbej;->zzegh:Lcom/google/android/gms/internal/ads/zzjp;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzjp;->zza(Lcom/google/android/gms/internal/ads/zzjq;)J

    move-result-wide v3

    .line 30
    :cond_5
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzjq;->zzahv:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbej;->zzegi:J

    cmp-long v1, v5, v10

    if-eqz v1, :cond_7

    cmp-long v1, v3, v10

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    add-long/2addr v5, v3

    return-wide v5

    :cond_7
    :goto_5
    return-wide v10
.end method
