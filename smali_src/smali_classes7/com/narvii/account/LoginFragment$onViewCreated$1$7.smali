.class final Lcom/narvii/account/LoginFragment$onViewCreated$1$7;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/LoginFragment$onViewCreated$1$7;->this$0:Lcom/narvii/account/LoginFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment$onViewCreated$1$7;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    iget-object v0, p0, Lcom/narvii/account/LoginFragment$onViewCreated$1$7;->this$0:Lcom/narvii/account/LoginFragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const v2, 0x7f010010

    const v3, 0x7f010011

    const v4, 0x7f01000e

    const v5, 0x7f01000f

    .line 3
    invoke-virtual {v0, v4, v5, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 4
    :cond_1
    new-instance v2, Lcom/narvii/account/SignUpFragment;

    invoke-direct {v2}, Lcom/narvii/account/SignUpFragment;-><init>()V

    if-eqz v0, :cond_2

    const v3, 0x7f0a05ff

    const-string v4, "signup"

    .line 5
    invoke-virtual {v0, v3, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    :cond_2
    return-void
.end method
