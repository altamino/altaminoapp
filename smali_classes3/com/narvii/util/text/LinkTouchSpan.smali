.class public abstract Lcom/narvii/util/text/LinkTouchSpan;
.super Lcom/narvii/util/text/TouchableSpan;
.source "LinkTouchSpan.java"


# instance fields
.field private mPressedColor:I

.field private mPressedColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/narvii/util/text/LinkTouchSpan;->mPressedColorSet:Z

    .line 20
    iput p1, p0, Lcom/narvii/util/text/LinkTouchSpan;->mPressedColor:I

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 26
    invoke-virtual {p0}, Lcom/narvii/util/text/TouchableSpan;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/util/text/LinkTouchSpan;->mPressedColorSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/util/text/LinkTouchSpan;->mPressedColor:I

    goto :goto_0

    :cond_0
    const v0, -0x333334

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method
