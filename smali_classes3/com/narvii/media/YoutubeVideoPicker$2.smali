.class Lcom/narvii/media/YoutubeVideoPicker$2;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "YoutubeVideoPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/YoutubeVideoPicker;->verifyAndReturn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/YoutubeVideoPicker;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/media/YoutubeVideoPicker;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    iput-object p3, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 228
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 229
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 231
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 233
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    sget p2, Lcom/narvii/lib/R$string;->media_youtube_verify_fail_title:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 235
    sget p2, Lcom/narvii/lib/R$string;->media_youtube_verify_fail_msg:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const p2, 0x104000a

    .line 236
    sget-object p3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 203
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string p2, "title"

    .line 204
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    const-string v1, "author_name"

    .line 206
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 208
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    const/16 v1, 0x67

    .line 209
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ytv://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    iget-object v2, v2, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 211
    iput-object p2, v0, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 212
    iput-object p1, v0, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 213
    iput-object p2, v0, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 215
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    const-string p2, "needDuration"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    invoke-virtual {p1, v0}, Lcom/narvii/media/YoutubeVideoPicker;->fillAdditionalMediaInfo(Lcom/narvii/model/Media;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    invoke-static {p1, v0}, Lcom/narvii/media/YoutubeVideoPicker;->access$200(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/model/Media;)V

    :goto_0
    return-void
.end method
