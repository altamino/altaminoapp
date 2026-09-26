.class Lcom/narvii/app/NVApplication$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const-wide/16 v1, 0x64

    .line 5
    .line 6
    const/16 v3, 0xb

    .line 7
    const/4 v4, 0x1

    .line 8
    .line 9
    if-ne v0, v4, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 13
    .line 14
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 15
    const/4 v5, 0x0

    .line 16
    .line 17
    if-ne v0, v3, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/app/NVApplication;->f()I

    .line 21
    move-result v0

    .line 22
    sub-int/2addr v0, v4

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/app/NVApplication;->h(I)V

    .line 26
    .line 27
    if-gtz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/app/NVApplication;->onApplicationStop()V

    .line 35
    .line 36
    .line 37
    invoke-static {v5}, Lcom/narvii/app/NVApplication;->h(I)V

    .line 38
    .line 39
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 40
    const/4 v3, 0x2

    .line 41
    .line 42
    const/16 v6, 0xc

    .line 43
    .line 44
    if-ne v0, v3, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 48
    .line 49
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 50
    .line 51
    if-ne p1, v6, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/narvii/app/NVApplication;->e()I

    .line 55
    move-result p1

    .line 56
    sub-int/2addr p1, v4

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/narvii/app/NVApplication;->g(I)V

    .line 60
    .line 61
    if-gtz p1, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/app/NVApplication;->onApplicationPause()V

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Lcom/narvii/app/NVApplication;->g(I)V

    .line 72
    :cond_3
    return-void
.end method
