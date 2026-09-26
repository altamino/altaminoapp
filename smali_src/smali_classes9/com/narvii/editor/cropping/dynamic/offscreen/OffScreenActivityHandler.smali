.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_OFF_SCREEN_END:I = 0x0

.field public static final MSG_OFF_SCRREN_PROGRESS:I = 0x1


# instance fields
.field private final offScreenActivity:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V
    .locals 1
    .param p1    # Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "offScreenActivity"

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
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->offScreenActivity:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
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
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->offScreenActivity:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    .line 16
    .line 17
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setOffscreenProgress(I)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->offScreenActivity:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setDuration()V

    .line 27
    :goto_0
    return-void
.end method

.method public final sendOffscreenEnd()V
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

.method public final sendOffscreenProgress(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    return-void
.end method
