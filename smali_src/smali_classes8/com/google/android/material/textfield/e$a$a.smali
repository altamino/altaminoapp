.class Lcom/google/android/material/textfield/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/e$a;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/textfield/e$a;

.field final synthetic val$editText:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/e$a;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/e$a$a;->this$1:Lcom/google/android/material/textfield/e$a;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/material/textfield/e$a$a;->val$editText:Landroid/widget/AutoCompleteTextView;

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
    iget-object v0, p0, Lcom/google/android/material/textfield/e$a$a;->val$editText:Landroid/widget/AutoCompleteTextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/textfield/e$a$a;->this$1:Lcom/google/android/material/textfield/e$a;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/material/textfield/e$a;->this$0:Lcom/google/android/material/textfield/e;

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/e;->r(Lcom/google/android/material/textfield/e;Z)V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/material/textfield/e$a$a;->this$1:Lcom/google/android/material/textfield/e$a;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/android/material/textfield/e$a;->this$0:Lcom/google/android/material/textfield/e;

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/e;->s(Lcom/google/android/material/textfield/e;Z)Z

    .line 21
    return-void
.end method
