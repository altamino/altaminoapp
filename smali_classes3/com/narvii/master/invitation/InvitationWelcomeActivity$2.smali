.class Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;
.super Ljava/lang/Object;
.source "InvitationWelcomeActivity.java"

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

    .line 77
    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 80
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    iget-object p1, p1, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-static {p1}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->launchCommunity(Lcom/narvii/master/invitation/CommunityInviteResponse;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "clipboardlink"

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method
