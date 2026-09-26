.class public Lcom/narvii/poll/organizer/PendingRequestListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poll/organizer/PendingRequestListFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public approve(Lcom/narvii/model/PollOption;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f1203ea

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 19
    .line 20
    .line 21
    const v1, 0x7f1203d5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/poll/organizer/PendingRequestListFragment$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/narvii/poll/organizer/PendingRequestListFragment$1;-><init>(Lcom/narvii/poll/organizer/PendingRequestListFragment;Lcom/narvii/model/PollOption;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 36
    return-void

    .line 37
    .line 38
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/poll/organizer/PendingRequestListFragment$2;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0, p1}, Lcom/narvii/poll/organizer/PendingRequestListFragment$2;-><init>(Lcom/narvii/poll/organizer/PendingRequestListFragment;Lcom/narvii/model/PollOption;)V

    .line 51
    .line 52
    iput-object v1, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v2, "/blog/"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "id"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "/poll/option/"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p1, "/settings"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    const/16 v1, 0x6e

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    const-string v2, "opName"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    const-string v1, "opValue"

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    const-string v0, "api"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 140
    .line 141
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 145
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/poll/organizer/PendingRequestListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/poll/organizer/PendingRequestListFragment$Adapter;-><init>(Lcom/narvii/poll/organizer/PendingRequestListFragment;)V

    .line 6
    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
