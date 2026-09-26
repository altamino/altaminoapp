.class Lcom/narvii/share/ShareButtonUploadToShareFolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/ShareButtonUploadToShareFolder;->onClick(Lcom/narvii/share/SharePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

.field final synthetic val$sharePayload:Lcom/narvii/share/SharePayload;


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareButtonUploadToShareFolder;Lcom/narvii/share/SharePayload;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->val$sharePayload:Lcom/narvii/share/SharePayload;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v1, "ndc://fragment/"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-class v1, Lcom/narvii/media/PostMediaPickerFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "android.intent.action.VIEW"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/share/ShareButtonUploadToShareFolder;->b(Lcom/narvii/share/ShareButtonUploadToShareFolder;)Ljava/util/List;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const-string v1, "list"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/narvii/share/ShareButtonUploadToShareFolder;->a(Lcom/narvii/share/ShareButtonUploadToShareFolder;)Lcom/narvii/model/Media;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    const-string v1, "selected"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->val$sharePayload:Lcom/narvii/share/SharePayload;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    const-string v1, "objectId"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->val$sharePayload:Lcom/narvii/share/SharePayload;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 85
    move-result v0

    .line 86
    .line 87
    const-string v1, "objectType"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    .line 95
    .line 96
    .line 97
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-static {v0, p1}, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    .line 106
    .line 107
    const-string v0, "statistics"

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 114
    .line 115
    const-string v0, "Add Shared Folder Media"

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    const-string v0, "From"

    .line 122
    .line 123
    const-string v1, "My Blog Posts"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    const-string v0, "Add Shared Folder Media Total"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 137
    return-void
.end method
