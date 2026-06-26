.class Lcom/narvii/widget/CodeEditView$2;
.super Ljava/lang/Object;
.source "CodeEditView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/CodeEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/CodeEditView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/CodeEditView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/widget/CodeEditView$2;->this$0:Lcom/narvii/widget/CodeEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$2;->this$0:Lcom/narvii/widget/CodeEditView;

    iget-object v1, v0, Lcom/narvii/widget/CodeEditView;->currentCursor:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 152
    iget-boolean v0, v0, Lcom/narvii/widget/CodeEditView;->blinkShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$2;->this$0:Lcom/narvii/widget/CodeEditView;

    iget-boolean v1, v0, Lcom/narvii/widget/CodeEditView;->blinkShow:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/widget/CodeEditView;->blinkShow:Z

    .line 154
    iget-object v1, v0, Lcom/narvii/widget/CodeEditView;->blink:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
