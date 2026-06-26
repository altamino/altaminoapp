.class Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$3;
.super Lcom/narvii/util/text/LinkTouchSpan;
.source "ClaimOrganizerTransFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showConfirmLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$3;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    invoke-direct {p0}, Lcom/narvii/util/text/LinkTouchSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 296
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$3;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://guidelines"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
