.class Lcom/narvii/widget/TagEditFlowView$2;
.super Ljava/lang/Object;
.source "TagEditFlowView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 137
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$2;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x43

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    .line 140
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView$2;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-static {p1}, Lcom/narvii/widget/TagEditFlowView;->access$100(Lcom/narvii/widget/TagEditFlowView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView$2;->this$0:Lcom/narvii/widget/TagEditFlowView;

    iget-object p2, p1, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 142
    invoke-static {p1}, Lcom/narvii/widget/TagEditFlowView;->access$000(Lcom/narvii/widget/TagEditFlowView;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    if-ltz p1, :cond_1

    .line 146
    iget-object p2, p0, Lcom/narvii/widget/TagEditFlowView$2;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 148
    iget-object p2, p0, Lcom/narvii/widget/TagEditFlowView$2;->this$0:Lcom/narvii/widget/TagEditFlowView;

    iput-object p1, p2, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    .line 149
    iget-object p1, p2, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    :goto_0
    return p3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
