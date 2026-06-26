.class Lcom/narvii/account/LeaderThirdPartyLoginFragment$1;
.super Ljava/lang/Object;
.source "LeaderThirdPartyLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LeaderThirdPartyLoginFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LeaderThirdPartyLoginFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/LeaderThirdPartyLoginFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/account/LeaderThirdPartyLoginFragment$1;->this$0:Lcom/narvii/account/LeaderThirdPartyLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/account/LeaderThirdPartyLoginFragment$1;->this$0:Lcom/narvii/account/LeaderThirdPartyLoginFragment;

    iget-object v0, v0, Lcom/narvii/account/LeaderThirdPartyLoginFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
