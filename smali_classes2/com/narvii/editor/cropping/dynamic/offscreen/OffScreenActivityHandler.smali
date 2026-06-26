.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;
.super Landroid/os/Handler;
.source "OffScreenActivityHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler$Companion;

.field public static final MSG_OFF_SCREEN_END:I = 0x0

.field public static final MSG_OFF_SCRREN_PROGRESS:I = 0x1


# instance fields
.field private final offScreenActivity:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V
    .locals 1

    const-string v0, "offScreenActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->offScreenActivity:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->offScreenActivity:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setOffscreenProgress(I)V

    goto :goto_0

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->offScreenActivity:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setDuration()V

    :goto_0
    return-void
.end method

.method public final sendOffscreenEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendOffscreenProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
