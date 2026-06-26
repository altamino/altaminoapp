.class Lcom/narvii/onlinestatus/ChooseMoodFragment$2;
.super Ljava/lang/Object;
.source "ChooseMoodFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/ChooseMoodFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 82
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    iget-boolean v0, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->changed:Z

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance p1, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;

    invoke-direct {p1, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment$2;)V

    iput-object p1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 131
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 132
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-static {v2}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->access$200(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/online-status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 133
    iget-object v1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    iget-object v1, v1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    const-string v2, "moodStickerId"

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "onlineStatus"

    invoke-virtual {p1, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    iget-object v3, v3, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    invoke-virtual {v3}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    const-string v2, "api"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 139
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
