.class Lcom/narvii/poweruser/AdvancedOptionDialog$19;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->banUser(Lcom/narvii/model/User;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/RequestDialog;

.field final synthetic val$type:I

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/RequestDialog;Lcom/narvii/model/User;I)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$user:Lcom/narvii/model/User;

    iput p4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 976
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/RequestDialog;->getRequestText()Ljava/lang/String;

    move-result-object p1

    .line 977
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2200(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/RequestDialog;->getRequestText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1

    .line 981
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0167

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 984
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 985
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 986
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    invoke-virtual {v1}, Lcom/narvii/util/dialog/RequestDialog;->getRequestEdit()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 987
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "content"

    .line 988
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 989
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$user:Lcom/narvii/model/User;

    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/ban"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 990
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$type:I

    .line 991
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "reasonType"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 992
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "note"

    .line 993
    invoke-virtual {v2, p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 995
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 996
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 997
    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$19;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
