.class Landroid/support/rastermill/FrameSequenceDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/rastermill/FrameSequenceDrawable;


# direct methods
.method constructor <init>(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->h(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->d(Landroid/support/rastermill/FrameSequenceDrawable;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->i(Landroid/support/rastermill/FrameSequenceDrawable;)I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-gez v1, :cond_1

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    .line 32
    :cond_1
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Landroid/support/rastermill/FrameSequenceDrawable;->a(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 39
    const/4 v4, 0x2

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->p(Landroid/support/rastermill/FrameSequenceDrawable;I)V

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    add-int/lit8 v0, v1, -0x2

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    .line 53
    const/4 v3, 0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    .line 56
    :try_start_1
    iget-object v6, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 57
    .line 58
    .line 59
    invoke-static {v6}, Landroid/support/rastermill/FrameSequenceDrawable;->f(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequence$State;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v1, v2, v0}, Landroid/support/rastermill/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    .line 64
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    move v2, v5

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .line 69
    const-string v1, "FrameSequence"

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    const-string v6, "exception during decode: "

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    const-wide/16 v0, 0x0

    .line 92
    move v2, v3

    .line 93
    .line 94
    :goto_0
    const-wide/16 v6, 0x14

    .line 95
    .line 96
    cmp-long v8, v0, v6

    .line 97
    .line 98
    if-gez v8, :cond_2

    .line 99
    move-wide v0, v6

    .line 100
    .line 101
    :cond_2
    iget-object v6, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 102
    .line 103
    .line 104
    invoke-static {v6}, Landroid/support/rastermill/FrameSequenceDrawable;->h(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;

    .line 105
    move-result-object v6

    .line 106
    monitor-enter v6

    .line 107
    .line 108
    :try_start_2
    iget-object v7, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 109
    .line 110
    .line 111
    invoke-static {v7}, Landroid/support/rastermill/FrameSequenceDrawable;->d(Landroid/support/rastermill/FrameSequenceDrawable;)Z

    .line 112
    move-result v7

    .line 113
    const/4 v8, 0x0

    .line 114
    .line 115
    if-eqz v7, :cond_4

    .line 116
    .line 117
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->a(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v8}, Landroid/support/rastermill/FrameSequenceDrawable;->m(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/graphics/Bitmap;)V

    .line 127
    move-object v8, v0

    .line 128
    :cond_3
    move v3, v5

    .line 129
    goto :goto_2

    .line 130
    :catchall_1
    move-exception v0

    .line 131
    goto :goto_3

    .line 132
    .line 133
    :cond_4
    iget-object v7, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 134
    .line 135
    .line 136
    invoke-static {v7}, Landroid/support/rastermill/FrameSequenceDrawable;->i(Landroid/support/rastermill/FrameSequenceDrawable;)I

    .line 137
    move-result v7

    .line 138
    .line 139
    if-ltz v7, :cond_3

    .line 140
    .line 141
    iget-object v7, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 142
    .line 143
    .line 144
    invoke-static {v7}, Landroid/support/rastermill/FrameSequenceDrawable;->l(Landroid/support/rastermill/FrameSequenceDrawable;)I

    .line 145
    move-result v7

    .line 146
    .line 147
    if-ne v7, v4, :cond_3

    .line 148
    .line 149
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 150
    .line 151
    if-eqz v2, :cond_5

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    const-wide v0, 0x7fffffffffffffffL

    .line 157
    goto :goto_1

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-static {v4}, Landroid/support/rastermill/FrameSequenceDrawable;->g(Landroid/support/rastermill/FrameSequenceDrawable;)J

    .line 161
    move-result-wide v9

    .line 162
    add-long/2addr v0, v9

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-static {v4, v0, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->o(Landroid/support/rastermill/FrameSequenceDrawable;J)V

    .line 166
    .line 167
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 168
    const/4 v1, 0x3

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->p(Landroid/support/rastermill/FrameSequenceDrawable;I)V

    .line 172
    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    .line 174
    if-eqz v3, :cond_6

    .line 175
    .line 176
    .line 177
    invoke-static {}, Landroid/support/rastermill/FrameSequenceDrawable;->q()Landroid/os/Handler;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->j(Landroid/support/rastermill/FrameSequenceDrawable;)J

    .line 184
    move-result-wide v2

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 188
    .line 189
    :cond_6
    if-eqz v8, :cond_7

    .line 190
    .line 191
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 192
    .line 193
    .line 194
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->b(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    .line 198
    invoke-interface {v0, v8}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    :cond_7
    return-void

    .line 200
    :goto_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    throw v0

    .line 202
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    throw v1
.end method
