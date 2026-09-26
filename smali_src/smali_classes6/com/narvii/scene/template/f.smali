.class public final synthetic Lcom/narvii/scene/template/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/f;->a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/f;->a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->p(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
