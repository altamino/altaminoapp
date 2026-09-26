.class Lcom/narvii/media/YoutubeVideoPicker$2;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    sget p2, Lcom/narvii/lib/R$string;->media_youtube_verify_fail_title:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 37
    .line 38
    sget p2, Lcom/narvii/lib/R$string;->media_youtube_verify_fail_msg:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 42
    .line 43
    .line 44
    const p2, 0x104000a

    .line 45
    .line 46
    sget-object p3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 53
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string p2, "title"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    const-string v1, "author_name"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/model/Media;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 40
    .line 41
    const/16 v1, 0x67

    .line 42
    .line 43
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v2, "ytv://"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 67
    .line 68
    iput-object p2, v0, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 69
    .line 70
    iput-object p1, v0, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 71
    .line 72
    iput-object p2, v0, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 75
    .line 76
    iget-object p2, p1, Lcom/narvii/media/YoutubeVideoPicker;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v1, Lcom/narvii/media/YoutubeVideoPicker$2$1;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, p0, v0}, Lcom/narvii/media/YoutubeVideoPicker$2$1;-><init>(Lcom/narvii/media/YoutubeVideoPicker$2;Lcom/narvii/model/Media;)V

    .line 84
    const/4 v0, 0x0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 88
    return-void
.end method
