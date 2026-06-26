.class final Lcom/narvii/video/BaseViceTimeLineFragment$onTimeLineScrolledOffsetChanged$1;
.super Ljava/lang/Object;
.source "BaseViceTimeLineFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseViceTimeLineFragment;->onTimeLineScrolledOffsetChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/BaseViceTimeLineFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseViceTimeLineFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$onTimeLineScrolledOffsetChanged$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$onTimeLineScrolledOffsetChanged$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v2, v3}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled$default(Lcom/narvii/video/BaseViceTimeLineFragment;IZILjava/lang/Object;)V

    return-void
.end method
