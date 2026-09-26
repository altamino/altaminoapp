.class public abstract Lcom/google/android/exoplayer2/trackselection/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/s;


# instance fields
.field private final excludeUntilTimes:[J

.field private final formats:[Lcom/google/android/exoplayer2/a2;

.field protected final group:Lcom/google/android/exoplayer2/source/f1;

.field private hashCode:I

.field protected final length:I

.field protected final tracks:[I

.field private final type:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/f1;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/c;-><init>(Lcom/google/android/exoplayer2/source/f1;[II)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/f1;[II)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/c;->type:I

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/f1;

    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/c;->group:Lcom/google/android/exoplayer2/source/f1;

    .line 5
    array-length p3, p2

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/c;->length:I

    .line 6
    new-array p3, p3, [Lcom/google/android/exoplayer2/a2;

    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/c;->formats:[Lcom/google/android/exoplayer2/a2;

    move p3, v1

    .line 7
    :goto_1
    array-length v0, p2

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/c;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 8
    aget v2, p2, p3

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/f1;->c(I)Lcom/google/android/exoplayer2/a2;

    move-result-object v2

    aput-object v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/c;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 9
    new-instance p3, Lcom/google/android/exoplayer2/trackselection/b;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/trackselection/b;-><init>()V

    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/c;->length:I

    .line 10
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/c;->tracks:[I

    :goto_2
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/c;->length:I

    if-ge v1, p2, :cond_2

    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/c;->tracks:[I

    iget-object p3, p0, Lcom/google/android/exoplayer2/trackselection/c;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 11
    aget-object p3, p3, v1

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/f1;->d(Lcom/google/android/exoplayer2/a2;)I

    move-result p3

    aput p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/c;->excludeUntilTimes:[J

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/c;->e(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;)I

    move-result p0

    return p0
.end method

.method private static synthetic e(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;)I
    .locals 0

    .line 1
    .line 2
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 3
    .line 4
    iget p0, p0, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 5
    sub-int/2addr p1, p0

    .line 6
    return p1
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/r;->a(Lcom/google/android/exoplayer2/trackselection/s;)V

    return-void
.end method

.method public synthetic b()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/r;->c(Lcom/google/android/exoplayer2/trackselection/s;)V

    return-void
.end method

.method public synthetic c(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/r;->b(Lcom/google/android/exoplayer2/trackselection/s;Z)V

    return-void
.end method

.method public disable()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

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
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/c;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/c;->group:Lcom/google/android/exoplayer2/source/f1;

    .line 23
    .line 24
    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/c;->group:Lcom/google/android/exoplayer2/source/f1;

    .line 25
    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/c;->tracks:[I

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/c;->tracks:[I

    .line 31
    .line 32
    .line 33
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v0, v1

    .line 39
    :goto_0
    return v0

    .line 40
    :cond_3
    :goto_1
    return v1
.end method

.method public final getFormat(I)Lcom/google/android/exoplayer2/a2;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/c;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/c;->tracks:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method public final getSelectedFormat()Lcom/google/android/exoplayer2/a2;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/c;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/s;->getSelectedIndex()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget-object v0, v0, v1

    .line 9
    return-object v0
.end method

.method public final getTrackGroup()Lcom/google/android/exoplayer2/source/f1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/c;->group:Lcom/google/android/exoplayer2/source/f1;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/c;->hashCode:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/c;->group:Lcom/google/android/exoplayer2/source/f1;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/c;->tracks:[I

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    .line 21
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/c;->hashCode:I

    .line 22
    .line 23
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/c;->hashCode:I

    .line 24
    return v0
.end method

.method public final indexOf(I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/c;->length:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/c;->tracks:[I

    .line 8
    .line 9
    aget v1, v1, v0

    .line 10
    .line 11
    if-ne v1, p1, :cond_0

    .line 12
    return v0

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, -0x1

    .line 17
    return p1
.end method

.method public final length()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/c;->tracks:[I

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    return-void
.end method
