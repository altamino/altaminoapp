.class Lcom/narvii/util/ToolTipHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ToolTipHelper;

.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$tooltip:Lcom/narvii/util/Tooltip;


# direct methods
.method constructor <init>(Lcom/narvii/util/ToolTipHelper;Lcom/narvii/util/Tooltip;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ToolTipHelper$1;->this$0:Lcom/narvii/util/ToolTipHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/ToolTipHelper$1;->val$tooltip:Lcom/narvii/util/Tooltip;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/ToolTipHelper$1;->val$anchorView:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper$1;->this$0:Lcom/narvii/util/ToolTipHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper$1;->val$tooltip:Lcom/narvii/util/Tooltip;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/util/Tooltip;->onClickListener:Landroid/view/View$OnClickListener;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-boolean p1, v0, Lcom/narvii/util/Tooltip;->linkClickWithAnchorView:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/util/ToolTipHelper$1;->val$anchorView:Landroid/view/View;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 27
    :cond_1
    return-void
.end method
