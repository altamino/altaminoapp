.class final Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$1;
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
.field final synthetic $e:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;


# direct methods
.method constructor <init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;

    iput-object p2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$1;->$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;

    iget-object v0, v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    iget-object v0, v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-static {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->access$clearCoverImageTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;)V

    .line 299
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;

    iget-object v0, v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->getOnGenerateCallback()Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$1;->$e:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
