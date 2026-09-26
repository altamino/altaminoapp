.class Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/VideoFrameDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RGBAUploader"
.end annotation


# instance fields
.field private mData:Ljava/nio/ByteBuffer;

.field private mTextureId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->mTextureId:I

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/gl/VideoFrameDrawer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextureId()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->mTextureId:I

    return v0
.end method

.method public release()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->mData:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    iget v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->mTextureId:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    filled-new-array {v0}, [I

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 17
    :cond_0
    return-void
.end method

.method public uploadData(Ljava/nio/ByteBuffer;II)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->mData:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget p1, p0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->mTextureId:I

    .line 5
    .line 6
    const/16 v0, 0xde1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lio/agora/rtc/gl/GlUtil;->generateTexture(I)I

    .line 12
    move-result p1

    .line 13
    .line 14
    iput p1, p0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->mTextureId:I

    .line 15
    .line 16
    .line 17
    :cond_0
    const p1, 0x84c0

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 21
    .line 22
    iget p1, p0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->mTextureId:I

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 26
    .line 27
    const/16 v1, 0xde1

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    const/16 v3, 0x1908

    .line 31
    const/4 v6, 0x0

    .line 32
    .line 33
    const/16 v7, 0x1908

    .line 34
    .line 35
    const/16 v8, 0x1401

    .line 36
    .line 37
    iget-object v9, p0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->mData:Ljava/nio/ByteBuffer;

    .line 38
    move v4, p2

    .line 39
    move v5, p3

    .line 40
    .line 41
    .line 42
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 43
    .line 44
    const-string p1, "glTexImage2D"

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 48
    .line 49
    iget p1, p0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->mTextureId:I

    .line 50
    return p1
.end method
