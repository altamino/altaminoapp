.class Lcom/narvii/master/invitation/InvitationWelcomeActivity$1;
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

    .line 71
    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$1;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$1;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method
