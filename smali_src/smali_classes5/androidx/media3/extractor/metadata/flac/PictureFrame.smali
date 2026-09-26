.class public final Landroidx/media3/extractor/metadata/flac/PictureFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final colors:I

.field public final depth:I

.field public final description:Ljava/lang/String;

.field public final height:I

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/extractor/metadata/flac/PictureFrame$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/extractor/metadata/flac/PictureFrame$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    iput-object p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    iput p4, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    iput p5, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    iput p6, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    iput p7, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    iput-object p8, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    return-void
.end method

.method public static a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/flac/PictureFrame;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 4
    move-result v1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 8
    move-result v0

    .line 9
    .line 10
    sget-object v2, Lcom/google/common/base/e;->US_ASCII:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->F(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->E(I)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 30
    move-result v5

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 34
    move-result v6

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 38
    move-result v7

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 42
    move-result v0

    .line 43
    .line 44
    new-array v8, v0, [B

    .line 45
    const/4 v9, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v8, v9, v0}, Landroidx/media3/common/util/ParsableByteArray;->l([BII)V

    .line 49
    .line 50
    new-instance p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;

    .line 51
    move-object v0, p0

    .line 52
    .line 53
    .line 54
    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/metadata/flac/PictureFrame;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    .line 55
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Landroidx/media3/extractor/metadata/flac/PictureFrame;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;

    .line 19
    .line 20
    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    .line 21
    .line 22
    iget v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    .line 47
    .line 48
    iget v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    .line 49
    .line 50
    if-ne v2, v3, :cond_2

    .line 51
    .line 52
    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    .line 53
    .line 54
    iget v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    .line 59
    .line 60
    iget v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    .line 61
    .line 62
    if-ne v2, v3, :cond_2

    .line 63
    .line 64
    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    .line 65
    .line 66
    iget v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    .line 67
    .line 68
    if-ne v2, v3, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    .line 71
    .line 72
    iget-object p1, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    .line 73
    .line 74
    .line 75
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 76
    move-result p1

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v0, v1

    .line 81
    :goto_0
    return v0

    .line 82
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
    iget v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 22
    move-result v1

    .line 23
    add-int/2addr v0, v1

    .line 24
    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    .line 28
    add-int/2addr v0, v1

    .line 29
    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    .line 38
    add-int/2addr v0, v1

    .line 39
    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    .line 43
    add-int/2addr v0, v1

    .line 44
    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 51
    move-result v1

    .line 52
    add-int/2addr v0, v1

    .line 53
    return v0
.end method

.method public k0(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->I([BI)Landroidx/media3/common/MediaMetadata$Builder;

    .line 8
    return-void
.end method

.method public synthetic q()[B
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/x;->a(Landroidx/media3/common/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic r()Landroidx/media3/common/Format;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/x;->b(Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
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
    const-string v1, "Picture: mimeType="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", description="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    .line 2
    iget p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    .line 17
    iget p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    iget p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    iget p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    iget p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 41
    return-void
.end method
