.class final Lcom/narvii/util/MoodHelper$2;
.super Ljava/lang/Object;
.source "MoodHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/MoodHelper;->popupOnlineStatusMenu(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ctx:Lcom/narvii/app/NVContext;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

.field final synthetic val$onlineStatusChangedListener:Lcom/narvii/util/Callback;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ActionSheetDialog;Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;Lcom/narvii/model/User;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/util/MoodHelper$2;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    iput-object p2, p0, Lcom/narvii/util/MoodHelper$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/narvii/util/MoodHelper$2;->val$ctx:Lcom/narvii/app/NVContext;

    iput-object p4, p0, Lcom/narvii/util/MoodHelper$2;->val$onlineStatusChangedListener:Lcom/narvii/util/Callback;

    iput-object p5, p0, Lcom/narvii/util/MoodHelper$2;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/narvii/util/MoodHelper$2;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const v1, 0x7f0907b9

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 87
    :goto_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/util/MoodHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v2, Lcom/narvii/util/MoodHelper$2$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/util/MoodHelper$2$1;-><init>(Lcom/narvii/util/MoodHelper$2;I)V

    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 104
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 105
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/util/MoodHelper$2;->val$user:Lcom/narvii/model/User;

    .line 106
    invoke-virtual {v4}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/online-status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onlineStatus"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const p1, 0x15180

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "duration"

    invoke-virtual {v2, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/MoodHelper$2;->val$ctx:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 111
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
