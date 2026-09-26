.class final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


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
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Lcom/narvii/model/Media;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Lw7/l0;",
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

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/Media;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;->invoke(Lcom/narvii/model/Media;ZZ)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Lcom/narvii/model/Media;ZZ)V
    .locals 9
    .param p1    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 2
    invoke-static {p3, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$isSupportFormat(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/model/Media;)Z

    move-result p3

    if-eqz p3, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    move v6, p3

    .line 3
    :goto_0
    new-instance p3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p3

    move-object v3, p1

    move v4, v6

    invoke-direct/range {v1 .. v8}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZILkotlin/jvm/internal/k;)V

    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 4
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

    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 5
    invoke-static {p1, p3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$selectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)Z

    :cond_1
    return-void
.end method
