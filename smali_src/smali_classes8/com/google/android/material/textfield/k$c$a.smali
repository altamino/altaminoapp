.class Lcom/google/android/material/textfield/k$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/k$c;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/textfield/k$c;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/k$c;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/k$c$a;->this$1:Lcom/google/android/material/textfield/k$c;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/material/textfield/k$c$a;->val$editText:Landroid/widget/EditText;

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
    iget-object v0, p0, Lcom/google/android/material/textfield/k$c$a;->val$editText:Landroid/widget/EditText;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/k$c$a;->this$1:Lcom/google/android/material/textfield/k$c;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/google/android/material/textfield/k$c;->this$0:Lcom/google/android/material/textfield/k;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/material/textfield/k;->f(Lcom/google/android/material/textfield/k;)Landroid/text/TextWatcher;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    return-void
.end method
