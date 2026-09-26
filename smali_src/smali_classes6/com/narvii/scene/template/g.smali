.class public final synthetic Lcom/narvii/scene/template/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/g;->a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/g;->a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->n(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    return-void
.end method
