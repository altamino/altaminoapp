.class public final synthetic Lcom/narvii/scene/template/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/c;->a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    iput-object p2, p0, Lcom/narvii/scene/template/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/c;->a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    iget-object v1, p0, Lcom/narvii/scene/template/c;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->s(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;)V

    return-void
.end method
