.class final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2$2;
.super Ljava/lang/Object;
.source "SceneTemplateGeneratorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $validFormatList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2$2;->$validFormatList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 583
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;

    iget-object v0, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getLoadingBar()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 584
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;

    iget-object v0, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;->$list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    .line 585
    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;

    iget-object v3, v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAddEntry()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2$2;->$validFormatList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "validFormatList[index]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2, v5, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v4

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;

    iget-object v0, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$updateItemView(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    return-void

    .line 584
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
