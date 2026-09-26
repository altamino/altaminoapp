.class Lcom/google/android/exoplayer2/drm/h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private provisioningSession:Lcom/google/android/exoplayer2/drm/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final sessionsAwaitingProvisioning:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/drm/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/h;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance p1, Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h$g;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h$g;->provisioningSession:Lcom/google/android/exoplayer2/drm/g;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$g;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/common/collect/a0;->t(Ljava/util/Collection;)Lcom/google/common/collect/a0;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h$g;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/common/collect/a0;->m()Lcom/google/common/collect/l1;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/google/android/exoplayer2/drm/g;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/drm/g;->y(Ljava/lang/Exception;Z)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/drm/g;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$g;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$g;->provisioningSession:Lcom/google/android/exoplayer2/drm/g;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h$g;->provisioningSession:Lcom/google/android/exoplayer2/drm/g;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/g;->C()V

    .line 16
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/drm/g;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$g;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$g;->provisioningSession:Lcom/google/android/exoplayer2/drm/g;

    .line 8
    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h$g;->provisioningSession:Lcom/google/android/exoplayer2/drm/g;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/h$g;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/h$g;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/google/android/exoplayer2/drm/g;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h$g;->provisioningSession:Lcom/google/android/exoplayer2/drm/g;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/g;->C()V

    .line 38
    :cond_0
    return-void
.end method

.method public onProvisionCompleted()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h$g;->provisioningSession:Lcom/google/android/exoplayer2/drm/g;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$g;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/common/collect/a0;->t(Ljava/util/Collection;)Lcom/google/common/collect/a0;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h$g;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/common/collect/a0;->m()Lcom/google/common/collect/l1;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/google/android/exoplayer2/drm/g;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/g;->x()V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
