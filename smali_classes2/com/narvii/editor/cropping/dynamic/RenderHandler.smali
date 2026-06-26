.class public final Lcom/narvii/editor/cropping/dynamic/RenderHandler;
.super Landroid/os/Handler;
.source "RenderHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/RenderHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/RenderHandler$Companion;

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
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/RenderHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->Companion:Lcom/narvii/editor/cropping/dynamic/RenderHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V
    .locals 1

    const-string v0, "renderThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->weakRenderThread:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final anotherSurfaceChanged(II)V
    .locals 1

    const/16 v0, 0xe

    .line 93
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final changeFilter(I)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->weakRenderThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v1, :cond_1b

    const-string/jumbo v2, "weakRenderThread.get() ?: return"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 105
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->surfaceCreated(I)V

    goto/16 :goto_c

    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-nez v0, :cond_3

    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 108
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->surfaceChanged(II)V

    goto/16 :goto_c

    :cond_4
    :goto_2
    const/4 v2, 0x2

    if-nez v0, :cond_5

    goto :goto_3

    .line 110
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 111
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v4, p1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->doFrame(J)V

    goto/16 :goto_c

    :cond_6
    :goto_3
    const/4 v2, 0x3

    if-nez v0, :cond_7

    goto :goto_4

    .line 114
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 115
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->shutDown()V

    goto/16 :goto_c

    :cond_8
    :goto_4
    const/4 v2, 0x6

    if-nez v0, :cond_9

    goto :goto_5

    .line 117
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 118
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->resetFilter(I)V

    goto/16 :goto_c

    :cond_a
    :goto_5
    const/4 v2, 0x7

    if-nez v0, :cond_b

    goto :goto_6

    .line 120
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_c

    .line 121
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_19

    .line 123
    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurface(Landroid/view/Surface;)V

    goto/16 :goto_c

    :cond_c
    :goto_6
    const/16 v2, 0x8

    if-nez v0, :cond_d

    goto :goto_7

    .line 126
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_e

    .line 127
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->stopRenderAnotherSurface()V

    goto/16 :goto_c

    :cond_e
    :goto_7
    const/16 v2, 0x9

    if-nez v0, :cond_f

    goto :goto_8

    .line 129
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_11

    .line 130
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_10

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setVideoEditorRect(Landroid/graphics/Rect;)V

    goto :goto_c

    :cond_10
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.graphics.Rect"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_8
    const/16 v2, 0xc

    if-nez v0, :cond_12

    goto :goto_9

    .line 132
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_14

    .line 133
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_13

    check-cast p1, [F

    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setVideoTransform([F)V

    goto :goto_c

    :cond_13
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_9
    const/16 v2, 0xd

    if-nez v0, :cond_15

    goto :goto_a

    .line 135
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_16

    .line 136
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setVideoSizeChanged(II)V

    goto :goto_c

    :cond_16
    :goto_a
    const/16 v2, 0xe

    if-nez v0, :cond_17

    goto :goto_b

    .line 138
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_18

    .line 139
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherSurfaceChanged(II)V

    goto :goto_c

    :cond_18
    :goto_b
    const/16 p1, 0xf

    if-eqz v0, :cond_1a

    .line 141
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1a

    .line 142
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->startPlay()V

    :cond_19
    :goto_c
    return-void

    .line 144
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1b
    return-void
.end method

.method public final renderAnotherSurface(Landroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x7

    .line 73
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendDoFrame(J)V
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    long-to-int p2, p1

    const/4 p1, 0x2

    .line 56
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendShutDown()V
    .locals 1

    const/4 v0, 0x3

    .line 65
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendSurfaceChanged(III)V
    .locals 0

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendSurfaceCreated(I)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setVideoEditorRect(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 81
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setVideoSizeChanged(II)V
    .locals 1

    const/16 v0, 0xd

    .line 89
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setVideoTransform([F)V
    .locals 1

    const-string v0, "floatArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 85
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startPlay()V
    .locals 1

    const/16 v0, 0xf

    .line 97
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final stopRenderAnotherSurface()V
    .locals 1

    const/16 v0, 0x8

    .line 77
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
