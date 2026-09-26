.class public final Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/view/EditScenePreviewLayout;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/EditScenePreviewLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/view/EditScenePreviewLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->run$lambda$0(Lcom/narvii/scene/view/EditScenePreviewLayout;)V

    return-void
.end method

.method private static final run$lambda$0(Lcom/narvii/scene/view/EditScenePreviewLayout;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->access$getCurrentPosition(Lcom/narvii/scene/view/EditScenePreviewLayout;)J

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->access$getTotalDuration(Lcom/narvii/scene/view/EditScenePreviewLayout;)J

    .line 20
    move-result-wide v3

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->access$isPlaying$p(Lcom/narvii/scene/view/EditScenePreviewLayout;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout;

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/scene/view/d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/narvii/scene/view/d;-><init>(Lcom/narvii/scene/view/EditScenePreviewLayout;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 19
    :cond_0
    return-void
.end method
