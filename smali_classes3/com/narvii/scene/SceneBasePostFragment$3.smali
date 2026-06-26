.class Lcom/narvii/scene/SceneBasePostFragment$3;
.super Ljava/lang/Object;
.source "SceneBasePostFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneBasePostFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/SceneBasePostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneBasePostFragment;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$3;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$3;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 189
    iget-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$3;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_0
    return-void
.end method
