.class Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/invitation/InvitationWelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;


# direct methods
.method constructor <init>(Lcom/narvii/master/invitation/InvitationWelcomeActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->launchCommunity(Lcom/narvii/master/invitation/CommunityInviteResponse;)Landroid/content/Intent;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "Source"

    .line 11
    .line 12
    const-string v1, "clipboardlink"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 26
    return-void
.end method
