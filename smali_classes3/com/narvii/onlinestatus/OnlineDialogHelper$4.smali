.class Lcom/narvii/onlinestatus/OnlineDialogHelper$4;
.super Ljava/lang/Object;
.source "OnlineDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/OnlineDialogHelper;->checkOnlineStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;->this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 82
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;->this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    iget-object v0, v0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string v1, "__communityId"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;->this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    iget-object v0, v0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
