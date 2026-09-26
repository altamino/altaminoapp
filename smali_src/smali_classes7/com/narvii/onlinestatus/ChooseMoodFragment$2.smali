.class Lcom/narvii/onlinestatus/ChooseMoodFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->changed:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment$2;)V

    .line 27
    .line 28
    iput-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v2, "user-profile/"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->p(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/model/User;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "/online-status"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 80
    .line 81
    const-string v2, "moodStickerId"

    .line 82
    .line 83
    if-nez v1, :cond_1

    .line 84
    const/4 v1, 0x0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x1

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    const-string v3, "onlineStatus"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    iget-object v3, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 102
    .line 103
    iget-object v3, v3, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 107
    move-result-object v3

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 111
    .line 112
    :goto_0
    iget-object v1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 113
    .line 114
    const-string v2, "api"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 130
    return-void
.end method
