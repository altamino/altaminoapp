.class Lcom/narvii/util/MoodHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/MoodHelper;->popupOnlineStatusMenu(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/MoodHelper$2;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/MoodHelper$2;->val$context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/MoodHelper$2;->val$ctx:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/util/MoodHelper$2;->val$onlineStatusChangedListener:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/util/MoodHelper$2;->val$user:Lcom/narvii/model/User;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/MoodHelper$2;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0a5d

    .line 13
    const/4 v1, 0x2

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v1

    .line 19
    .line 20
    :goto_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/util/MoodHelper$2;->val$context:Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    new-instance v2, Lcom/narvii/util/MoodHelper$2$1;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, p0, p1}, Lcom/narvii/util/MoodHelper$2$1;-><init>(Lcom/narvii/util/MoodHelper$2;I)V

    .line 31
    .line 32
    iput-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v4, "user-profile/"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/narvii/util/MoodHelper$2;->val$user:Lcom/narvii/model/User;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v4, "/online-status"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    const-string v3, "onlineStatus"

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    if-ne p1, v1, :cond_1

    .line 89
    .line 90
    .line 91
    const p1, 0x15180

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    const-string v1, "duration"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    .line 102
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/MoodHelper$2;->val$ctx:Lcom/narvii/app/NVContext;

    .line 103
    .line 104
    const-string v1, "api"

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 120
    return-void
.end method
