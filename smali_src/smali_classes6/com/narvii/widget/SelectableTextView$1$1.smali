.class Lcom/narvii/widget/SelectableTextView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/SelectableTextView$1;->onLongPress(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/widget/SelectableTextView$1;

.field final synthetic val$e:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/narvii/widget/SelectableTextView$1;Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/SelectableTextView$1$1;->val$e:Landroid/view/MotionEvent;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    const/4 v1, 0x3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 63
    const/4 v1, 0x0

    .line 64
    .line 65
    iput-object v1, v0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    .line 66
    .line 67
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 70
    const/4 v1, 0x1

    .line 71
    .line 72
    iput-boolean v1, v0, Lcom/narvii/widget/SelectableTextView;->block:Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    iput-object v2, v0, Lcom/narvii/widget/SelectableTextView;->savedMovementMethod:Landroid/text/method/MovementMethod;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 83
    .line 84
    iput-boolean v1, v0, Lcom/narvii/widget/SelectableTextView;->hasSavedMovementMethod:Z

    .line 85
    .line 86
    .line 87
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    .line 91
    const-string v2, "fail when long press text to select"

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 98
    move-result-wide v5

    .line 99
    const/4 v7, 0x0

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->val$e:Landroid/view/MotionEvent;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 105
    move-result v8

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->val$e:Landroid/view/MotionEvent;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 111
    move-result v9

    .line 112
    const/4 v10, 0x0

    .line 113
    move-wide v3, v5

    .line 114
    .line 115
    .line 116
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    :try_start_1
    iget-object v2, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 128
    .line 129
    iget-object v2, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 130
    .line 131
    iget-object v2, v2, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    const/4 v2, 0x0

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 139
    .line 140
    iget-object v2, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 141
    .line 142
    iget-object v2, v2, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 149
    .line 150
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    .line 151
    .line 152
    iget-object v1, v1, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    goto :goto_1

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    const-string v3, "onLongPress.run: unable to dispatch touch event "

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    .line 171
    move-result v0

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    const-string v2, "SelectableTextView"

    .line 181
    .line 182
    .line 183
    invoke-static {v2, v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :cond_1
    :goto_1
    return-void
.end method
