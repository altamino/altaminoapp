.class Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$3;
.super Ljava/lang/Object;
.source "BasicCroppingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;Landroid/widget/SeekBar;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$3;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$3;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 498
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$3;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    invoke-static {v0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->access$500(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v1

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$3;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    invoke-static {v0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->access$400(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v2

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$3;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    invoke-static {v0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->access$400(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$3;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v5, v0

    mul-long v3, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    return-void
.end method
