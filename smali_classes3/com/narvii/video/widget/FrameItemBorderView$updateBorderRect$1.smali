.class final Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;
.super Ljava/lang/Object;
.source "FrameItemBorderView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/FrameItemBorderView;->updateBorderRect(ZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $hide:Z

.field final synthetic $leftEdge:Z

.field final synthetic $rightEdge:Z

.field final synthetic this$0:Lcom/narvii/video/widget/FrameItemBorderView;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/FrameItemBorderView;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;->this$0:Lcom/narvii/video/widget/FrameItemBorderView;

    iput-boolean p2, p0, Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;->$hide:Z

    iput-boolean p3, p0, Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;->$leftEdge:Z

    iput-boolean p4, p0, Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;->$rightEdge:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;->this$0:Lcom/narvii/video/widget/FrameItemBorderView;

    iget-boolean v1, p0, Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;->$hide:Z

    iget-boolean v2, p0, Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;->$leftEdge:Z

    iget-boolean v3, p0, Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;->$rightEdge:Z

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/video/widget/FrameItemBorderView;->access$innerUpdateBorderRect(Lcom/narvii/video/widget/FrameItemBorderView;ZZZ)V

    return-void
.end method
