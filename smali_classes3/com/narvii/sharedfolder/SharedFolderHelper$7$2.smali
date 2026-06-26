.class Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;
.super Ljava/lang/Object;
.source "SharedFolderHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper$7;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

.field final synthetic val$inputDialog:Lcom/narvii/widget/InputDialog;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper$7;Lcom/narvii/widget/InputDialog;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->val$inputDialog:Lcom/narvii/widget/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 334
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 336
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "shared-folder/folders"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->val$inputDialog:Lcom/narvii/widget/InputDialog;

    iget-object v1, v1, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedFolderHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v2, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;

    const-class v3, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
