.class Lcom/narvii/scene/SceneBasePostFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$3;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$3;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$3;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 15
    :goto_0
    return-void
.end method
