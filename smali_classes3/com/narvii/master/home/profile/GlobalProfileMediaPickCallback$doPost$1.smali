.class public final Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;
.super Ljava/lang/Object;
.source "GlobalProfileMediaPickCallback.kt"

# interfaces
.implements Lcom/narvii/post/PostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->doPost(Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;Lcom/narvii/app/NVActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $accountService:Lcom/narvii/account/AccountService;

.field final synthetic $activity:Lcom/narvii/app/NVActivity;

.field final synthetic $dialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/account/AccountService;Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$accountService:Lcom/narvii/account/AccountService;

    iput-object p3, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$activity:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$activity:Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 70
    instance-of p1, p2, Lcom/narvii/model/api/UserResponse;

    if-eqz p1, :cond_0

    .line 71
    move-object p1, p2

    check-cast p1, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p1}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$accountService:Lcom/narvii/account/AccountService;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$activity:Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0

    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 0

    .line 60
    :try_start_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
