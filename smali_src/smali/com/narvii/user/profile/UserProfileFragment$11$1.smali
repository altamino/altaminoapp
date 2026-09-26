.class Lcom/narvii/user/profile/UserProfileFragment$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/profile/UserProfileFragment$11;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment$11;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$11;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$11;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 9
    .line 10
    const-string v1, "Action Sheet avatar frame"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1, v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->openUserProfilePostActivity(Ljava/lang/String;ZZ)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    if-ne p2, p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$11;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 21
    const/4 p2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->gallery(Lcom/narvii/model/Media;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$11;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 30
    .line 31
    const-string p2, "Action Sheet"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Lcom/narvii/user/profile/UserProfileFragment;->editProfile(Ljava/lang/String;Z)V

    .line 35
    :goto_0
    return-void
.end method
