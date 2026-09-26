.class Lcom/narvii/account/ThirdPartyAccountBaseFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requirePassword(Ljava/lang/String;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$7;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$7;->val$thirdPartSecret:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    const-string v2, "key_third_part_secret"

    .line 13
    .line 14
    iget-object v3, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$7;->val$thirdPartSecret:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v2, "key_is_third_part"

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$7;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->getSignUpMethod()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    const-string v3, "key_sign_up_method"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    const-string v2, "key_third_party_nickname"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    const-string p1, "key_avatar_url"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    const-string/jumbo p1, "verify_type"

    .line 47
    const/4 p2, 0x4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$7;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountBaseFragment;->goToSetPasswordPage(Landroidx/fragment/app/Fragment;)V

    .line 59
    return-void
.end method
