.class public final Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$onViewCreated$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$onViewCreated$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->access$updateNextView(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)V

    .line 6
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
