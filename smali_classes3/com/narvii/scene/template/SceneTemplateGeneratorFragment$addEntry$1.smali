.class final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneTemplateGeneratorFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/narvii/model/Media;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Lcom/narvii/model/Media;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;->invoke(Lcom/narvii/model/Media;ZZ)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/narvii/model/Media;ZZ)V
    .locals 9

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 189
    iget-object p3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {p3, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$isSupportFormat(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/model/Media;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v6, 0x0

    .line 190
    :goto_0
    new-instance p3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p3

    move-object v3, p1

    move v4, v6

    invoke-direct/range {v1 .. v8}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 195
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getEntryList()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 197
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {p1, p3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$selectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)Z

    :cond_1
    return-void
.end method
