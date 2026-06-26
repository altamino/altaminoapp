.class Lcom/narvii/util/text/NVText$ClickableTagSpan;
.super Lcom/narvii/util/text/TouchableSpan;
.source "NVText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/text/NVText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickableTagSpan"
.end annotation


# instance fields
.field listener:Lcom/narvii/util/text/OnTagClickListener;

.field text:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/util/text/NVText;

.field type:I


# direct methods
.method public constructor <init>(Lcom/narvii/util/text/NVText;ILjava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->this$0:Lcom/narvii/util/text/NVText;

    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    .line 442
    iput p2, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->type:I

    .line 443
    iput-object p3, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->text:Ljava/lang/String;

    .line 444
    iput-object p4, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->listener:Lcom/narvii/util/text/OnTagClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->listener:Lcom/narvii/util/text/OnTagClickListener;

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->this$0:Lcom/narvii/util/text/NVText;

    iget v2, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->type:I

    iget-object v3, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->text:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/narvii/util/text/OnTagClickListener;->onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    const/4 v0, 0x1

    .line 456
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 457
    iget-object v0, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->this$0:Lcom/narvii/util/text/NVText;

    invoke-virtual {p0}, Lcom/narvii/util/text/TouchableSpan;->isPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/text/NVText;->renderTextPaint(Landroid/text/TextPaint;Z)V

    return-void
.end method
