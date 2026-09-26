.class Lcom/tokenautocomplete/TokenCompleteTextView$b;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$b;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$b;->val$text:Landroid/text/Editable;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$b;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$b;->val$text:Landroid/text/Editable;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 12
    return-void
.end method
