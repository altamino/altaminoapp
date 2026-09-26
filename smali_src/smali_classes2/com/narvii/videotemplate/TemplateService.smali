.class public final Lcom/narvii/videotemplate/TemplateService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "template"

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 7
    move-result v0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "template starting at pid "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 29
    .line 30
    new-instance v1, Ljava/io/File;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    const-string/jumbo v3, "template"

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 44
    .line 45
    new-instance v2, Ljava/io/File;

    .line 46
    .line 47
    .line 48
    const-string/jumbo v3, "template.pid"

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    sget-object v1, Lkotlin/text/d;->US_ASCII:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v0, v1}, Lkotlin/io/j;->k(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/util/BlockingItem;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0}, Lcom/narvii/util/BlockingItem;-><init>()V

    .line 66
    .line 67
    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->CONDITION:Lcom/narvii/util/BlockingItem;

    .line 68
    .line 69
    const-string v0, "com.narvii.videotemplate.templateConfig"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    const-string v1, "null cannot be cast to non-null type com.narvii.videotemplate.Template"

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    check-cast v0, Lcom/narvii/videotemplate/Template;

    .line 81
    .line 82
    const-string v1, "com.narvii.videotemplate.inputPathList"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 86
    .line 87
    const-string v1, "com.narvii.videotemplate.inputType"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 91
    .line 92
    const-string v1, "com.narvii.videotemplate.outVideoPath"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lcom/narvii/videotemplate/VideoTemplateJni;->bindContext(Landroid/content/Context;)V

    .line 99
    .line 100
    iget-object p1, v0, Lcom/narvii/videotemplate/Template;->segments:Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateJni;->create(Ljava/util/ArrayList;)V

    .line 104
    .line 105
    sget-object p1, Lcom/narvii/videotemplate/VideoTemplateJni;->CONDITION:Lcom/narvii/util/BlockingItem;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/narvii/util/BlockingItem;->take()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string/jumbo p1, "template finished"

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 115
    .line 116
    new-instance p1, Landroid/content/Intent;

    .line 117
    .line 118
    const-string v0, "com.narvii.amino.VIDEO_TEMPLATE_PROCESS_FINISH"

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->unbindContext()V

    .line 128
    const/4 p1, 0x0

    .line 129
    .line 130
    sput-object p1, Lcom/narvii/videotemplate/VideoTemplateJni;->CONDITION:Lcom/narvii/util/BlockingItem;

    .line 131
    .line 132
    const-wide/16 v0, 0x32

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 139
    .line 140
    .line 141
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 142
    move-result p1

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 146
    return-void
.end method
