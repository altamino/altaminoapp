.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

.field final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->val$ops:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->val$ops:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    const p2, 0x7f12008e

    .line 16
    .line 17
    if-eq p1, p2, :cond_2

    .line 18
    .line 19
    .line 20
    const p2, 0x7f120fdd

    .line 21
    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 28
    .line 29
    iget-object p2, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    return-void

    .line 33
    .line 34
    :cond_1
    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->ifShowAlbumLockedDialog(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    .line 45
    .line 46
    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    const p2, 0x7f120fde

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 60
    .line 61
    .line 62
    const p2, 0x7f1201e2

    .line 63
    const/4 v0, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 67
    .line 68
    new-instance p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;)V

    .line 72
    .line 73
    const/high16 v0, -0x10000

    .line 74
    .line 75
    .line 76
    const v1, 0x7f1212a7

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_2
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    const-string p2, "selectMode"

    .line 92
    .line 93
    const-string v0, "singlePickUploadPhoto"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    .line 99
    .line 100
    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 101
    .line 102
    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->id:Ljava/lang/String;

    .line 103
    .line 104
    const-string v0, "filterAlbumId"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    .line 110
    .line 111
    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 112
    .line 113
    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getSelectedIds()Ljava/util/List;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    .line 120
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    const-string v0, "fileIdList"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .line 128
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    .line 129
    .line 130
    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 131
    const/4 v0, 0x1

    .line 132
    .line 133
    .line 134
    invoke-static {p2, p1, v0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 135
    :cond_3
    :goto_0
    return-void
.end method
