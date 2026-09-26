.class Lcom/narvii/util/text/NVText$ClickableTagSpan;
.super Lcom/narvii/util/text/TouchableSpan;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->this$0:Lcom/narvii/util/text/NVText;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->type:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->text:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->listener:Lcom/narvii/util/text/OnTagClickListener;

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->listener:Lcom/narvii/util/text/OnTagClickListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->this$0:Lcom/narvii/util/text/NVText;

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->type:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->text:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/narvii/util/text/OnTagClickListener;->onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V

    .line 14
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/text/NVText$ClickableTagSpan;->this$0:Lcom/narvii/util/text/NVText;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/util/text/TouchableSpan;->isPressed()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/text/NVText;->renderTextPaint(Landroid/text/TextPaint;Z)V

    .line 14
    return-void
.end method
