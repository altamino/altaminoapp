.class public final Lcom/google/android/exoplayer2/video/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/video/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_COLOR_RANGE:I = 0x1

.field private static final FIELD_COLOR_SPACE:I = 0x0

.field private static final FIELD_COLOR_TRANSFER:I = 0x2

.field private static final FIELD_HDR_STATIC_INFO:I = 0x3

.field public static final SDR_BT709_LIMITED:Lcom/google/android/exoplayer2/video/c;


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field private hashCode:I

.field public final hdrStaticInfo:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/video/c;

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x2

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/video/c;-><init>(III[B)V

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/video/c;->SDR_BT709_LIMITED:Lcom/google/android/exoplayer2/video/c;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/video/b;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/b;-><init>()V

    .line 17
    .line 18
    sput-object v0, Lcom/google/android/exoplayer2/video/c;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 19
    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/video/c;->colorSpace:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/video/c;->colorRange:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/video/c;->colorTransfer:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/exoplayer2/video/c;->hdrStaticInfo:[B

    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/c;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/c;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static c(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    const/4 v2, 0x7

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x24

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/c;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/video/c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/c;->d(I)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, -0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v1

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/c;->d(I)Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x2

    .line 23
    .line 24
    .line 25
    invoke-static {v4}, Lcom/google/android/exoplayer2/video/c;->d(I)Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 30
    move-result v2

    .line 31
    const/4 v4, 0x3

    .line 32
    .line 33
    .line 34
    invoke-static {v4}, Lcom/google/android/exoplayer2/video/c;->d(I)Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 39
    move-result-object p0

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, v3, v2, p0}, Lcom/google/android/exoplayer2/video/c;-><init>(III[B)V

    .line 43
    return-object v0
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
    const-class v3, Lcom/google/android/exoplayer2/video/c;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/video/c;

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/video/c;->colorSpace:I

    .line 21
    .line 22
    iget v3, p1, Lcom/google/android/exoplayer2/video/c;->colorSpace:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget v2, p0, Lcom/google/android/exoplayer2/video/c;->colorRange:I

    .line 27
    .line 28
    iget v3, p1, Lcom/google/android/exoplayer2/video/c;->colorRange:I

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    iget v2, p0, Lcom/google/android/exoplayer2/video/c;->colorTransfer:I

    .line 33
    .line 34
    iget v3, p1, Lcom/google/android/exoplayer2/video/c;->colorTransfer:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/c;->hdrStaticInfo:[B

    .line 39
    .line 40
    iget-object p1, p1, Lcom/google/android/exoplayer2/video/c;->hdrStaticInfo:[B

    .line 41
    .line 42
    .line 43
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v1

    .line 49
    :goto_0
    return v0

    .line 50
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/video/c;->hashCode:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x20f

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/exoplayer2/video/c;->colorSpace:I

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/exoplayer2/video/c;->colorRange:I

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lcom/google/android/exoplayer2/video/c;->colorTransfer:I

    .line 19
    add-int/2addr v0, v1

    .line 20
    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/c;->hdrStaticInfo:[B

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    .line 30
    iput v0, p0, Lcom/google/android/exoplayer2/video/c;->hashCode:I

    .line 31
    .line 32
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/video/c;->hashCode:I

    .line 33
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/c;->d(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget v2, p0, Lcom/google/android/exoplayer2/video/c;->colorSpace:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/c;->d(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget v2, p0, Lcom/google/android/exoplayer2/video/c;->colorRange:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/c;->d(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, p0, Lcom/google/android/exoplayer2/video/c;->colorTransfer:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const/4 v1, 0x3

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/c;->d(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/c;->hdrStaticInfo:[B

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 46
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "ColorInfo("

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/exoplayer2/video/c;->colorSpace:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v2, p0, Lcom/google/android/exoplayer2/video/c;->colorRange:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget v2, p0, Lcom/google/android/exoplayer2/video/c;->colorTransfer:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/c;->hdrStaticInfo:[B

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    const/4 v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, ")"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
