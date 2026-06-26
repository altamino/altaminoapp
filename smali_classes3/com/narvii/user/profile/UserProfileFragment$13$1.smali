.class Lcom/narvii/user/profile/UserProfileFragment$13$1;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/profile/UserProfileFragment$13;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment$13;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1138
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$13$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$13;

    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v1, "Action Sheet avatar frame"

    invoke-virtual {p2, v1, p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->openUserProfilePostActivity(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 1140
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$13;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->gallery(Lcom/narvii/model/Media;)V

    goto :goto_0

    .line 1142
    :cond_1
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$13$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$13;

    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v0, "Action Sheet"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->editProfile(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
