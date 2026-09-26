.class final Lcom/google/android/exoplayer2/source/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final trackGroup:Lcom/google/android/exoplayer2/source/f1;

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/s;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/s;Lcom/google/android/exoplayer2/source/f1;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/s;->a()V

    .line 6
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/s;->b()V

    .line 6
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/s;->c(Z)V

    .line 6
    return-void
.end method

.method public disable()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/s;->disable()V

    .line 6
    return-void
.end method

.method public enable()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/s;->enable()V

    .line 6
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/j0$a;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/j0$a;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/j0$a;->trackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/f1;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v0, v2

    .line 35
    :goto_0
    return v0
.end method

.method public getFormat(I)Lcom/google/android/exoplayer2/a2;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/v;->getFormat(I)Lcom/google/android/exoplayer2/a2;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getIndexInTrackGroup(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/v;->getIndexInTrackGroup(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getSelectedFormat()Lcom/google/android/exoplayer2/a2;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/s;->getSelectedFormat()Lcom/google/android/exoplayer2/a2;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTrackGroup()Lcom/google/android/exoplayer2/source/f1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackGroup:Lcom/google/android/exoplayer2/source/f1;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/f1;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x20f

    .line 9
    add-int/2addr v1, v0

    .line 10
    .line 11
    mul-int/lit8 v1, v1, 0x1f

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 17
    move-result v0

    .line 18
    add-int/2addr v1, v0

    .line 19
    return v1
.end method

.method public indexOf(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/v;->indexOf(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public length()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/v;->length()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$a;->trackSelection:Lcom/google/android/exoplayer2/trackselection/s;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/s;->onPlaybackSpeed(F)V

    .line 6
    return-void
.end method
