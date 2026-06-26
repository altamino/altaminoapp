.class final Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLine$1;
.super Ljava/lang/Object;
.source "BaseViceTimeLineFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLine(Lcom/narvii/video/model/BaseClipInfoPack;IZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $trackIndex:I

.field final synthetic $viceTrackRealtimeEdit:Z

.field final synthetic this$0:Lcom/narvii/video/BaseViceTimeLineFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseViceTimeLineFragment;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLine$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iput p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLine$1;->$trackIndex:I

    iput-boolean p3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLine$1;->$viceTrackRealtimeEdit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLine$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iget v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLine$1;->$trackIndex:I

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViewIndexOfTrackIndex(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLine$1;->$viceTrackRealtimeEdit:Z

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled(IZ)V

    return-void
.end method
