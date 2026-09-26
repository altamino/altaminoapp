.class Lcom/narvii/widget/TagEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TagEditText$1;->this$0:Lcom/narvii/widget/TagEditText;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p3, 0x5

    .line 2
    .line 3
    if-ne p2, p3, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const/16 p2, 0x2c

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 17
    move-result p2

    .line 18
    const/4 p3, 0x1

    .line 19
    .line 20
    if-ltz p2, :cond_0

    .line 21
    add-int/2addr p2, p3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    move-result p1

    .line 34
    .line 35
    if-lez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/widget/TagEditText$1;->this$0:Lcom/narvii/widget/TagEditText;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 41
    return p3

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    return p1
.end method
