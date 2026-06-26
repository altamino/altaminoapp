.class Lcom/tokenautocomplete/TokenCompleteTextView$2;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

.field final synthetic val$text:Landroid/text/Editable;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/text/Editable;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->val$text:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->val$text:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    return-void
.end method
