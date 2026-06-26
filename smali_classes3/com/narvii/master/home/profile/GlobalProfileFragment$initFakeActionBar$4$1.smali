.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4$1;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $block:Z

.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;Z)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;

    iput-boolean p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4$1;->$block:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    iget-boolean p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4$1;->$block:Z

    if-eqz p2, :cond_1

    .line 532
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;

    iget-object p2, p2, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p2, v0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$blockUser(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZZ)V

    goto :goto_0

    .line 534
    :cond_1
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;

    iget-object p2, p2, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p2, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$blockUser(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V

    goto :goto_0

    .line 528
    :cond_2
    new-instance p2, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;

    iget-object v0, v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p2, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 529
    invoke-virtual {p2, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;

    iget-object p2, p2, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    :goto_0
    return-void
.end method
