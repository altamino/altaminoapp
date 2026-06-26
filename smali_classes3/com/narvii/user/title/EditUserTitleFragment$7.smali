.class Lcom/narvii/user/title/EditUserTitleFragment$7;
.super Ljava/lang/Object;
.source "EditUserTitleFragment.java"

# interfaces
.implements Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$7;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startEditColor(Lcom/narvii/model/api/UserTitle;)V
    .locals 2

    .line 337
    const-class v0, Lcom/narvii/user/title/UserTitleColorPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 338
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "userTitle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$7;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    const/16 v1, 0x6d

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
