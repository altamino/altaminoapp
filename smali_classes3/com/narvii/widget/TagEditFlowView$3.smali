.class Lcom/narvii/widget/TagEditFlowView$3;
.super Ljava/lang/Object;
.source "TagEditFlowView.java"

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

    .line 158
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$3;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_0

    .line 162
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 163
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 165
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/narvii/widget/TagEditFlowView$3;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-static {p2}, Lcom/narvii/widget/TagEditFlowView;->access$100(Lcom/narvii/widget/TagEditFlowView;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/narvii/widget/TagEditFlowView;->editSubmit(Ljava/lang/String;Landroid/widget/EditText;)V

    const/4 p1, 0x1

    return p1
.end method
