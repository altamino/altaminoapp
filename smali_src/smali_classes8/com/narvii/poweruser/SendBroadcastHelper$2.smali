.class Lcom/narvii/poweruser/SendBroadcastHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SendBroadcastHelper;->checkIfCanPush(Lcom/narvii/model/NVObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

.field final synthetic val$object:Lcom/narvii/model/NVObject;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/SendBroadcastHelper;Ljava/lang/Class;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->val$object:Lcom/narvii/model/NVObject;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 3
    .line 4
    iget-boolean p3, p1, Lcom/narvii/poweruser/SendBroadcastHelper;->loading:Z

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->b(Lcom/narvii/poweruser/SendBroadcastHelper;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 13
    .line 14
    new-instance p3, Lcom/narvii/poweruser/SendBroadcastHelper$2$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {p3, p0}, Lcom/narvii/poweruser/SendBroadcastHelper$2$1;-><init>(Lcom/narvii/poweruser/SendBroadcastHelper$2;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/poweruser/SendBroadcastHelper;->processError(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 5
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
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 6
    .line 7
    iget-boolean p2, p1, Lcom/narvii/poweruser/SendBroadcastHelper;->loading:Z

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->a(Lcom/narvii/poweruser/SendBroadcastHelper;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string p2, "config"

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 26
    move-result p1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->val$object:Lcom/narvii/model/NVObject;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->objectType()I

    .line 32
    move-result p2

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->val$object:Lcom/narvii/model/NVObject;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    if-eqz p2, :cond_4

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v3, "ndc://x"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p1, "/"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    iput-object p1, v1, Lcom/narvii/poweruser/SendBroadcastHelper;->linkUrl:Ljava/lang/String;

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->b(Lcom/narvii/poweruser/SendBroadcastHelper;)V

    .line 90
    .line 91
    new-instance p1, Lcom/narvii/model/LinkSummary;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1}, Lcom/narvii/model/LinkSummary;-><init>()V

    .line 95
    .line 96
    iget-object p2, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->val$object:Lcom/narvii/model/NVObject;

    .line 97
    .line 98
    instance-of v0, p2, Lcom/narvii/model/Feed;

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    check-cast p2, Lcom/narvii/model/Feed;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->val$object:Lcom/narvii/model/NVObject;

    .line 109
    .line 110
    check-cast v0, Lcom/narvii/model/Feed;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_2
    instance-of v0, p2, Lcom/narvii/model/ItemCategory;

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    move-object v0, p2

    .line 119
    .line 120
    check-cast v0, Lcom/narvii/model/ItemCategory;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    .line 123
    .line 124
    check-cast p2, Lcom/narvii/model/ItemCategory;

    .line 125
    .line 126
    iget-object p2, p2, Lcom/narvii/model/ItemCategory;->mediaList:Ljava/util/List;

    .line 127
    move-object v4, v0

    .line 128
    move-object v0, p2

    .line 129
    move-object p2, v4

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    const/4 p2, 0x0

    .line 132
    move-object v0, p2

    .line 133
    .line 134
    :goto_0
    iput-object p2, p1, Lcom/narvii/model/LinkSummary;->title:Ljava/lang/String;

    .line 135
    .line 136
    iput-object v0, p1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 137
    .line 138
    iget-object p2, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 139
    .line 140
    iget-object v0, p2, Lcom/narvii/poweruser/SendBroadcastHelper;->linkUrl:Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-static {p2, p1, v0}, Lcom/narvii/poweruser/SendBroadcastHelper;->c(Lcom/narvii/poweruser/SendBroadcastHelper;Lcom/narvii/model/LinkSummary;Ljava/lang/String;)V

    .line 144
    return-void

    .line 145
    .line 146
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->a(Lcom/narvii/poweruser/SendBroadcastHelper;)Lcom/narvii/app/NVContext;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    const p2, 0x7f1207ec

    .line 158
    const/4 v0, 0x0

    .line 159
    .line 160
    .line 161
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 166
    .line 167
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 168
    .line 169
    .line 170
    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->b(Lcom/narvii/poweruser/SendBroadcastHelper;)V

    .line 171
    return-void
.end method
