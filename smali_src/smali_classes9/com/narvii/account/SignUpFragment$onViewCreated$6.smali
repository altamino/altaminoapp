.class final Lcom/narvii/account/SignUpFragment$onViewCreated$6;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SignUpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lcom/narvii/account/vm/SignupUiState;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignUpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignUpFragment.kt\ncom/narvii/account/SignUpFragment$onViewCreated$6\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,175:1\n262#2,2:176\n262#2,2:178\n*S KotlinDebug\n*F\n+ 1 SignUpFragment.kt\ncom/narvii/account/SignUpFragment$onViewCreated$6\n*L\n130#1:176,2\n131#1:178,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/SignUpFragment$onViewCreated$6;->this$0:Lcom/narvii/account/SignUpFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/account/vm/SignupUiState;

    invoke-virtual {p0, p1}, Lcom/narvii/account/SignUpFragment$onViewCreated$6;->invoke(Lcom/narvii/account/vm/SignupUiState;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Lcom/narvii/account/vm/SignupUiState;)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/account/SignUpFragment$onViewCreated$6;->this$0:Lcom/narvii/account/SignUpFragment;

    .line 2
    invoke-static {v0}, Lcom/narvii/account/SignUpFragment;->access$getBinding(Lcom/narvii/account/SignUpFragment;)Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentSignUpBinding;->emailSignup:Landroid/widget/Button;

    const-string v1, "emailSignup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/account/vm/SignupUiState;->isEmailSignupAvailable()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/account/SignUpFragment$onViewCreated$6;->this$0:Lcom/narvii/account/SignUpFragment;

    .line 4
    invoke-static {v0}, Lcom/narvii/account/SignUpFragment;->access$getBinding(Lcom/narvii/account/SignUpFragment;)Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentSignUpBinding;->phoneSignup:Landroid/widget/Button;

    const-string v1, "phoneSignup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/account/vm/SignupUiState;->isPhoneSignupAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v3

    .line 5
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
