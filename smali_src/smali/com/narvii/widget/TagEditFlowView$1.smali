.class Lcom/narvii/widget/TagEditFlowView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$1;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$1;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 9
    .line 10
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView$1;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    sget v1, Lcom/narvii/lib/R$string;->remove:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/widget/TagEditFlowView$1$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/widget/TagEditFlowView$1$1;-><init>(Lcom/narvii/widget/TagEditFlowView$1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/widget/TagEditFlowView$1$2;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/widget/TagEditFlowView$1$2;-><init>(Lcom/narvii/widget/TagEditFlowView$1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 44
    return-void
.end method
