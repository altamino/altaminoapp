.class Lcom/narvii/user/profile/UserProfileFragment$1;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$1;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOnlineStatusChanged(I)V
    .locals 0

    .line 355
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$1;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 356
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$1;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    return-void
.end method
