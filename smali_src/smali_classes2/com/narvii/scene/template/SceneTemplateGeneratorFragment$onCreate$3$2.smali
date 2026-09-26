.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;
.super Lcom/narvii/util/WebMediaExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dialog:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic $dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

.field private count:I

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->$dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 7
    .line 8
    .line 9
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p4}, Lcom/narvii/util/WebMediaExtractor;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->count:I

    return v0
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string p1, ": "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 35
    .line 36
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->$dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 47
    return-void
.end method

.method public onFinished(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "images"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo p1, "videos"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->$dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 24
    return-void
.end method

.method protected onImageFound(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "url"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAddEntry()Le8/q;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/model/Media;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    .line 18
    .line 19
    const/16 v2, 0x64

    .line 20
    .line 21
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    .line 22
    .line 23
    iput-object p1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 24
    .line 25
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1, p1, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAdapter()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 40
    .line 41
    iget p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->count:I

    .line 42
    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->count:I

    .line 46
    .line 47
    const/16 v0, 0xc

    .line 48
    .line 49
    if-lt p1, v0, :cond_0

    .line 50
    .line 51
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->$dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->$dismissRunnable:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    .line 59
    .line 60
    const-wide/16 v1, 0x5dc

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    :cond_0
    return-void
.end method

.method protected onVideoFound(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;->count:I

    return-void
.end method
