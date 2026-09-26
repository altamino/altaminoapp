.class Lcom/narvii/user/profile/UserProfileFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->popupOnlineStatusMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/util/dialog/ActionSheetDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    .line 13
    const v2, 0x7f0a0a5d

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    .line 20
    :goto_0
    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 24
    move-result p1

    .line 25
    .line 26
    if-ne p1, v2, :cond_1

    .line 27
    .line 28
    sget-object p1, Lcom/narvii/logging/ActSemantic;->goOnline:Lcom/narvii/logging/ActSemantic;

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->goOffline:Lcom/narvii/logging/ActSemantic;

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-static {v3, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string v2, "OnlineArea"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 45
    .line 46
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    new-instance v2, Lcom/narvii/user/profile/UserProfileFragment$9$1;

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$9$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$9;I)V

    .line 61
    .line 62
    iput-object v2, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string/jumbo v4, "user-profile/"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    iget-object v4, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 87
    .line 88
    const-string v5, "id"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v4, "/online-status"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    const-string v3, "onlineStatus"

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    if-ne v0, v1, :cond_2

    .line 121
    .line 122
    .line 123
    const v0, 0x15180

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    const-string v1, "duration"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 133
    .line 134
    :cond_2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$9;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 135
    .line 136
    const-string v1, "api"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 152
    return-void
.end method
