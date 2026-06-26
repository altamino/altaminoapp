.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragmentKt;
.super Ljava/lang/Object;
.source "SceneTemplateGeneratorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateGeneratorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragmentKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,914:1\n1313#2:915\n1382#2,3:916\n*E\n*S KotlinDebug\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragmentKt\n*L\n904#1:915\n904#1,3:916\n*E\n"
.end annotation


# direct methods
.method public static final blogConvertToScene(Lcom/narvii/model/Blog;Landroid/content/Context;Ljava/lang/String;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)Lcom/narvii/scene/model/SceneInfo;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStreamInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 879
    iget-object p0, p0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    .line 881
    :cond_2
    :goto_0
    new-instance v1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v1}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 882
    iput-object p2, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 883
    iput-object p2, v1, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 884
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 885
    iput v0, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 886
    iget p2, p4, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    const/16 p2, 0x10

    .line 887
    iput p2, v1, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    .line 890
    new-instance p2, Lcom/narvii/scene/model/SceneInfo;

    invoke-direct {p2}, Lcom/narvii/scene/model/SceneInfo;-><init>()V

    .line 891
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const/4 p4, 0x1

    new-array v2, p4, [Lcom/narvii/video/model/AVClipInfoPack;

    aput-object v1, v2, v0

    .line 892
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 894
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 895
    new-instance v1, Lcom/narvii/video/model/Caption;

    invoke-direct {v1}, Lcom/narvii/video/model/Caption;-><init>()V

    .line 896
    iput-object p0, v1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    const/4 p0, -0x1

    .line 897
    iput p0, v1, Lcom/narvii/video/model/Caption;->textColor:I

    .line 898
    iput-boolean p4, v1, Lcom/narvii/video/model/Caption;->isBold:Z

    .line 900
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 901
    iget p0, v1, Lcom/narvii/video/model/Caption;->fontSize:F

    invoke-virtual {v4, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 902
    new-instance p0, Landroid/text/StaticLayout;

    iget-object v3, v1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 904
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    .line 915
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 916
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 904
    invoke-virtual {p0, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->max(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_2

    .line 905
    :cond_4
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    :goto_2
    const/high16 v2, 0x44100000    # 576.0f

    div-float/2addr v2, p1

    const/high16 p1, 0x43a00000    # 320.0f

    .line 906
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 907
    iget p0, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    iput p0, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    const/16 p0, 0x1388

    .line 908
    iput p0, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    new-array p0, p4, [Lcom/narvii/video/model/Caption;

    aput-object v1, p0, v0

    .line 909
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, p2, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 912
    :cond_5
    iput-object p3, p2, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    return-object p2
.end method
