.class public final synthetic Lcom/narvii/video/services/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;

.field public final synthetic b:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/k;->a:Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;

    iput-object p2, p0, Lcom/narvii/video/services/k;->b:Lcom/narvii/video/services/VideoManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/video/services/k;->a:Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;

    iget-object v1, p0, Lcom/narvii/video/services/k;->b:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->a(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method
