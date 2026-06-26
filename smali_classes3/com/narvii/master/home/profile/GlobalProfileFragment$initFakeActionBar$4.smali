.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 511
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "MoreIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 512
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 513
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 517
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f06d5

    const/4 v1, 0x0

    .line 518
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 519
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getUserBlockService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/userblock/UserBlockService;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7f0f1144

    .line 521
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0f1121

    const/4 v2, 0x1

    .line 523
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 526
    :goto_0
    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;Z)V

    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 539
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method
