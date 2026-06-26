.class public final Lcom/narvii/scene/dialog/SceneMediaPickerDialog;
.super Lcom/narvii/app/NVDialog;
.source "SceneMediaPickerDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaPickerDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaPickerDialog.kt\ncom/narvii/scene/dialog/SceneMediaPickerDialog\n*L\n1#1,143:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final backgroundImage:Landroid/view/View;

.field private final cancel:Landroid/view/View;

.field private final contentView:Landroid/view/View;

.field private onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

.field private final onlineVideo:Landroid/view/View;

.field private final photo$delegate:Lkotlin/Lazy;

.field private final photoLibrary:Landroid/view/View;

.field private final recentMedia:Landroid/view/View;

.field private final recentMediaContainer:Landroid/view/View;

.field private final recentMediaIcon:Lcom/narvii/widget/ThumbImageView;

.field private final recentMediaName:Landroid/widget/TextView;

.field private final recentMediaPath:Landroid/widget/TextView;

.field private sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

.field private final sceneSpHelper$delegate:Lkotlin/Lazy;

.field private final videoTempalteLayout:Landroid/view/View;

.field private final videoTemplate:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sceneSpHelper"

    const-string v4, "getSceneSpHelper()Lcom/narvii/scene/helper/SceneSpHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "photo"

    const-string v4, "getPhoto()Lcom/narvii/photos/PhotoManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget v0, Lcom/narvii/mediaeditor/R$style;->CustomDialogWithAnimation:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 38
    new-instance v0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$sceneSpHelper$2;

    invoke-direct {v0, p1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$sceneSpHelper$2;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneSpHelper$delegate:Lkotlin/Lazy;

    .line 41
    new-instance v0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$photo$2;

    invoke-direct {v0, p1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$photo$2;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->photo$delegate:Lkotlin/Lazy;

    .line 48
    sget p1, Lcom/narvii/mediaeditor/R$layout;->dialog_scene_media_pick:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 49
    sget p1, Lcom/narvii/mediaeditor/R$id;->photo_library:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.photo_library)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->photoLibrary:Landroid/view/View;

    .line 50
    sget p1, Lcom/narvii/mediaeditor/R$id;->online_video:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.online_video)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onlineVideo:Landroid/view/View;

    .line 51
    sget p1, Lcom/narvii/mediaeditor/R$id;->video_template:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.video_template)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTemplate:Landroid/view/View;

    .line 52
    sget p1, Lcom/narvii/mediaeditor/R$id;->video_template_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.video_template_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTempalteLayout:Landroid/view/View;

    .line 53
    sget p1, Lcom/narvii/mediaeditor/R$id;->cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.cancel)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->cancel:Landroid/view/View;

    .line 54
    sget p1, Lcom/narvii/mediaeditor/R$id;->recent_media_container:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.recent_media_container)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaContainer:Landroid/view/View;

    .line 55
    sget p1, Lcom/narvii/mediaeditor/R$id;->recent_media:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.recent_media)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMedia:Landroid/view/View;

    .line 56
    sget p1, Lcom/narvii/mediaeditor/R$id;->recent_media_icon:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.recent_media_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaIcon:Lcom/narvii/widget/ThumbImageView;

    .line 57
    sget p1, Lcom/narvii/mediaeditor/R$id;->recent_media_name:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.recent_media_name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaName:Landroid/widget/TextView;

    .line 58
    sget p1, Lcom/narvii/mediaeditor/R$id;->recent_media_path:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.recent_media_path)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaPath:Landroid/widget/TextView;

    .line 59
    sget p1, Lcom/narvii/mediaeditor/R$id;->media_content_view:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.media_content_view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->contentView:Landroid/view/View;

    .line 60
    sget p1, Lcom/narvii/mediaeditor/R$id;->blur_bg:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.blur_bg)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->backgroundImage:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->photoLibrary:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onlineVideo:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTemplate:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTempalteLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->cancel:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaContainer:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMedia:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->backgroundImage:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-static {}, Lcom/narvii/app/NVApplication;->isStoryEditorApp()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTempalteLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTemplate:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onlineVideo:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTempalteLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTemplate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onlineVideo:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final getMediaPath(Lcom/narvii/model/Media;)Ljava/lang/String;
    .locals 2

    .line 124
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 125
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://youtu.be/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->getPhoto()Lcom/narvii/photos/PhotoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_2
    :goto_1
    return-object p1
