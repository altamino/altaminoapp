.class Lcom/narvii/widget/TagEditFlowView$1$1;
.super Ljava/lang/Object;
.source "TagEditFlowView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 62
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$1$1;->this$1:Lcom/narvii/widget/TagEditFlowView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView$1$1;->this$1:Lcom/narvii/widget/TagEditFlowView$1;

    iget-object p1, p1, Lcom/narvii/widget/TagEditFlowView$1;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-static {p1}, Lcom/narvii/widget/TagEditFlowView;->access$000(Lcom/narvii/widget/TagEditFlowView;)V

    :goto_0
    return-void
.end method
