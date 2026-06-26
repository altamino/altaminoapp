.class final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SceneTemplateGeneratorFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 295
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
