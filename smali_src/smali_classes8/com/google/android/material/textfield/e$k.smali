.class Lcom/google/android/material/textfield/e$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/e;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/e;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/e$k;->this$0:Lcom/google/android/material/textfield/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/e$k;->this$0:Lcom/google/android/material/textfield/e;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/e$k;->this$0:Lcom/google/android/material/textfield/e;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/e;->t(Lcom/google/android/material/textfield/e;Landroid/widget/AutoCompleteTextView;)V

    .line 16
    return-void
.end method
