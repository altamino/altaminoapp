.class public final Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$accountService:Lcom/narvii/account/AccountService;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$activity:Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$activity:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

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
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 23
    :cond_1
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of p1, p2, Lcom/narvii/model/api/UserResponse;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$accountService:Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$activity:Lcom/narvii/app/NVActivity;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    return-void

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 41
    :cond_2
    return-void
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 0
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    return-void
.end method
