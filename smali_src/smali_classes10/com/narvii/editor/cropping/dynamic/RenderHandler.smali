.class public final Lcom/narvii/editor/cropping/dynamic/RenderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/RenderHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/RenderHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_ANOTHER_SURFACE_CHANGED:I = 0xe

.field public static final MSG_CHANGE_FILTER:I = 0x6

.field public static final MSG_CUSTOM_WATER_MARK_BITMAP:I = 0xa

.field public static final MSG_CUSTOM_WATER_MARK_RECT:I = 0xb

.field public static final MSG_DO_FRAME:I = 0x2

.field public static final MSG_RENDER_ANOTHER_SURFACE:I = 0x7

.field public static final MSG_SHUTDOWN:I = 0x3

.field public static final MSG_START_PLAY:I = 0xf

.field public static final MSG_START_RECORD:I = 0x4

.field public static final MSG_STOP_RECORD:I = 0x5

.field public static final MSG_STOP_RENDER_ANOTHER_SURFACE:I = 0x8

.field public static final MSG_SURFACE_CHANGED:I = 0x1

.field public static final MSG_SURFACE_CREATED:I = 0x0

.field public static final MSG_VIDEO_EDITOR_RECT:I = 0x9

.field public static final MSG_VIDEO_SIZE_CHANGED:I = 0xd

.field public static final MSG_VIDEO_TRANSFORM:I = 0xc


# instance fields
.field private weakRenderThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/editor/cropping/dynamic/RenderThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/RenderHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->Companion:Lcom/narvii/editor/cropping/dynamic/RenderHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V
    .locals 1
    .param p1    # Lcom/narvii/editor/cropping/dynamic/RenderThread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "renderThread"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->weakRenderThread:Ljava/lang/ref/WeakReference;

    .line 16
    return-void
.end method


# virtual methods
.method public final anotherSurfaceChanged(II)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xe

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    return-void
.end method

.method public final changeFilter(I)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "msg"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->weakRenderThread:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 27
    throw p1

    .line 28
    .line 29
    .line 30
    :pswitch_1
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->startPlay()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 34
    .line 35
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherSurfaceChanged(II)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 42
    .line 43
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setVideoSizeChanged(II)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    const-string v0, "null cannot be cast to non-null type kotlin.FloatArray"

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast p1, [F

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setVideoTransform([F)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    .line 64
    const-string v0, "null cannot be cast to non-null type android.graphics.Rect"

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    check-cast p1, Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setVideoEditorRect(Landroid/graphics/Rect;)V

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :pswitch_6
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->stopRenderAnotherSurface()V

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    check-cast p1, Landroid/view/Surface;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurface(Landroid/view/Surface;)V

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->resetFilter(I)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :pswitch_9
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->shutDown()V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 100
    int-to-long v2, v0

    .line 101
    .line 102
    const/16 v0, 0x20

    .line 103
    shl-long/2addr v2, v0

    .line 104
    .line 105
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 106
    int-to-long v4, p1

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    const-wide v6, 0xffffffffL

    .line 112
    and-long/2addr v4, v6

    .line 113
    or-long/2addr v2, v4

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2, v3}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->doFrame(J)V

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 120
    .line 121
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->surfaceChanged(II)V

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :pswitch_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->surfaceCreated(I)V

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 132
    nop

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final renderAnotherSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x7

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    return-void
.end method

.method public final sendDoFrame(J)V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    shr-long v0, p1, v0

    .line 5
    long-to-int v0, v0

    .line 6
    long-to-int p1, p1

    .line 7
    const/4 p2, 0x2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    return-void
.end method

.method public final sendShutDown()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    return-void
.end method

.method public final sendSurfaceChanged(III)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    return-void
.end method

.method public final sendSurfaceCreated(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    return-void
.end method

.method public final setVideoEditorRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "rect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const/16 v0, 0x9

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    return-void
.end method

.method public final setVideoSizeChanged(II)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xd

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    return-void
.end method

.method public final setVideoTransform([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "floatArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const/16 v0, 0xc

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    return-void
.end method

.method public final startPlay()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xf

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    return-void
.end method

.method public final stopRenderAnotherSurface()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    return-void
.end method
