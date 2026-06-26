.class Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;
.super Ljava/lang/Object;
.source "ThirdPartyAccountBaseFragment.java"

# interfaces
.implements Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requireEmailOrPhoneNumber(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

.field final synthetic val$thirdPartSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    iput-object p2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;->val$thirdPartSecret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 158
    new-instance v0, Lcom/narvii/account/ThirdPartySetUpFragment;

    invoke-direct {v0}, Lcom/narvii/account/ThirdPartySetUpFragment;-><init>()V

    .line 159
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 160
    iget-object v2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;->val$thirdPartSecret:Ljava/lang/String;

    const-string v3, "key_third_part_secret"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    iget-boolean v2, v2, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->isLoginFlow:Z

    const-string v3, "isLogin"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "key_is_third_part"

    const/4 v3, 0x1

    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    iget-object v2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    invoke-virtual {v2}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->getSignUpMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_sign_up_method"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_third_party_nickname"

    .line 164
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_avatar_url"

    .line 165
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 167
    iget-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    invoke-static {p1, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->access$300(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Landroid/support/v4/app/Fragment;)V

    return-void
.end method
