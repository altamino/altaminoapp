.class Lcom/narvii/widget/TagEditFlowView$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$2;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    .line 2
    const/16 p1, 0x43

    .line 3
    .line 4
    if-ne p2, p1, :cond_2

    .line 5
    .line 6
    if-eqz p3, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView$2;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/widget/TagEditFlowView;->a(Lcom/narvii/widget/TagEditFlowView;)Landroid/widget/EditText;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView$2;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 35
    .line 36
    iget-object p2, p1, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    .line 37
    const/4 p3, 0x1

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/widget/TagEditFlowView;->c(Lcom/narvii/widget/TagEditFlowView;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    move-result p1

    .line 48
    .line 49
    add-int/lit8 p1, p1, -0x2

    .line 50
    .line 51
    if-ltz p1, :cond_1

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/widget/TagEditFlowView$2;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/widget/TagEditFlowView$2;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 62
    .line 63
    iput-object p1, p2, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    .line 67
    :cond_1
    :goto_0
    return p3

    .line 68
    :cond_2
    const/4 p1, 0x0

    .line 69
    return p1
.end method
