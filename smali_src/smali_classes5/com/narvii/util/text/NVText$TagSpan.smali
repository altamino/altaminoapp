.class Lcom/narvii/util/text/NVText$TagSpan;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/text/NVText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/text/NVText;


# direct methods
.method private constructor <init>(Lcom/narvii/util/text/NVText;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/text/NVText$TagSpan;->this$0:Lcom/narvii/util/text/NVText;

    .line 2
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/util/text/NVText;Lcom/narvii/util/text/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/text/NVText$TagSpan;-><init>(Lcom/narvii/util/text/NVText;)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/util/text/NVText$TagSpan;->this$0:Lcom/narvii/util/text/NVText;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/text/NVText;->renderTextPaint(Landroid/text/TextPaint;Z)V

    .line 10
    return-void
.end method
