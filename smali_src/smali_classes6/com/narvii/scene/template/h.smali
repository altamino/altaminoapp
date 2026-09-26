.class public final synthetic Lcom/narvii/scene/template/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/h;->a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    iput-object p2, p0, Lcom/narvii/scene/template/h;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/scene/template/h;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/h;->a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    iget-object v1, p0, Lcom/narvii/scene/template/h;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/scene/template/h;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->r(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method
