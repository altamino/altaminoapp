.class Lcom/narvii/util/ToolTipHelper$1;
.super Ljava/lang/Object;
.source "ToolTipHelper.java"

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

    .line 213
    iput-object p1, p0, Lcom/narvii/util/ToolTipHelper$1;->this$0:Lcom/narvii/util/ToolTipHelper;

    iput-object p2, p0, Lcom/narvii/util/ToolTipHelper$1;->val$tooltip:Lcom/narvii/util/Tooltip;

    iput-object p3, p0, Lcom/narvii/util/ToolTipHelper$1;->val$anchorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper$1;->this$0:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 217
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper$1;->val$tooltip:Lcom/narvii/util/Tooltip;

    iget-object v1, v0, Lcom/narvii/util/Tooltip;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 218
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 222
    :cond_0
    iget-boolean p1, v0, Lcom/narvii/util/Tooltip;->linkClickWithAnchorView:Z

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/narvii/util/ToolTipHelper$1;->val$anchorView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    return-void
.end method
