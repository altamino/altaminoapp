.class public final Lcom/google/android/exoplayer2/drm/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/f0$d;

.field private final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

.field private multiSession:Z

.field private playClearSamplesWithoutKeys:Z

.field private sessionKeepaliveMs:J

.field private useDrmSessionsForClearContentTrackTypes:[I

.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h$b;->keyRequestParameters:Ljava/util/HashMap;

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/exoplayer2/i;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h$b;->uuid:Ljava/util/UUID;

    .line 15
    .line 16
    sget-object v0, Lcom/google/android/exoplayer2/drm/j0;->DEFAULT_PROVIDER:Lcom/google/android/exoplayer2/drm/f0$d;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h$b;->exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/f0$d;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/exoplayer2/upstream/w;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/w;-><init>()V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h$b;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    new-array v0, v0, [I

    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h$b;->useDrmSessionsForClearContentTrackTypes:[I

    .line 31
    .line 32
    .line 33
    const-wide/32 v0, 0x493e0

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/google/android/exoplayer2/drm/h$b;->sessionKeepaliveMs:J

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/drm/m0;)Lcom/google/android/exoplayer2/drm/h;
    .locals 13

    .line 1
    .line 2
    new-instance v12, Lcom/google/android/exoplayer2/drm/h;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h$b;->uuid:Ljava/util/UUID;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/h$b;->exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/f0$d;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/h$b;->keyRequestParameters:Ljava/util/HashMap;

    .line 9
    .line 10
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/drm/h$b;->multiSession:Z

    .line 11
    .line 12
    iget-object v6, p0, Lcom/google/android/exoplayer2/drm/h$b;->useDrmSessionsForClearContentTrackTypes:[I

    .line 13
    .line 14
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/drm/h$b;->playClearSamplesWithoutKeys:Z

    .line 15
    .line 16
    iget-object v8, p0, Lcom/google/android/exoplayer2/drm/h$b;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 17
    .line 18
    iget-wide v9, p0, Lcom/google/android/exoplayer2/drm/h$b;->sessionKeepaliveMs:J

    .line 19
    const/4 v11, 0x0

    .line 20
    move-object v0, v12

    .line 21
    move-object v3, p1

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/drm/h;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0$d;Lcom/google/android/exoplayer2/drm/m0;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/f0;JLcom/google/android/exoplayer2/drm/h$a;)V

    .line 25
    return-object v12
.end method

.method public b(Z)Lcom/google/android/exoplayer2/drm/h$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/drm/h$b;->multiSession:Z

    return-object p0
.end method

.method public c(Z)Lcom/google/android/exoplayer2/drm/h$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/drm/h$b;->playClearSamplesWithoutKeys:Z

    return-object p0
.end method

.method public varargs d([I)Lcom/google/android/exoplayer2/drm/h$b;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    .line 7
    aget v3, p1, v2

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    .line 11
    if-eq v3, v4, :cond_1

    .line 12
    .line 13
    if-ne v3, v5, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move v5, v1

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, [I

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h$b;->useDrmSessionsForClearContentTrackTypes:[I

    .line 30
    return-object p0
.end method

.method public e(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0$d;)Lcom/google/android/exoplayer2/drm/h$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/util/UUID;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h$b;->uuid:Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/exoplayer2/drm/f0$d;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h$b;->exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/f0$d;

    .line 17
    return-object p0
.end method
