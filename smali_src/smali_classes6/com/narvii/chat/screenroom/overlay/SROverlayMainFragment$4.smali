.class Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->val$view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->r(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Z)V

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->p(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-nez p1, :cond_5

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->n(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/input/ChatInputFragment;

    .line 35
    move-result-object p1

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->n(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/input/ChatInputFragment;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move p1, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    move p1, v1

    .line 55
    .line 56
    :goto_1
    iget-object v2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->q(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Z

    .line 60
    move-result v3

    .line 61
    .line 62
    if-nez v3, :cond_4

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move v1, v0

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_2
    invoke-static {v2, v1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->r(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Z)V

    .line 70
    .line 71
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->p(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Z

    .line 75
    move-result p1

    .line 76
    .line 77
    if-nez p1, :cond_7

    .line 78
    .line 79
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->val$view:Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->val$view:Landroid/view/View;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    const v1, 0x7f0a0c5f

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    .line 103
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 108
    move-result v1

    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    iget-object v1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 113
    .line 114
    iget v1, v1, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListMarginEnd:I

    .line 115
    int-to-float v1, v1

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    const/4 v1, 0x0

    .line 118
    .line 119
    :goto_3
    iget-object v2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->val$view:Landroid/view/View;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 123
    move-result v2

    .line 124
    .line 125
    iget-object v3, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 126
    .line 127
    .line 128
    invoke-static {v3}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->o(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 133
    move-result v3

    .line 134
    sub-int/2addr v2, v3

    .line 135
    .line 136
    iget-object v3, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 140
    move-result-object v3

    .line 141
    .line 142
    .line 143
    const v4, 0x7f070475

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 147
    move-result v3

    .line 148
    sub-int/2addr v2, v3

    .line 149
    int-to-float v2, v2

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 156
    .line 157
    :cond_7
    new-instance p1, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;

    .line 158
    .line 159
    .line 160
    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;-><init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;)V

    .line 161
    .line 162
    const-wide/16 v1, 0x64

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 166
    return v0
.end method
