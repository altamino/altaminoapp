.class Lcom/narvii/widget/SelectableTextView$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 9
    .line 10
    iget-boolean v2, v1, Lcom/narvii/widget/SelectableTextView;->hasSavedMovementMethod:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    iput-boolean v2, v1, Lcom/narvii/widget/SelectableTextView;->isSelectionChanging:Z

    .line 16
    .line 17
    iget-object v2, v1, Lcom/narvii/widget/SelectableTextView;->savedMovementMethod:Landroid/text/method/MovementMethod;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 23
    .line 24
    iput-boolean v0, v1, Lcom/narvii/widget/SelectableTextView;->hasSavedMovementMethod:Z

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    iput-object v2, v1, Lcom/narvii/widget/SelectableTextView;->savedMovementMethod:Landroid/text/method/MovementMethod;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    :catchall_0
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$2;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 30
    .line 31
    iput-boolean v0, v1, Lcom/narvii/widget/SelectableTextView;->isSelectionChanging:Z

    .line 32
    return-void
.end method
