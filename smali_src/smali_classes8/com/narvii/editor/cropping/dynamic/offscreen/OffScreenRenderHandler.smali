.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_PREPARE_OFFSCREEN_RENDER:I = 0x1

.field public static final MSG_START_OFFSCREEN_RENDER:I


# instance fields
.field private weakOffScreenRenderThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;)V
    .locals 1
    .param p1    # Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "offScreenRenderThread"

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
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;->weakOffScreenRenderThread:Ljava/lang/ref/WeakReference;

    .line 16
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
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
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;->weakOffScreenRenderThread:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    if-eq p1, v1, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->prepareGL()V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->renderFrame()V

    .line 32
    :goto_0
    return-void
.end method

.method public final prepareOffscreenRender()V
    .locals 1

    .line 1
    const/4 v0, 0x1

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

.method public final startOffscreenRender()V
    .locals 1

    .line 1
    const/4 v0, 0x0

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
