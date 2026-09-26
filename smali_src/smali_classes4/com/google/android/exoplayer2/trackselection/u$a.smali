.class public final Lcom/google/android/exoplayer2/trackselection/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS:I = 0x2

.field public static final RENDERER_SUPPORT_NO_TRACKS:I = 0x0

.field public static final RENDERER_SUPPORT_PLAYABLE_TRACKS:I = 0x3

.field public static final RENDERER_SUPPORT_UNSUPPORTED_TRACKS:I = 0x1


# instance fields
.field private final rendererCount:I

.field private final rendererFormatSupports:[[[I

.field private final rendererMixedMimeTypeAdaptiveSupports:[I

.field private final rendererNames:[Ljava/lang/String;

.field private final rendererTrackGroups:[Lcom/google/android/exoplayer2/source/h1;

.field private final rendererTrackTypes:[I

.field private final unmappedTrackGroups:Lcom/google/android/exoplayer2/source/h1;


# direct methods
.method constructor <init>([Ljava/lang/String;[I[Lcom/google/android/exoplayer2/source/h1;[I[[[ILcom/google/android/exoplayer2/source/h1;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererNames:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererTrackTypes:[I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/h1;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererFormatSupports:[[[I

    .line 12
    .line 13
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererMixedMimeTypeAdaptiveSupports:[I

    .line 14
    .line 15
    iput-object p6, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->unmappedTrackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 16
    array-length p1, p2

    .line 17
    .line 18
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererCount:I

    .line 19
    return-void
.end method


# virtual methods
.method public a(IIZ)I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/h1;

    .line 3
    .line 4
    aget-object v0, v0, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/h1;->b(I)Lcom/google/android/exoplayer2/source/f1;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v0, v0, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 11
    .line 12
    new-array v1, v0, [I

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    .line 16
    :goto_0
    if-ge v2, v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/exoplayer2/trackselection/u$a;->g(III)I

    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x4

    .line 22
    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    const/4 v5, 0x3

    .line 27
    .line 28
    if-ne v4, v5, :cond_1

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 31
    .line 32
    aput v2, v1, v3

    .line 33
    move v3, v4

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 40
    move-result-object p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/u$a;->b(II[I)I

    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public b(II[I)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v1

    .line 6
    move-object v4, v2

    .line 7
    move v1, v0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    array-length v5, p3

    .line 10
    .line 11
    if-ge v0, v5, :cond_1

    .line 12
    .line 13
    aget v5, p3, v0

    .line 14
    .line 15
    iget-object v6, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/h1;

    .line 16
    .line 17
    aget-object v6, v6, p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, p2}, Lcom/google/android/exoplayer2/source/h1;->b(I)Lcom/google/android/exoplayer2/source/f1;

    .line 21
    move-result-object v6

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/source/f1;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    iget-object v5, v5, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 28
    .line 29
    add-int/lit8 v6, v2, 0x1

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    move-object v4, v5

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    xor-int/lit8 v2, v2, 0x1

    .line 40
    or-int/2addr v1, v2

    .line 41
    .line 42
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererFormatSupports:[[[I

    .line 43
    .line 44
    aget-object v2, v2, p1

    .line 45
    .line 46
    aget-object v2, v2, p2

    .line 47
    .line 48
    aget v2, v2, v0

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lcom/google/android/exoplayer2/n3;->d(I)I

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 56
    move-result v3

    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    move v2, v6

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererMixedMimeTypeAdaptiveSupports:[I

    .line 65
    .line 66
    aget p1, p2, p1

    .line 67
    .line 68
    .line 69
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 70
    move-result v3

    .line 71
    :cond_2
    return v3
.end method

.method public c(III)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererFormatSupports:[[[I

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    .line 6
    aget-object p1, p1, p2

    .line 7
    .line 8
    aget p1, p1, p3

    .line 9
    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererCount:I

    return v0
.end method

.method public e(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererTrackTypes:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method public f(I)Lcom/google/android/exoplayer2/source/h1;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/h1;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public g(III)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/u$a;->c(III)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/n3;->f(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public h()Lcom/google/android/exoplayer2/source/h1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/u$a;->unmappedTrackGroups:Lcom/google/android/exoplayer2/source/h1;

    return-object v0
.end method
