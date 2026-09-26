.class Lcom/narvii/user/profile/UserProfileFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->val$ops:[I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->val$ops:[I

    .line 3
    .line 4
    aget p1, p1, p2

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 11
    .line 12
    const-string p2, "Action Sheet"

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/narvii/user/profile/UserProfileFragment;->editProfile(Ljava/lang/String;Z)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->activateAccount()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :sswitch_2
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p2}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 31
    .line 32
    const-string p2, "User Profile"

    .line 33
    .line 34
    iput-object p2, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 37
    .line 38
    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const/16 p2, 0x6d

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string p2, "android.permission.CAMERA"

    .line 67
    .line 68
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 69
    .line 70
    .line 71
    filled-new-array {p2, v0}, [Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    check-cast p1, Lcom/narvii/model/User;

    .line 91
    .line 92
    new-instance p2, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 95
    .line 96
    .line 97
    invoke-direct {p2, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 109
    :goto_0
    return-void

    .line 110
    nop

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    :sswitch_data_0
    .sparse-switch
        0x7f12009d -> :sswitch_4
        0x7f120365 -> :sswitch_3
        0x7f1210bb -> :sswitch_2
        0x7f121228 -> :sswitch_1
        0x7f121233 -> :sswitch_0
    .end sparse-switch
.end method
