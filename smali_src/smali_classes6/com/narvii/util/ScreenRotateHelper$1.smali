.class Lcom/narvii/util/ScreenRotateHelper$1;
.super Landroid/os/Handler;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ScreenRotateHelper$1;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const/16 v1, 0x378

    .line 5
    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/util/ScreenRotateHelper$1;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/narvii/util/ScreenRotateHelper;->b(Lcom/narvii/util/ScreenRotateHelper;I)I

    .line 14
    move-result p1

    .line 15
    const/4 v0, -0x1

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/ScreenRotateHelper$1;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    .line 21
    .line 22
    iget v2, v1, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    .line 23
    .line 24
    if-ne v2, v0, :cond_1

    .line 25
    .line 26
    iput p1, v1, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    .line 27
    return-void

    .line 28
    .line 29
    :cond_1
    if-eq v2, p1, :cond_3

    .line 30
    .line 31
    iput p1, v1, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    .line 32
    .line 33
    const/16 v0, 0x9

    .line 34
    .line 35
    if-eq p1, v0, :cond_3

    .line 36
    .line 37
    const/16 v0, 0xe

    .line 38
    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    iget-object p1, v1, Lcom/narvii/util/ScreenRotateHelper;->requestOrientationListener:Lcom/narvii/util/RequestOrientationListener;

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/narvii/util/ScreenRotateHelper;->a(Lcom/narvii/util/ScreenRotateHelper;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/util/ScreenRotateHelper$1;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    .line 53
    .line 54
    iget-object v0, p1, Lcom/narvii/util/ScreenRotateHelper;->requestOrientationListener:Lcom/narvii/util/RequestOrientationListener;

    .line 55
    .line 56
    iget p1, p1, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, p1}, Lcom/narvii/util/RequestOrientationListener;->requestOrientation(I)V

    .line 60
    nop

    .line 61
    :cond_3
    :goto_0
    return-void
.end method
