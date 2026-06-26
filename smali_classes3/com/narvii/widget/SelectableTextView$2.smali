.class Lcom/narvii/widget/SelectableTextView$2;
.super Ljava/lang/Object;
.source "SelectableTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/SelectableTextView;->onSelectionChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/SelectableTextView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/SelectableTextView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 105
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    iget-boolean v1, v1, Lcom/narvii/widget/SelectableTextView;->hasSavedMovementMethod:Z

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/narvii/widget/SelectableTextView;->isSelectionChanging:Z

    .line 107
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    iget-object v2, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    iget-object v2, v2, Lcom/narvii/widget/SelectableTextView;->savedMovementMethod:Landroid/text/method/MovementMethod;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 108
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    iput-boolean v0, v1, Lcom/narvii/widget/SelectableTextView;->hasSavedMovementMethod:Z

    .line 109
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/narvii/widget/SelectableTextView;->savedMovementMethod:Landroid/text/method/MovementMethod;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :catchall_0
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    iput-boolean v0, v1, Lcom/narvii/widget/SelectableTextView;->isSelectionChanging:Z

    return-void
.end method
