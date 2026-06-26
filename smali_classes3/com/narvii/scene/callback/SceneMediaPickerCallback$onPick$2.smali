.class public final Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;
.super Ljava/lang/Object;
.source "SceneMediaPickerCallback.kt"

# interfaces
.implements Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/callback/SceneMediaPickerCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaPickerCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaPickerCallback.kt\ncom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2\n*L\n1#1,141:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic $activity:Lcom/narvii/app/NVActivity;

.field final synthetic $draftPath:Ljava/lang/String;

.field final synthetic $finishActivity:Z

.field final synthetic $sceneInfo:Lcom/narvii/scene/model/SceneInfo;

.field final synthetic $sceneTemplateHelper:Lcom/narvii/scene/template/SceneTemplateHelper;

.field private final errorDialog$delegate:Lkotlin/Lazy;

.field private final progressDialog$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "progressDialog"

    const-string v5, "getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "errorDialog"

    const-string v4, "getErrorDialog()Lcom/narvii/widget/ACMAlertDialog;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method constructor <init>(Lcom/narvii/scene/model/SceneInfo;ZLcom/narvii/app/NVActivity;Ljava/lang/String;Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    iput-boolean p2, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$finishActivity:Z

    iput-object p3, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    iput-object p4, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$draftPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneTemplateHelper:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p1, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;-><init>(Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->progressDialog$delegate:Lkotlin/Lazy;

    .line 64
    new-instance p1, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;-><init>(Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->errorDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final isDestroy()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    return v0
.end method

.method private final sendNotification(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 2

    .line 122
    new-instance v0, Lcom/narvii/scene/notification/CloseSceneTemplateObject;

    invoke-direct {v0}, Lcom/narvii/scene/notification/CloseSceneTemplateObject;-><init>()V

    .line 123
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/scene/notification/CloseSceneTemplateObject;->id:Ljava/lang/String;

    .line 124
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v1, "new"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 125
    iget-object v0, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    return-void
.end method


# virtual methods
.method public final getErrorDialog()Lcom/narvii/widget/ACMAlertDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->errorDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ACMAlertDialog;

    return-object v0
.end method

.method public final getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->progressDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/ProgressRingDialog;

    return-object v0
.end method

.method public onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const-string p2, "helper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->isDestroy()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->dismiss()V

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getErrorDialog()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getErrorDialog()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getErrorDialog()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_2
    return-void
.end method

.method public onCompileFinished(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Ljava/lang/String;Lcom/narvii/video/model/StreamInfo;)V
    .locals 6

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "template"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoFilePath"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoStreamInfo"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->isDestroy()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->dismiss()V

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-nez p1, :cond_2

    return-void

    .line 88
    :cond_2
    new-instance p1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {p1}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 89
    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 90
    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    const/4 p3, 0x0

    .line 92
    iput p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 93
    iget p4, p4, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    iput p4, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    const/16 p4, 0x10

    .line 94
    iput p4, p1, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    .line 96
    iget-object p4, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/narvii/video/model/AVClipInfoPack;

    aput-object p1, v0, p3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p4, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 97
    iget-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    iput-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    .line 98
    iget-boolean p2, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$finishActivity:Z

    if-eqz p2, :cond_3

    .line 99
    invoke-direct {p0, p1}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->sendNotification(Lcom/narvii/scene/model/SceneInfo;)V

    .line 100
    new-instance v0, Lcom/narvii/scene/helper/SceneListHelper;

    iget-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    invoke-direct {v0, p1}, Lcom/narvii/scene/helper/SceneListHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$draftPath:Ljava/lang/String;

    const/4 v4, 0x3

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;ILjava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    :cond_3
    return-void
.end method

.method public onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V
    .locals 0

    const-string p3, "helper"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/scene/view/ProgressRingDialog;->updateProgress(I)V

    return-void
.end method

.method public onCompileStart(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->show()V

    return-void
.end method
