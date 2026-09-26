.class public final Lcom/narvii/util/kotlin/TextViewExtensionKt$makeTextLink$clickableSpan$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/kotlin/TextViewExtensionKt;->makeTextLink(Landroid/widget/TextView;Ljava/lang/String;ZLjava/lang/Integer;Le8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $action:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $textColor:I

.field final synthetic $underlined:Z


# direct methods
.method constructor <init>(Le8/a;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/kotlin/TextViewExtensionKt$makeTextLink$clickableSpan$1;->$action:Le8/a;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/util/kotlin/TextViewExtensionKt$makeTextLink$clickableSpan$1;->$underlined:Z

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/util/kotlin/TextViewExtensionKt$makeTextLink$clickableSpan$1;->$textColor:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "textView"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/util/kotlin/TextViewExtensionKt$makeTextLink$clickableSpan$1;->$action:Le8/a;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 14
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "drawState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/util/kotlin/TextViewExtensionKt$makeTextLink$clickableSpan$1;->$underlined:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 14
    .line 15
    iget v0, p0, Lcom/narvii/util/kotlin/TextViewExtensionKt$makeTextLink$clickableSpan$1;->$textColor:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    return-void
.end method
