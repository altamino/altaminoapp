.class public Lcom/narvii/sharedfolder/SharedPhotoPostHelper;
.super Ljava/lang/Object;
.source "SharedPhotoPostHelper.java"

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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlert:Z

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlertImmediately:Z

    .line 41
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 42
    new-instance v0, Lcom/narvii/post/PostHelper;

    invoke-direct {v0, p1}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->postHelper:Lcom/narvii/post/PostHelper;

    return-void
.end method


# virtual methods
.method public isDestoryed()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isDestoryed(Lcom/narvii/app/NVContext;)Z

    move-result v0

    return v0
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 136
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showErrorMsg(ILjava/lang/String;)V

    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 95
    :cond_0
    check-cast p2, Lcom/narvii/sharedfolder/UploadPhotoResponse;

    .line 96
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 97
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->albumId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 99
    new-instance v1, Lcom/narvii/sharedfolder/PhotoUpload;

    iget-object v2, p2, Lcom/narvii/sharedfolder/UploadPhotoResponse;->fileIdList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/narvii/sharedfolder/PhotoUpload;-><init>(Ljava/util/List;)V

    iput-object v1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f008e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/NVToast;->show()V

    .line 102
    new-instance v1, Lcom/narvii/sharedfolder/PhotoAdd;

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->albumId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/narvii/sharedfolder/PhotoAdd;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    :goto_0
    const-string v1, "new"

    .line 104
    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 105
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 107
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->successCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 108
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 112
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->albumId:Ljava/lang/String;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlert:Z

    if-eqz p1, :cond_5

    .line 116
    new-instance p1, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;

    iget-object p2, p2, Lcom/narvii/sharedfolder/UploadPhotoResponse;->fileIdList:Ljava/util/List;

    invoke-direct {p1, p2}, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;-><init>(Ljava/util/List;)V

    .line 117
    iget-boolean p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlertImmediately:Z

    if-eqz p2, :cond_4

    .line 118
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/app/NVActivity;

    if-eqz p2, :cond_5

    .line 119
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;->call(Lcom/narvii/app/NVActivity;)V

    goto :goto_1

    .line 122
    :cond_4
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->addPendingForAttach(Lcom/narvii/util/Callback;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->isDestoryed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setProgress(II)V

    :cond_0
    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 2

    .line 64
    new-instance v0, Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 65
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    const v1, 0x7f0f1116

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setText(I)V

    .line 66
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    new-instance v1, Lcom/narvii/sharedfolder/SharedPhotoPostHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoPostHelper;Lcom/narvii/post/PostHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 73
    :try_start_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "fail to show progress dialog"

    .line 75
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected showErrorMsg(ILjava/lang/String;)V
    .locals 2

    if-lez p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 144
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

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

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->albumId:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->successCallback:Lcom/narvii/util/Callback;

    .line 52
    new-instance p3, Lcom/narvii/sharedfolder/SharedPhotoPost;

    invoke-direct {p3}, Lcom/narvii/sharedfolder/SharedPhotoPost;-><init>()V

    .line 53
    iput-object p1, p3, Lcom/narvii/sharedfolder/SharedPhotoPost;->mediaList:Ljava/util/List;

    .line 54
    iput-object p2, p3, Lcom/narvii/sharedfolder/SharedPhotoPost;->folderId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string p2, "/shared-folder/upload"

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->postHelper:Lcom/narvii/post/PostHelper;

    invoke-virtual {p2, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 58
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->postHelper:Lcom/narvii/post/PostHelper;

    const-string v0, "shared-folder-image"

    invoke-virtual {p2, v0}, Lcom/narvii/post/PostHelper;->setDefaultPhotoUploadTarget(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->postHelper:Lcom/narvii/post/PostHelper;

    const-class v0, Lcom/narvii/sharedfolder/UploadPhotoResponse;

    invoke-virtual {p2, p3, p1, v0}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method
