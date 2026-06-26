.class Lcom/narvii/scene/SceneBasePostFragment$2$1;
.super Ljava/lang/Object;
.source "SceneBasePostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneBasePostFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/SceneBasePostFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneBasePostFragment$2;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$2$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$2$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$2;

    iget-object p1, p1, Lcom/narvii/scene/SceneBasePostFragment$2;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/SceneBasePostFragment;->onPostDeleted()V

    return-void
.end method
