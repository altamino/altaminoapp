.class public final Lcom/google/android/exoplayer2/audio/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_AUX_EFFECT_ID:I


# instance fields
.field public final effectId:I

.field public final sendLevel:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/audio/y;->effectId:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/audio/y;->sendLevel:F

    .line 8
    return-void
.end method


# virtual methods
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Lcom/google/android/exoplayer2/audio/y;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/audio/y;

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/audio/y;->effectId:I

    .line 21
    .line 22
    iget v3, p1, Lcom/google/android/exoplayer2/audio/y;->effectId:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget p1, p1, Lcom/google/android/exoplayer2/audio/y;->sendLevel:F

    .line 27
    .line 28
    iget v2, p0, Lcom/google/android/exoplayer2/audio/y;->sendLevel:F

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 32
    move-result p1

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v1

    .line 37
    :goto_0
    return v0

    .line 38
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x20f

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/audio/y;->effectId:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/exoplayer2/audio/y;->sendLevel:F

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    return v0
.end method
