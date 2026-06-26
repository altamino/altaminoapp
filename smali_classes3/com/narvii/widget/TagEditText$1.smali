.class Lcom/narvii/widget/TagEditText$1;
.super Ljava/lang/Object;
.source "TagEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/TagEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/TagEditText;


# direct methods
.method constructor <init>(Lcom/narvii/widget/TagEditText;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/widget/TagEditText$1;->this$0:Lcom/narvii/widget/TagEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2c

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 p3, 0x1

    if-ltz p2, :cond_0

    add-int/2addr p2, p3

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/narvii/widget/TagEditText$1;->this$0:Lcom/narvii/widget/TagEditText;

    invoke-virtual {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
