.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2;
.super Lcom/narvii/sharedfolder/SharedAlbumAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/sharedfolder/SharedAlbumAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d03b5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedAlbumAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    iget-object p3, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 7
    .line 8
    iget-object p3, p3, Lcom/narvii/sharedfolder/SharedAlbumFragment;->filterAlbumId:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    instance-of v0, p1, Lcom/narvii/model/SharedAlbum;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    .line 31
    const p1, 0x3dcccccd    # 0.1f

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 38
    :cond_1
    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/SharedAlbum;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/SharedAlbum;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "singlePickUploadPhoto"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 23
    .line 24
    iget-object v4, v1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->ifShowAlbumLockedDialog(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    return v3

    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->filterAlbumId:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    return v3

    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 51
    .line 52
    const-string v4, "singlePickChoosePhoto"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    const-class p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string p2, "id"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    const-string p2, "album"

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 85
    .line 86
    .line 87
    const-string/jumbo p3, "toAlbumId"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    const-string p2, "selectMode"

    .line 97
    .line 98
    const-string p3, "pickUpload"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    invoke-static {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 105
    .line 106
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 110
    return v3

    .line 111
    .line 112
    :cond_2
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v1

    .line 119
    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    .line 128
    move-result-object p2

    .line 129
    .line 130
    iget-object p3, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 131
    .line 132
    const-string p4, "fileIdList"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, p4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object p3

    .line 137
    .line 138
    const-class p4, Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    invoke-static {p3, p4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 142
    move-result-object p3

    .line 143
    .line 144
    new-instance p4, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$3;

    .line 145
    .line 146
    .line 147
    invoke-direct {p4, p0}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$3;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/sharedfolder/SharedFolderHelper;->addPhotosToAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V

    .line 151
    return v3

    .line 152
    .line 153
    .line 154
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/sharedfolder/SharedAlbumAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 155
    move-result p1

    .line 156
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    instance-of v1, p3, Lcom/narvii/model/SharedAlbum;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object p1, v0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canManageAlbum()Z

    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 p3, 0x2

    .line 30
    .line 31
    new-array p3, p3, [I

    .line 32
    .line 33
    new-instance p4, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    iget-object p5, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 39
    .line 40
    .line 41
    const v0, 0x7f120360

    .line 42
    .line 43
    .line 44
    invoke-virtual {p5, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 45
    move-result-object p5

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 p5, 0x0

    .line 50
    .line 51
    aput v0, p3, p5

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 54
    .line 55
    .line 56
    const v1, 0x7f120fef

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    aput v1, p3, p2

    .line 66
    .line 67
    new-array p5, p5, [Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    move-result-object p4

    .line 72
    .line 73
    check-cast p4, [Ljava/lang/CharSequence;

    .line 74
    .line 75
    new-instance p5, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;

    .line 76
    .line 77
    .line 78
    invoke-direct {p5, p0, p3}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2;[I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p4, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 85
    :cond_0
    return p2

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 89
    move-result p1

    .line 90
    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/sharedfolder/SharedAlbumListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedAlbumListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedAlbumListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    iget p1, p2, Lcom/narvii/sharedfolder/SharedAlbumListResponse;->totalCount:I

    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 4
    iput p1, p2, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    const p1, 0x7f120101

    .line 5
    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget p3, p3, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    invoke-static {p1, p3}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget p2, p2, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/SharedFolderFragment;->setFolderCount(I)V

    :cond_0
    return-void
.end method

.method protected showAllPhotos()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "singlePickUploadPhoto"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lcom/narvii/sharedfolder/SharedAlbumAdapter;->showAllPhotos()Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public showListEnd(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canManageAlbum()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "singlePickChoosePhoto"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method
