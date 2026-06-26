.class Lcom/narvii/widget/TagEditFlowView$1;
.super Ljava/lang/Object;
.source "TagEditFlowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TagEditFlowView;
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

    .line 55
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$1;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$1;->this$0:Lcom/narvii/widget/TagEditFlowView;

    iput-object p1, v0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 60
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView$1;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 61
    sget v1, Lcom/narvii/lib/R$string;->remove:I

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 62
    new-instance v0, Lcom/narvii/widget/TagEditFlowView$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/TagEditFlowView$1$1;-><init>(Lcom/narvii/widget/TagEditFlowView$1;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    new-instance v0, Lcom/narvii/widget/TagEditFlowView$1$2;

    invoke-direct {v0, p0}, Lcom/narvii/widget/TagEditFlowView$1$2;-><init>(Lcom/narvii/widget/TagEditFlowView$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 78
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method
