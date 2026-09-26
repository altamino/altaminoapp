.class public final Lcom/google/android/exoplayer2/util/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNKNOWN:Lcom/google/android/exoplayer2/util/g0;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/g0;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/google/android/exoplayer2/util/g0;-><init>(II)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/exoplayer2/util/g0;->UNKNOWN:Lcom/google/android/exoplayer2/util/g0;

    .line 9
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    if-ltz p1, :cond_1

    .line 9
    .line 10
    :cond_0
    if-eq p2, v0, :cond_2

    .line 11
    .line 12
    if-ltz p2, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 20
    .line 21
    iput p1, p0, Lcom/google/android/exoplayer2/util/g0;->width:I

    .line 22
    .line 23
    iput p2, p0, Lcom/google/android/exoplayer2/util/g0;->height:I

    .line 24
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/g0;->height:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/g0;->width:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p0, p1, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    instance-of v2, p1, Lcom/google/android/exoplayer2/util/g0;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/exoplayer2/util/g0;

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/exoplayer2/util/g0;->width:I

    .line 17
    .line 18
    iget v3, p1, Lcom/google/android/exoplayer2/util/g0;->width:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_2

    .line 21
    .line 22
    iget v2, p0, Lcom/google/android/exoplayer2/util/g0;->height:I

    .line 23
    .line 24
    iget p1, p1, Lcom/google/android/exoplayer2/util/g0;->height:I

    .line 25
    .line 26
    if-ne v2, p1, :cond_2

    .line 27
    move v0, v1

    .line 28
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/util/g0;->height:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/g0;->width:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/exoplayer2/util/g0;->width:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "x"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget v1, p0, Lcom/google/android/exoplayer2/util/g0;->height:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
