.class public Lio/agora/rtc/video/VideoRenderer$I420Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "I420Frame"
.end annotation


# instance fields
.field public final height:I

.field private nativeFramePointer:J

.field public rotationDegree:I

.field public final samplingMatrix:[F

.field public textureId:I

.field public final width:I

.field public final yuvFrame:Z

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public final yuvStrides:[I


# direct methods
.method constructor <init>(IIII[FJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "rotationDegree",
            "textureId",
            "samplingMatrix",
            "nativeFramePointer"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->width:I

    iput p2, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->height:I

    const/4 p1, 0x0

    iput-object p1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->yuvStrides:[I

    iput-object p1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    iput-object p5, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->samplingMatrix:[F

    iput p4, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->textureId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->yuvFrame:Z

    iput p3, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->rotationDegree:I

    iput-wide p6, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 5
    rem-int/lit8 p1, p3, 0x5a

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Rotation degree not multiple of 90: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(III[I[Ljava/nio/ByteBuffer;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "rotationDegree",
            "yuvStrides",
            "yuvPlanes",
            "nativeFramePointer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->width:I

    iput p2, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->height:I

    iput-object p4, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->yuvStrides:[I

    iput-object p5, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->yuvFrame:Z

    iput p3, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->rotationDegree:I

    iput-wide p6, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 2
    rem-int/lit8 p1, p3, 0x5a

    if-nez p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->samplingMatrix:[F

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Rotation degree not multiple of 90: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lio/agora/rtc/video/VideoRenderer$I420Frame;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 3
    return-wide v0
.end method

.method static synthetic access$002(Lio/agora/rtc/video/VideoRenderer$I420Frame;J)J
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 3
    return-wide p1
.end method


# virtual methods
.method public rotatedHeight()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->rotationDegree:I

    .line 3
    .line 4
    rem-int/lit16 v0, v0, 0xb4

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->height:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->width:I

    .line 12
    :goto_0
    return v0
.end method

.method public rotatedWidth()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->rotationDegree:I

    .line 3
    .line 4
    rem-int/lit16 v0, v0, 0xb4

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->width:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->height:I

    .line 12
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->width:I

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
    iget v1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->height:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ":"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v2, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    aget v2, v2, v3

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
    iget-object v2, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 39
    const/4 v3, 0x1

    .line 40
    .line 41
    aget v2, v2, v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget-object v1, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 50
    const/4 v2, 0x2

    .line 51
    .line 52
    aget v1, v1, v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
