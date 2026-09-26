.class public Lcom/narvii/sharedfolder/SharedPhotoPostHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/post/PostListener;


# instance fields
.field albumId:Ljava/lang/String;

.field nvContext:Lcom/narvii/app/NVContext;

.field public final postHelper:Lcom/narvii/post/PostHelper;

.field progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

.field public showAddAlbumAlert:Z

.field public showAddAlbumAlertImmediately:Z

.field successCallback:Lcom/narvii/util/Callback;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlert:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlertImmediately:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/post/PostHelper;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->postHelper:Lcom/narvii/post/PostHelper;

    .line 19
    return-void
.end method


# virtual methods
.method public isDestoryed()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->isDestoryed(Lcom/narvii/app/NVContext;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->isDestoryed()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showErrorMsg(ILjava/lang/String;)V

    .line 26
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->isDestoryed()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    check-cast p2, Lcom/narvii/sharedfolder/UploadPhotoResponse;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    const-string v0, "notification"

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->albumId:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/sharedfolder/PhotoUpload;

    .line 31
    .line 32
    iget-object v2, p2, Lcom/narvii/sharedfolder/UploadPhotoResponse;->fileIdList:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/narvii/sharedfolder/PhotoUpload;-><init>(Ljava/util/List;)V

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    const v2, 0x7f120097

    .line 48
    const/4 v3, 0x0

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/narvii/util/NVToast;->show()V

    .line 56
    .line 57
    new-instance v1, Lcom/narvii/sharedfolder/PhotoAdd;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->albumId:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2}, Lcom/narvii/sharedfolder/PhotoAdd;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    iput-object v1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 65
    .line 66
    :goto_0
    const-string v1, "new"

    .line 67
    .line 68
    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->successCallback:Lcom/narvii/util/Callback;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    const/4 v0, 0x0

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 80
    .line 81
    :cond_2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 87
    move-result p1

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 95
    .line 96
    :cond_3
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->albumId:Ljava/lang/String;

    .line 97
    .line 98
    if-nez p1, :cond_5

    .line 99
    .line 100
    iget-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlert:Z

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    new-instance p1, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;

    .line 105
    .line 106
    iget-object p2, p2, Lcom/narvii/sharedfolder/UploadPhotoResponse;->fileIdList:Ljava/util/List;

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, p2}, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;-><init>(Ljava/util/List;)V

    .line 110
    .line 111
    iget-boolean p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlertImmediately:Z

    .line 112
    .line 113
    if-eqz p2, :cond_4

    .line 114
    .line 115
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 116
    .line 117
    .line 118
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    instance-of p2, p2, Lcom/narvii/app/NVActivity;

    .line 122
    .line 123
    if-eqz p2, :cond_5

    .line 124
    .line 125
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 126
    .line 127
    .line 128
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 129
    move-result-object p2

    .line 130
    .line 131
    check-cast p2, Lcom/narvii/app/NVActivity;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;->call(Lcom/narvii/app/NVActivity;)V

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->addPendingForAttach(Lcom/narvii/util/Callback;)V

    .line 139
    :cond_5
    :goto_1
    return-void
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->isDestoryed()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setProgress(II)V

    .line 22
    :cond_0
    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 14
    .line 15
    .line 16
    const v1, 0x7f121221

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setText(I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/sharedfolder/SharedPhotoPostHelper$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoPostHelper;Lcom/narvii/post/PostHelper;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 30
    .line 31
    :try_start_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    .line 38
    const-string v0, "fail to show progress dialog"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    return-void
.end method

.method protected showErrorMsg(ILjava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    const p2, 0x104000a

    .line 41
    .line 42
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 56
    move-result-object p1

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 65
    :goto_0
    return-void
.end method

.method public uploadMedia(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->albumId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->successCallback:Lcom/narvii/util/Callback;

    .line 8
    .line 9
    new-instance p3, Lcom/narvii/sharedfolder/SharedPhotoPost;

    .line 10
    .line 11
    .line 12
    invoke-direct {p3}, Lcom/narvii/sharedfolder/SharedPhotoPost;-><init>()V

    .line 13
    .line 14
    iput-object p1, p3, Lcom/narvii/sharedfolder/SharedPhotoPost;->mediaList:Ljava/util/List;

    .line 15
    .line 16
    iput-object p2, p3, Lcom/narvii/sharedfolder/SharedPhotoPost;->folderId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string p2, "/shared-folder/upload"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->postHelper:Lcom/narvii/post/PostHelper;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->postHelper:Lcom/narvii/post/PostHelper;

    .line 42
    .line 43
    const-string v0, "shared-folder-image"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Lcom/narvii/post/PostHelper;->setDefaultPhotoUploadTarget(Ljava/lang/String;)V

    .line 47
    .line 48
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->postHelper:Lcom/narvii/post/PostHelper;

    .line 49
    .line 50
    const-class v0, Lcom/narvii/sharedfolder/UploadPhotoResponse;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3, p1, v0}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    .line 54
    return-void
.end method
