.class public Lio/agora/rtc/video/AgoraVideoFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUFFER_TYPE_ARRAY:I = 0x2

.field public static final BUFFER_TYPE_BUFFER:I = 0x1

.field public static final BUFFER_TYPE_NONE:I = -0x1

.field public static final BUFFER_TYPE_TEXTURE:I = 0x3

.field public static final FORMAT_ARGB:I = 0x7

.field public static final FORMAT_BGRA:I = 0x2

.field public static final FORMAT_I420:I = 0x1

.field public static final FORMAT_I422:I = 0x10

.field public static final FORMAT_IMC2:I = 0x5

.field public static final FORMAT_NONE:I = -0x1

.field public static final FORMAT_NV12:I = 0x8

.field public static final FORMAT_NV21:I = 0x3

.field public static final FORMAT_RGBA:I = 0x4

.field public static final FORMAT_TEXTURE_2D:I = 0xa

.field public static final FORMAT_TEXTURE_OES:I = 0xb


# instance fields
.field public buf:[B

.field public cropBottom:I

.field public cropLeft:I

.field public cropRight:I

.field public cropTop:I

.field public eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

.field public eglContext14:Landroid/opengl/EGLContext;

.field public format:I

.field public height:I

.field public rotation:I

.field public stride:I

.field public syncMode:Z

.field public textureID:I

.field public timeStamp:J

.field public transform:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    .line 15
    .line 16
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    .line 17
    .line 18
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->textureID:I

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    iput-boolean v1, p0, Lio/agora/rtc/video/AgoraVideoFrame;->syncMode:Z

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    iput-object v1, p0, Lio/agora/rtc/video/AgoraVideoFrame;->transform:[F

    .line 25
    .line 26
    iput-object v1, p0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

    .line 27
    .line 28
    iput-object v1, p0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext14:Landroid/opengl/EGLContext;

    .line 29
    .line 30
    iput-object v1, p0, Lio/agora/rtc/video/AgoraVideoFrame;->buf:[B

    .line 31
    .line 32
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->cropLeft:I

    .line 33
    .line 34
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->cropTop:I

    .line 35
    .line 36
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->cropRight:I

    .line 37
    .line 38
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->cropBottom:I

    .line 39
    .line 40
    iput v0, p0, Lio/agora/rtc/video/AgoraVideoFrame;->rotation:I

    .line 41
    return-void
.end method
