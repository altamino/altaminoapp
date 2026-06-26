.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;
.super Ljava/lang/Object;
.source "ReputationEarningComposite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/ReputationEarningComposite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$502(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)F

    .line 134
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$902(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)F

    .line 135
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1002(Lcom/narvii/chat/screenroom/ReputationEarningComposite;I)I

    .line 136
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;I)V

    .line 145
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1400(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
