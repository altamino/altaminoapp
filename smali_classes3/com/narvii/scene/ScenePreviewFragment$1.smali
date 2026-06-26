.class Lcom/narvii/scene/ScenePreviewFragment$1;
.super Ljava/lang/Object;
.source "ScenePreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/ScenePreviewFragment;->showInvalidDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/ScenePreviewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/ScenePreviewFragment;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment$1;->this$0:Lcom/narvii/scene/ScenePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment$1;->this$0:Lcom/narvii/scene/ScenePreviewFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 184
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment$1;->this$0:Lcom/narvii/scene/ScenePreviewFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
