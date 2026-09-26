.class public final synthetic Lcom/narvii/scene/template/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/SceneTemplateHelper;

.field public final synthetic b:Lcom/narvii/videotemplate/Template;

.field public final synthetic c:Lcom/narvii/video/model/StreamInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/k;->a:Lcom/narvii/scene/template/SceneTemplateHelper;

    iput-object p2, p0, Lcom/narvii/scene/template/k;->b:Lcom/narvii/videotemplate/Template;

    iput-object p3, p0, Lcom/narvii/scene/template/k;->c:Lcom/narvii/video/model/StreamInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/k;->a:Lcom/narvii/scene/template/SceneTemplateHelper;

    iget-object v1, p0, Lcom/narvii/scene/template/k;->b:Lcom/narvii/videotemplate/Template;

    iget-object v2, p0, Lcom/narvii/scene/template/k;->c:Lcom/narvii/video/model/StreamInfo;

    invoke-static {v0, v1, v2}, Lcom/narvii/scene/template/SceneTemplateHelper;->b(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)V

    return-void
.end method
