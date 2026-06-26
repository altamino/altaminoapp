.class public final Lcom/narvii/videotemplate/TemplateService;
.super Landroid/app/IntentService;
.source "TemplateService.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "template"

    .line 22
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "template starting at pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/IntentService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "template"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 30
    new-instance v2, Ljava/io/File;

    const-string v3, "template.pid"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v2, v0, v1}, Lkotlin/io/FilesKt;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 33
    new-instance v0, Lcom/narvii/util/BlockingItem;

    invoke-direct {v0}, Lcom/narvii/util/BlockingItem;-><init>()V

    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->CONDITION:Lcom/narvii/util/BlockingItem;

    const-string v0, "com.narvii.videotemplate.templateConfig"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/videotemplate/Template;

    const-string v1, "com.narvii.videotemplate.inputPathList"

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    const-string v1, "com.narvii.videotemplate.inputType"

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    const-string v1, "com.narvii.videotemplate.outVideoPath"

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    invoke-static {p0}, Lcom/narvii/videotemplate/VideoTemplateJni;->bindContext(Landroid/content/Context;)V

    .line 40
    iget-object p1, v0, Lcom/narvii/videotemplate/Template;->segments:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateJni;->create(Ljava/util/ArrayList;)V

    .line 44
    sget-object p1, Lcom/narvii/videotemplate/VideoTemplateJni;->CONDITION:Lcom/narvii/util/BlockingItem;

    invoke-virtual {p1}, Lcom/narvii/util/BlockingItem;->take()Ljava/lang/Object;

    const-string p1, "template finished"

    .line 46
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 47
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.narvii.amino.VIDEO_TEMPLATE_PROCESS_FINISH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/IntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->unbindContext()V

    const/4 p1, 0x0

    .line 51
    sput-object p1, Lcom/narvii/videotemplate/VideoTemplateJni;->CONDITION:Lcom/narvii/util/BlockingItem;

    const-wide/16 v0, 0x32

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 35
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.videotemplate.Template"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
