.class public Lio/agora/rtc/gl/TextureTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final TAG:Ljava/lang/String; = "TextureTransformer"


# instance fields
.field private final drawer:Lio/agora/rtc/gl/GlRectDrawer;

.field private final freeSlots:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBufferSlot:I

.field private final textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

.field private final textureId2SlotMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    new-array v0, v0, [F

    .line 5
    .line 6
    sput-object v0, Lio/agora/rtc/gl/TextureTransformer;->IDENTITY_MATRIX:[F

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slotCount"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/gl/TextureTransformer;->threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    .line 11
    .line 12
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->textureId2SlotMap:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 23
    .line 24
    iput-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->freeSlots:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 28
    const/4 v0, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v0

    .line 33
    .line 34
    iput v0, p0, Lio/agora/rtc/gl/TextureTransformer;->maxBufferSlot:I

    .line 35
    .line 36
    new-array v0, p1, [Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 37
    .line 38
    iput-object v0, p0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    :goto_0
    if-ge v0, p1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 44
    .line 45
    new-instance v2, Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 46
    .line 47
    const/16 v3, 0x1908

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Lio/agora/rtc/gl/GlTextureFrameBuffer;-><init>(I)V

    .line 51
    .line 52
    aput-object v2, v1, v0

    .line 53
    .line 54
    iget-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->textureId2SlotMap:Ljava/util/Map;

    .line 55
    .line 56
    iget-object v2, p0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 57
    .line 58
    aget-object v2, v2, v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->getTextureId()I

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->freeSlots:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_0
    new-instance p1, Lio/agora/rtc/gl/GlRectDrawer;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1}, Lio/agora/rtc/gl/GlRectDrawer;-><init>()V

    .line 91
    .line 92
    iput-object p1, p0, Lio/agora/rtc/gl/TextureTransformer;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 93
    return-void
.end method


# virtual methods
.method public copy(IIII)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcTextureId",
            "format",
            "width",
            "height"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lio/agora/rtc/gl/TextureTransformer;->threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 9
    .line 10
    iget-object v2, v0, Lio/agora/rtc/gl/TextureTransformer;->freeSlots:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    check-cast v2, Ljava/lang/Integer;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    const/4 v1, -0x1

    .line 20
    return v1

    .line 21
    .line 22
    :cond_0
    iget-object v3, v0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v4

    .line 27
    .line 28
    aget-object v3, v3, v4

    .line 29
    .line 30
    move/from16 v11, p3

    .line 31
    .line 32
    move/from16 v12, p4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v11, v12}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->setSize(II)V

    .line 36
    .line 37
    iget-object v3, v0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v4

    .line 42
    .line 43
    aget-object v3, v3, v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->getFrameBufferId()I

    .line 47
    move-result v3

    .line 48
    .line 49
    .line 50
    const v13, 0x8d40

    .line 51
    .line 52
    .line 53
    invoke-static {v13, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 54
    .line 55
    const-string v3, "TextureHelper.glBindFramebuffer"

    .line 56
    .line 57
    .line 58
    invoke-static {v3}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 59
    .line 60
    const/16 v3, 0x4000

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 64
    .line 65
    const/16 v3, 0xa

    .line 66
    .line 67
    if-eq v1, v3, :cond_2

    .line 68
    .line 69
    const/16 v3, 0xb

    .line 70
    .line 71
    if-ne v1, v3, :cond_1

    .line 72
    .line 73
    iget-object v4, v0, Lio/agora/rtc/gl/TextureTransformer;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 74
    .line 75
    sget-object v6, Lio/agora/rtc/gl/TextureTransformer;->IDENTITY_MATRIX:[F

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    move v5, p1

    .line 79
    .line 80
    move/from16 v7, p3

    .line 81
    .line 82
    move/from16 v8, p4

    .line 83
    .line 84
    move/from16 v11, p3

    .line 85
    .line 86
    move/from16 v12, p4

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {v4 .. v12}, Lio/agora/rtc/gl/GlRectDrawer;->drawOes(I[FIIIIII)V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 93
    .line 94
    const-string v2, "Unknown texture type."

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    throw v1

    .line 99
    .line 100
    :cond_2
    iget-object v4, v0, Lio/agora/rtc/gl/TextureTransformer;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 101
    .line 102
    sget-object v6, Lio/agora/rtc/gl/TextureTransformer;->IDENTITY_MATRIX:[F

    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    move v5, p1

    .line 106
    .line 107
    move/from16 v7, p3

    .line 108
    .line 109
    move/from16 v8, p4

    .line 110
    .line 111
    move/from16 v11, p3

    .line 112
    .line 113
    move/from16 v12, p4

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {v4 .. v12}, Lio/agora/rtc/gl/GlRectDrawer;->drawRgb(I[FIIIIII)V

    .line 117
    .line 118
    :goto_0
    const-string v1, "TextureHelper.draw"

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    .line 123
    .line 124
    .line 125
    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 126
    .line 127
    .line 128
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 129
    .line 130
    iget-object v1, v0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 134
    move-result v2

    .line 135
    .line 136
    aget-object v1, v1, v2

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->getTextureId()I

    .line 140
    move-result v1

    .line 141
    .line 142
    iget-object v2, v0, Lio/agora/rtc/gl/TextureTransformer;->freeSlots:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 143
    .line 144
    iget-object v3, v0, Lio/agora/rtc/gl/TextureTransformer;->textureId2SlotMap:Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    .line 151
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-result-object v3

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 156
    return v1
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureTransformer;->threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    iget v1, p0, Lio/agora/rtc/gl/TextureTransformer;->maxBufferSlot:I

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 13
    .line 14
    aget-object v1, v1, v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->release()V

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/TextureTransformer;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lio/agora/rtc/gl/GlRectDrawer;->release()V

    .line 26
    return-void
.end method
