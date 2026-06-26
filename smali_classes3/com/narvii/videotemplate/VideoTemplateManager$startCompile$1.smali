.class final Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$1;
.super Ljava/lang/Object;
.source "VideoTemplateManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/videotemplate/VideoTemplateManager;->startCompile(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/videotemplate/VideoTemplateManager;


# direct methods
.method constructor <init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-virtual {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/Template;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/videotemplate/Template;->backgroundMusic:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v2}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTemplateMusicFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/narvii/util/FileUtils;->moveFromAssetsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    return-void
.end method
