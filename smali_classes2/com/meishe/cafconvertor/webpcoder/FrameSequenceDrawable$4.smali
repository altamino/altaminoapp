.class Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;


# direct methods
.method constructor <init>(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$4;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$4;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->k(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$4;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->k(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnAnimationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$4;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-interface {v0, v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnAnimationListener;->onFinished(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)V

    :cond_0
    return-void
.end method
