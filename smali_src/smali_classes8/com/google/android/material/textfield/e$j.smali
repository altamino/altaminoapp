.class Lcom/google/android/material/textfield/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/e;
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
    iput-object p1, p0, Lcom/google/android/material/textfield/e$j;->this$0:Lcom/google/android/material/textfield/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/e$j;->this$0:Lcom/google/android/material/textfield/e;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/material/textfield/e;->q(Landroid/widget/EditText;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/material/textfield/e$j;->this$0:Lcom/google/android/material/textfield/e;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/material/textfield/f;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    const/4 p1, 0x2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;I)V

    .line 33
    :cond_1
    return-void
.end method
