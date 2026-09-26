.class public abstract Lcom/narvii/util/text/LinkTouchSpan;
.super Lcom/narvii/util/text/TouchableSpan;
.source "SourceFile"


# instance fields
.field private mPressedColor:I

.field private mPressedColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/text/LinkTouchSpan;->mPressedColorSet:Z

    iput p1, p0, Lcom/narvii/util/text/LinkTouchSpan;->mPressedColor:I

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/util/text/TouchableSpan;->isPressed()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/narvii/util/text/LinkTouchSpan;->mPressedColorSet:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/narvii/util/text/LinkTouchSpan;->mPressedColor:I

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    const v0, -0x333334

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    .line 23
    :goto_0
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 24
    return-void
.end method
