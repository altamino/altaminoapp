.class final Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$2;
.super Ljava/lang/Object;
.source "MeisheSceneVideoGenerator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;


# direct methods
.method constructor <init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$2;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$2;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;

    iget-object v0, v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    iget-object v0, v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-static {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->access$clearCoverImageTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;)V

    .line 304
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$2;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;

    iget-object v0, v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->getOnGenerateCallback()Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$2;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;

    iget-object v1, v1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    invoke-virtual {v1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->getOutputPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
