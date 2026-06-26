.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;
.super Lcom/narvii/util/WebMediaExtractor;
.source "SceneTemplateGeneratorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateGeneratorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2\n*L\n1#1,914:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $dialog:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic $dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

.field private count:I

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->$dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 304
    invoke-direct {p0, p3}, Lcom/narvii/util/WebMediaExtractor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->count:I

    return v0
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 309
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->$dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinished(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "images"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videos"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->$dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onImageFound(Ljava/lang/String;)V
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAddEntry()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    new-instance v1, Lcom/narvii/model/Media;

    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    const/16 v2, 0x64

    .line 320
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    .line 321
    iput-object p1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const/4 p1, 0x0

    .line 322
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, p1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAdapter()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 324
    :cond_0
    iget p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->count:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->count:I

    iget p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->count:I

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    .line 325
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->$dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->$dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected onVideoFound(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setCount(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;->count:I

    return-void
.end method
