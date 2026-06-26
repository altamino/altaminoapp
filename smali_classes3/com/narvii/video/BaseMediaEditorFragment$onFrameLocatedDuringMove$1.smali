.class final Lcom/narvii/video/BaseMediaEditorFragment$onFrameLocatedDuringMove$1;
.super Ljava/lang/Object;
.source "BaseMediaEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment;->onFrameLocatedDuringMove(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $frameTimeInMs:I

.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$onFrameLocatedDuringMove$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    iput p2, p0, Lcom/narvii/video/BaseMediaEditorFragment$onFrameLocatedDuringMove$1;->$frameTimeInMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$onFrameLocatedDuringMove$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    iget v1, p0, Lcom/narvii/video/BaseMediaEditorFragment$onFrameLocatedDuringMove$1;->$frameTimeInMs:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    return-void
.end method
