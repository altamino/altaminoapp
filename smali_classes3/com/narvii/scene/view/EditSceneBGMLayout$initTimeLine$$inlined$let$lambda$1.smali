.class final Lcom/narvii/scene/view/EditSceneBGMLayout$initTimeLine$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "EditSceneBGMLayout.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/EditSceneBGMLayout;->initTimeLine(Ljava/util/List;IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic this$0:Lcom/narvii/scene/view/EditSceneBGMLayout;


# direct methods
.method constructor <init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/scene/view/EditSceneBGMLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout$initTimeLine$$inlined$let$lambda$1;->$it:Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p2, p0, Lcom/narvii/scene/view/EditSceneBGMLayout$initTimeLine$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/view/EditSceneBGMLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 105
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout$initTimeLine$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/view/EditSceneBGMLayout;

    invoke-static {v0}, Lcom/narvii/scene/view/EditSceneBGMLayout;->access$getMediaTimeLineComponent$p(Lcom/narvii/scene/view/EditSceneBGMLayout;)Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout$initTimeLine$$inlined$let$lambda$1;->$it:Lcom/narvii/video/model/AVClipInfoPack;

    iget v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x76

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
