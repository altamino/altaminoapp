.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;
.super Landroid/os/Handler;
.source "OffScreenRenderHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler$Companion;

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
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;)V
    .locals 1

    const-string v0, "offScreenRenderThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;->weakOffScreenRenderThread:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;->weakOffScreenRenderThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    if-eqz v0, :cond_4

    const-string/jumbo v1, "weakOffScreenRenderThread.get() ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 26
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 28
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->renderFrame()V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    if-nez p1, :cond_3

    goto :goto_2

    .line 30
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 31
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->prepareGL()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final prepareOffscreenRender()V
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startOffscreenRender()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
