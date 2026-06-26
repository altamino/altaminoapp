.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SceneTemplateGeneratorFragment.kt"

# interfaces
.implements Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->invoke()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateGeneratorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$1$1\n*L\n1#1,914:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/String;Ljava/lang/Exception;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 2

    const-string p2, "url"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "entry"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;

    iget-object p1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    invoke-virtual {p3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    if-eqz p2, :cond_2

    const/4 p1, 0x3

    .line 145
    invoke-virtual {p2, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setState(I)V

    .line 146
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;

    iget-object p1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {p1, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$updateSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    :cond_2
    return-void
.end method

.method public onDownloadProgress(IILcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 4

    const-string v0, "entry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;

    iget-object v0, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    invoke-virtual {p3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    if-eqz v1, :cond_2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/16 p2, 0x64

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 127
    invoke-virtual {v1, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setProgress(I)V

    const/4 p1, 0x2

    .line 128
    invoke-virtual {v1, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setState(I)V

    .line 129
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;

    iget-object p1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {p1, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$updateSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    :cond_2
    return-void
.end method

.method public onDownloadSuccess(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 4

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;

    iget-object v0, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setMedia(Lcom/narvii/model/Media;)V

    const/4 p1, 0x4

    .line 137
    invoke-virtual {v1, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setState(I)V

    .line 138
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;

    iget-object p1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {p1, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$updateSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    :cond_2
    return-void
.end method
