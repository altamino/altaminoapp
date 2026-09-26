.class Lcom/narvii/chat/audio/AudioRecordLayout$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onRecordCancel()V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 33
    const/4 v0, 0x1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->b(Lcom/narvii/chat/audio/AudioRecordLayout;I)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 43
    const/4 v0, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;->this$1:Lcom/narvii/chat/audio/AudioRecordLayout$2;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 83
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
