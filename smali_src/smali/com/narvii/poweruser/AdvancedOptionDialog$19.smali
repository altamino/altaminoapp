.class Lcom/narvii/poweruser/AdvancedOptionDialog$19;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$user:Lcom/narvii/model/User;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$type:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/RequestDialog;->getRequestText()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->o(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RequestDialog;->getRequestText()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 25
    move-result v0

    .line 26
    .line 27
    const/16 v1, 0x1f4

    .line 28
    .line 29
    if-le v0, v1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    const v0, 0x7f1201a7

    .line 39
    const/4 v1, 0x1

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 47
    return-void

    .line 48
    .line 49
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/narvii/util/dialog/RequestDialog;->getRequestEdit()Landroid/widget/EditText;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    const-string v2, "content"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 80
    .line 81
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    .line 83
    .line 84
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v4, "/user-profile/"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    iget-object v4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$user:Lcom/narvii/model/User;

    .line 101
    .line 102
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v4, "/ban"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    iget v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$type:I

    .line 121
    .line 122
    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    const-string v4, "reasonType"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    move-result p1

    .line 135
    .line 136
    if-nez p1, :cond_2

    .line 137
    .line 138
    const-string p1, "note"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 142
    .line 143
    .line 144
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    const-string v2, "api"

    .line 154
    .line 155
    .line 156
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 160
    .line 161
    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;

    .line 162
    .line 163
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 164
    .line 165
    .line 166
    invoke-direct {v2, p0, v3, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$19;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 170
    return-void
.end method
