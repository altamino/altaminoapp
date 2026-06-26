.class Lcom/narvii/account/EmailLoginFragment$1;
.super Ljava/lang/Object;
.source "EmailLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/EmailLoginFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/EmailLoginFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/EmailLoginFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/account/EmailLoginFragment$1;->this$0:Lcom/narvii/account/EmailLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/account/EmailLoginFragment$1;->this$0:Lcom/narvii/account/EmailLoginFragment;

    iget-object v0, v0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
