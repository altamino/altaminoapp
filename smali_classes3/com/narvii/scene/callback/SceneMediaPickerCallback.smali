.class public final Lcom/narvii/scene/callback/SceneMediaPickerCallback;
.super Ljava/lang/Object;
.source "SceneMediaPickerCallback.kt"

# interfaces
.implements Lcom/narvii/media/MediaPickCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaPickerCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaPickerCallback.kt\ncom/narvii/scene/callback/SceneMediaPickerCallback\n*L\n1#1,141:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDraftIntermediaPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 134
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "scene_intermediate_file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/narvii/app/NVActivity;",
            "Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "mediaList"

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "templateConfig"

    .line 37
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/narvii/scene/model/TemplateConfig;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/TemplateConfig;

    const-string v2, "sceneDraftPath"

    .line 38
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const-string v2, "sceneInfo"

    .line 39
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v2, Lcom/narvii/scene/model/SceneInfo;

    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/narvii/scene/model/SceneInfo;

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v2, v1, Lcom/narvii/scene/model/TemplateConfig;->minInputCount:I

    if-lt p1, v2, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, v1, Lcom/narvii/scene/model/TemplateConfig;->maxInputCount:I

    if-le p1, v0, :cond_2

    goto :goto_0

    .line 49
    :cond_2
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-direct {p0, v7}, Lcom/narvii/scene/callback/SceneMediaPickerCallback;->getDraftIntermediaPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/narvii/scene/template/SceneTemplateHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    .line 50
    new-instance v0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;

    move-object v3, v0

    move v5, p3

    move-object v6, p2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;-><init>(Lcom/narvii/scene/model/SceneInfo;ZLcom/narvii/app/NVActivity;Ljava/lang/String;Lcom/narvii/scene/template/SceneTemplateHelper;)V

    invoke-virtual {p1, v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->setOnCompileListener(Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;)V

    return-void

    .line 42
    :cond_3
    :goto_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    sget p3, Lcom/narvii/mediaeditor/R$string;->choose_template_media_count_hint:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, v1, Lcom/narvii/scene/model/TemplateConfig;->minInputCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget v1, v1, Lcom/narvii/scene/model/TemplateConfig;->maxInputCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 44
    sget p2, Lcom/narvii/mediaeditor/R$string;->yes:I

    sget-object p3, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$1$1;->INSTANCE:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$1$1;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 45
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 38
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
