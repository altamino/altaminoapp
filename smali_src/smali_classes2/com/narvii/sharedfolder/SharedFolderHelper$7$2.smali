.class Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->val$inputDialog:Lcom/narvii/widget/InputDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "shared-folder/folders"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->val$inputDialog:Lcom/narvii/widget/InputDialog;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    const-string/jumbo v2, "title"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedFolderHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 58
    .line 59
    new-instance v2, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;

    .line 60
    .line 61
    const-class v3, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 74
    .line 75
    const-string v0, "statistics"

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 82
    .line 83
    const-string v0, "Create New Album"

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->source:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 97
    return-void
.end method
