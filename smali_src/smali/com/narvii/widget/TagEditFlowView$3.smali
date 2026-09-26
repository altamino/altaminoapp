.class Lcom/narvii/widget/TagEditFlowView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/TagEditFlowView;->addEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/TagEditFlowView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/TagEditFlowView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$3;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    if-eq p2, v0, :cond_1

    .line 4
    const/4 v0, 0x6

    .line 5
    .line 6
    if-eq p2, v0, :cond_1

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    move-result p2

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 18
    move-result p2

    .line 19
    .line 20
    const/16 p3, 0x42

    .line 21
    .line 22
    if-ne p2, p3, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/widget/TagEditFlowView$3;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lcom/narvii/widget/TagEditFlowView;->a(Lcom/narvii/widget/TagEditFlowView;)Landroid/widget/EditText;

    .line 43
    move-result-object p3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1, p3}, Lcom/narvii/widget/TagEditFlowView;->editSubmit(Ljava/lang/String;Landroid/widget/EditText;)V

    .line 47
    const/4 p1, 0x1

    .line 48
    return p1
.end method
