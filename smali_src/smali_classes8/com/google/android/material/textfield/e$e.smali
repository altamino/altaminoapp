.class Lcom/google/android/material/textfield/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/google/android/material/textfield/e$e;->this$0:Lcom/google/android/material/textfield/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/e$e;->this$0:Lcom/google/android/material/textfield/e;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/material/textfield/e$e;->this$0:Lcom/google/android/material/textfield/e;

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/google/android/material/textfield/e;->r(Lcom/google/android/material/textfield/e;Z)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/material/textfield/e$e;->this$0:Lcom/google/android/material/textfield/e;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/google/android/material/textfield/e;->s(Lcom/google/android/material/textfield/e;Z)Z

    .line 21
    :cond_0
    return-void
.end method
