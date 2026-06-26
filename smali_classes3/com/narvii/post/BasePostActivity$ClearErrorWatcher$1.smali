.class Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;
.super Ljava/lang/Object;
.source "BasePostActivity.java"

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

    .line 536
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;->this$0:Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;->this$0:Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;

    iget-object v0, v0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;->this$0:Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;

    iget-object v1, v0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
