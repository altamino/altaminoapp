.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$9;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$9;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 415
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$9;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 416
    invoke-virtual {p1}, Lcom/narvii/master/CommunityHelper;->getFeedBackIntent()Landroid/content/Intent;

    move-result-object p1

    .line 417
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$9;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