.end method


# virtual methods
.method public final getBackgroundImage()Landroid/view/View;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->backgroundImage:Landroid/view/View;

    return-object v0
.end method

.method public final getCancel()Landroid/view/View;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->cancel:Landroid/view/View;

    return-object v0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public final getOnPickerListener()Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    return-object v0
.end method

.method public final getOnlineVideo()Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onlineVideo:Landroid/view/View;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SceneSource"

    return-object v0
.end method

.method public final getPhoto()Lcom/narvii/photos/PhotoManager;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->photo$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method public final getPhotoLibrary()Landroid/view/View;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->photoLibrary:Landroid/view/View;

    return-object v0
.end method

.method public final getRecentMedia()Landroid/view/View;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMedia:Landroid/view/View;

    return-object v0
.end method

.method public final getRecentMediaContainer()Landroid/view/View;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaContainer:Landroid/view/View;

    return-object v0
.end method

.method public final getRecentMediaIcon()Lcom/narvii/widget/ThumbImageView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaIcon:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getRecentMediaName()Landroid/widget/TextView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getRecentMediaPath()Landroid/widget/TextView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaPath:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getSceneRecentMedia()Lcom/narvii/scene/model/SceneRecentMedia;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    return-object v0
.end method

.method public final getSceneSpHelper()Lcom/narvii/scene/helper/SceneSpHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneSpHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/helper/SceneSpHelper;

    return-object v0
.end method

.method public final getVideoTempalteLayout()Landroid/view/View;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTempalteLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getVideoTemplate()Landroid/view/View;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTemplate:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 84
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->photo_library:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 85
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "PhotoLibrary"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 86
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;->onPickPhoto()V

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto/16 :goto_9

    .line 89
    :cond_3
    :goto_1
    sget v1, Lcom/narvii/mediaeditor/R$id;->online_video:I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 90
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;->onPickOnlineVideo()V

    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto/16 :goto_9

    .line 93
    :cond_6
    :goto_2
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_template_layout:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_8

    goto :goto_4

    .line 94
    :cond_8
    :goto_3
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_template:I

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_a

    .line 95
    :goto_4
    new-instance p1, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$onClick$1;

    invoke-direct {p1, p0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$onClick$1;-><init>(Lcom/narvii/scene/dialog/SceneMediaPickerDialog;)V

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 96
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "VideoTemplates"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 97
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_9

    .line 99
    :cond_a
    :goto_5
    sget v1, Lcom/narvii/mediaeditor/R$id;->recent_media:I

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_e

    .line 100
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    if-eqz v1, :cond_c

    iget-object v0, v1, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    :cond_c
    invoke-interface {p1, v0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;->onPickRecentMedia(Lcom/narvii/model/Media;)V

    .line 101
    :cond_d
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "RecentVideo"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 102
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_9

    .line 104
    :cond_e
    :goto_6
    sget v0, Lcom/narvii/mediaeditor/R$id;->blur_bg:I

    if-nez p1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_10

    goto :goto_8

    :cond_10
    :goto_7
    sget v0, Lcom/narvii/mediaeditor/R$id;->cancel:I

    if-nez p1, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_12

    :goto_8
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_12
    :goto_9
    return-void
.end method

.method public final setOnPickerListener(Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    return-void
.end method

.method public final setSceneRecentMedia(Lcom/narvii/scene/model/SceneRecentMedia;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    return-void
.end method

.method public show()V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->getSceneSpHelper()Lcom/narvii/scene/helper/SceneSpHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/helper/SceneSpHelper;->getRecentVideo()Lcom/narvii/scene/model/SceneRecentMedia;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    .line 110
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaIcon:Lcom/narvii/widget/ThumbImageView;

    iget-object v1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 113
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/narvii/scene/model/SceneRecentMedia;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaPath:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    const-string v2, "sceneRecentMedia!!.media"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->getMediaPath(Lcom/narvii/model/Media;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 113
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 112
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 119
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->backgroundImage:Landroid/view/View;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 120
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->contentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$anim;->slide_up:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
