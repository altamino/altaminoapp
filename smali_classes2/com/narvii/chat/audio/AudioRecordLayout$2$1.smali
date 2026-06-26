.class Lcom/narvii/chat/audio/AudioRecordLayout$2$1;
.super Ljava/lang/Object;
.source "AudioRecordLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/audio/AudioRecordLayout$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;


# direct methods
.method constructor <init>(Lcom/narvii/chat/audio/AudioRecordLayout$2;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 304
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 306
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onRecordCancel()V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->access$100(Lcom/narvii/chat/audio/AudioRecordLayout;I)V

    .line 310
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 311
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 312
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 313
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 314
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
