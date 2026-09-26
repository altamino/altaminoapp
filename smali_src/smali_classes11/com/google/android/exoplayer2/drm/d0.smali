.class public final Lcom/google/android/exoplayer2/drm/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/n;


# instance fields
.field private final error:Lcom/google/android/exoplayer2/drm/n$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/n$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/google/android/exoplayer2/drm/n$a;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/d0;->error:Lcom/google/android/exoplayer2/drm/n$a;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/android/exoplayer2/decoder/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/util/UUID;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/i;->UUID_NIL:Ljava/util/UUID;

    .line 3
    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Lcom/google/android/exoplayer2/drm/v$a;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/drm/v$a;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public getError()Lcom/google/android/exoplayer2/drm/n$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/d0;->error:Lcom/google/android/exoplayer2/drm/n$a;

    return-object v0
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
