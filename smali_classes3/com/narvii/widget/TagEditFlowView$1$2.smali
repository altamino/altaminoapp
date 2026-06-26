.class Lcom/narvii/widget/TagEditFlowView$1$2;
.super Ljava/lang/Object;
.source "TagEditFlowView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/TagEditFlowView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/widget/TagEditFlowView$1;


# direct methods
.method constructor <init>(Lcom/narvii/widget/TagEditFlowView$1;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$1$2;->this$1:Lcom/narvii/widget/TagEditFlowView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView$1$2;->this$1:Lcom/narvii/widget/TagEditFlowView$1;

    iget-object p1, p1, Lcom/narvii/widget/TagEditFlowView$1;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-virtual {p1}, Lcom/narvii/widget/TagEditFlowView;->unSelectCurrentSelectedView()V

    return-void
.end method
