.class final Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLinePanel$1;
.super Ljava/lang/Object;
.source "BaseViceTimeLineFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel(ZLjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $viceTrackRealtimeEdit:Z

.field final synthetic this$0:Lcom/narvii/video/BaseViceTimeLineFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseViceTimeLineFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLinePanel$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iput-boolean p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLinePanel$1;->$viceTrackRealtimeEdit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLinePanel$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iget-boolean v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLinePanel$1;->$viceTrackRealtimeEdit:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled$default(Lcom/narvii/video/BaseViceTimeLineFragment;IZILjava/lang/Object;)V

    return-void
.end method
