.class Lcom/narvii/util/ScreenRotateHelper$1;
.super Landroid/os/Handler;
.source "ScreenRotateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/ScreenRotateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ScreenRotateHelper;


# direct methods
.method constructor <init>(Lcom/narvii/util/ScreenRotateHelper;Landroid/os/Looper;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/util/ScreenRotateHelper$1;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x378

    if-ne v0, v1, :cond_3

    .line 51
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 54
    iget-object v0, p0, Lcom/narvii/util/ScreenRotateHelper$1;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    invoke-static {v0, p1}, Lcom/narvii/util/ScreenRotateHelper;->access$000(Lcom/narvii/util/ScreenRotateHelper;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/ScreenRotateHelper$1;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    iget v2, v1, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    if-ne v2, v0, :cond_1

    .line 61
    iput p1, v1, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    return-void

    :cond_1
    if-eq v2, p1, :cond_3

    .line 66
    iput p1, v1, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    .line 68
    iget p1, v1, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xe

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    iget-object p1, v1, Lcom/narvii/util/ScreenRotateHelper;->requestOrientationListener:Lcom/narvii/util/RequestOrientationListener;

    if-eqz p1, :cond_3

    invoke-static {v1}, Lcom/narvii/util/ScreenRotateHelper;->access$100(Lcom/narvii/util/ScreenRotateHelper;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/narvii/util/ScreenRotateHelper$1;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    iget-object v0, p1, Lcom/narvii/util/ScreenRotateHelper;->requestOrientationListener:Lcom/narvii/util/RequestOrientationListener;

    iget p1, p1, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    invoke-interface {v0, p1}, Lcom/narvii/util/RequestOrientationListener;->requestOrientation(I)V

    nop

    :cond_3
    :goto_0
    return-void
.end method
