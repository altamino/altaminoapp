.class public final Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$1;
.super Ljava/lang/Object;
.source "CoverImageFragment.kt"

# interfaces
.implements Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/CoverImageFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/CoverImageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/CoverImageFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Z)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getDialog$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onProgress(F)V
    .locals 0

    .line 130
    invoke-static {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onProgress(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;F)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "outputList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {v0}, Lcom/narvii/story/CoverImageFragment;->access$getCoverImageInfo$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/scene/model/SceneCoverImageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "coverImageInfo"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 135
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$getDialog$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 136
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$1;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
