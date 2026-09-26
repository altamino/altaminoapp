.class Lcom/narvii/onlinestatus/OnlineDialogHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;->this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;->this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 11
    .line 12
    const-string v1, "__communityId"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    .line 18
    const-string v1, "id"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;->this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 29
    return-void
.end method
