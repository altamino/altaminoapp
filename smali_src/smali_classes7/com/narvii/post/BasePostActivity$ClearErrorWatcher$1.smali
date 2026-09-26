.class Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;


# direct methods
.method constructor <init>(Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;->this$0:Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;->this$0:Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;->text:Landroid/widget/TextView;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;->this$0:Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;->text:Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 16
    return-void
.end method
