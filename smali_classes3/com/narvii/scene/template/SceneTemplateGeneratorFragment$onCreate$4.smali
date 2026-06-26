.class final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$4;
.super Ljava/lang/Object;
.source "SceneTemplateGeneratorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$4;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$4;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$pickResource(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    return-void
.end method
