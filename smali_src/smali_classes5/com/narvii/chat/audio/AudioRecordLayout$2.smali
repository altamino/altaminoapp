.class Lcom/narvii/chat/audio/AudioRecordLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/audio/AudioRecordLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

.field final synthetic val$transY:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/audio/AudioRecordLayout;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2;->val$transY:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 1
    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    new-array v3, v2, [F

    .line 13
    .line 14
    iget v4, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2;->val$transY:I

    .line 15
    int-to-float v5, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    .line 18
    aput v5, v3, v6

    .line 19
    int-to-float v4, v4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const/high16 v5, 0x43020000    # 130.0f

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 29
    move-result v0

    .line 30
    add-float/2addr v4, v0

    .line 31
    const/4 v0, 0x1

    .line 32
    .line 33
    aput v4, v3, v0

    .line 34
    .line 35
    const-string v4, "TranslationY"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 45
    .line 46
    iget-object v3, v1, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    .line 47
    .line 48
    new-array v2, v2, [F

    .line 49
    const/4 v7, 0x0

    .line 50
    .line 51
    aput v7, v2, v6

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 59
    move-result v1

    .line 60
    .line 61
    aput v1, v2, v0

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 72
    move-result v0

    .line 73
    .line 74
    new-array v0, v0, [Landroid/animation/ObjectAnimator;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, [Landroid/animation/ObjectAnimator;

    .line 81
    .line 82
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 89
    .line 90
    const-wide/16 v1, 0x64

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 97
    .line 98
    new-instance p1, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, p0}, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout$2;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
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
