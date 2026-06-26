.class final Lcom/narvii/app/NVApplication$3;
.super Landroid/os/Handler;
.source "NVApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 414
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 417
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x64

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 418
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 420
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 421
    invoke-static {}, Lcom/narvii/app/NVApplication;->access$106()I

    move-result v0

    if-gtz v0, :cond_1

    .line 422
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/app/NVApplication;->onApplicationStop()V

    .line 423
    invoke-static {v4}, Lcom/narvii/app/NVApplication;->access$102(I)I

    .line 426
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/16 v5, 0xc

    if-ne v0, v3, :cond_2

    .line 427
    invoke-virtual {p0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 429
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v5, :cond_3

    .line 430
    invoke-static {}, Lcom/narvii/app/NVApplication;->access$206()I

    move-result p1

    if-gtz p1, :cond_3

    .line 431
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/app/NVApplication;->onApplicationPause()V

    .line 432
    invoke-static {v4}, Lcom/narvii/app/NVApplication;->access$202(I)I

    :cond_3
    return-void
.end method
