.class Lcom/narvii/user/profile/UserProfileFragment$9;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->popupCustomMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;[I)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iput-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->val$ops:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 882
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->val$ops:[I

    aget p1, p1, p2

    const/4 p2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 892
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v0, "Action Sheet"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/user/profile/UserProfileFragment;->editProfile(Ljava/lang/String;Z)V

    goto :goto_0

    .line 884
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->activateAccount()V

    goto :goto_0

    .line 887
    :sswitch_2
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p1, p2}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p2, "User Profile"

    .line 888
    iput-object p2, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 889
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    goto :goto_0

    .line 901
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 v0, 0x6d

    .line 902
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 903
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, p2

    const/4 p2, 0x1

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, p2

    .line 904
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 905
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    goto :goto_0

    .line 895
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 896
    new-instance p2, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p2, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 897
    invoke-virtual {p2, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 898
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0094 -> :sswitch_4
        0x7f0f0310 -> :sswitch_3
        0x7f0f0fb0 -> :sswitch_2
        0x7f0f111d -> :sswitch_1
        0x7f0f1128 -> :sswitch_0
    .end sparse-switch
.end method
