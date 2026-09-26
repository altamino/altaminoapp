.class Lio/agora/rtc/video/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/video/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "glSurfaceViewWeakRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/video/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mSizeChanged:Z

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    iput v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mWidth:I

    .line 17
    .line 18
    iput v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHeight:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    .line 21
    .line 22
    iput v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderMode:I

    .line 23
    .line 24
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 25
    return-void
.end method

.method static synthetic access$1102(Lio/agora/rtc/video/GLTextureView$GLThread;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z

    .line 3
    return p1
.end method

.method private guardedRun()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    new-instance v0, Lio/agora/rtc/video/GLTextureView$EglHelper;

    .line 5
    .line 6
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lio/agora/rtc/video/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 10
    .line 11
    iput-object v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 15
    .line 16
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 17
    move v3, v0

    .line 18
    move v4, v3

    .line 19
    move v5, v4

    .line 20
    move v7, v5

    .line 21
    move v8, v7

    .line 22
    move v9, v8

    .line 23
    move v10, v9

    .line 24
    move v11, v10

    .line 25
    move v12, v11

    .line 26
    move v13, v12

    .line 27
    const/4 v6, 0x0

    .line 28
    :goto_0
    const/4 v14, 0x0

    .line 29
    .line 30
    .line 31
    :goto_1
    :try_start_0
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 32
    move-result-object v15

    .line 33
    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    .line 35
    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mShouldExit:Z

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 42
    move-result-object v2

    .line 43
    monitor-enter v2

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 47
    .line 48
    .line 49
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 50
    monitor-exit v2

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v0

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    .line 57
    goto/16 :goto_9

    .line 58
    .line 59
    :cond_0
    :try_start_3
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    move-result v2

    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 68
    const/4 v14, 0x0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    move-object v14, v2

    .line 74
    .line 75
    check-cast v14, Ljava/lang/Runnable;

    .line 76
    const/4 v0, 0x0

    .line 77
    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :cond_1
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    .line 81
    .line 82
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestPaused:Z

    .line 83
    .line 84
    if-eq v2, v0, :cond_2

    .line 85
    .line 86
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 94
    goto :goto_3

    .line 95
    :cond_2
    const/4 v0, 0x0

    .line 96
    .line 97
    :goto_3
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    .line 102
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 103
    .line 104
    .line 105
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 106
    const/4 v2, 0x0

    .line 107
    .line 108
    iput-boolean v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 109
    const/4 v5, 0x1

    .line 110
    .line 111
    :cond_3
    if-eqz v3, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 115
    .line 116
    .line 117
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 118
    const/4 v3, 0x0

    .line 119
    .line 120
    :cond_4
    if-eqz v0, :cond_5

    .line 121
    .line 122
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    .line 127
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 128
    .line 129
    :cond_5
    if-eqz v0, :cond_8

    .line 130
    .line 131
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 132
    .line 133
    if-eqz v2, :cond_8

    .line 134
    .line 135
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    check-cast v2, Lio/agora/rtc/video/GLTextureView;

    .line 142
    .line 143
    if-nez v2, :cond_6

    .line 144
    goto :goto_4

    .line 145
    .line 146
    .line 147
    :cond_6
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureView;->access$900(Lio/agora/rtc/video/GLTextureView;)Z

    .line 148
    move-result v2

    .line 149
    .line 150
    if-eqz v2, :cond_7

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 154
    move-result-object v2

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    .line 158
    move-result v2

    .line 159
    .line 160
    if-eqz v2, :cond_8

    .line 161
    .line 162
    .line 163
    :cond_7
    :goto_4
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 164
    .line 165
    :cond_8
    if-eqz v0, :cond_9

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    .line 173
    move-result v0

    .line 174
    .line 175
    if-eqz v0, :cond_9

    .line 176
    .line 177
    iget-object v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$EglHelper;->finish()V

    .line 181
    .line 182
    :cond_9
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    .line 183
    .line 184
    if-nez v0, :cond_b

    .line 185
    .line 186
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 187
    .line 188
    if-nez v0, :cond_b

    .line 189
    .line 190
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 191
    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    .line 195
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 196
    :cond_a
    const/4 v0, 0x1

    .line 197
    .line 198
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 199
    const/4 v0, 0x0

    .line 200
    .line 201
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 209
    .line 210
    :cond_b
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    .line 211
    .line 212
    if-eqz v0, :cond_c

    .line 213
    .line 214
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 215
    .line 216
    if-eqz v0, :cond_c

    .line 217
    const/4 v0, 0x0

    .line 218
    .line 219
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 220
    .line 221
    .line 222
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 223
    move-result-object v0

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    .line 228
    :cond_c
    if-eqz v4, :cond_d

    .line 229
    const/4 v0, 0x1

    .line 230
    .line 231
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderComplete:Z

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 235
    move-result-object v0

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 239
    const/4 v4, 0x0

    .line 240
    const/4 v13, 0x0

    .line 241
    .line 242
    .line 243
    :cond_d
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->readyToDraw()Z

    .line 244
    move-result v0

    .line 245
    .line 246
    if-eqz v0, :cond_1e

    .line 247
    .line 248
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 249
    .line 250
    if-nez v0, :cond_f

    .line 251
    .line 252
    if-eqz v5, :cond_e

    .line 253
    const/4 v5, 0x0

    .line 254
    goto :goto_5

    .line 255
    .line 256
    .line 257
    :cond_e
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 258
    move-result-object v0

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v1}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lio/agora/rtc/video/GLTextureView$GLThread;)Z

    .line 262
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    .line 264
    if-eqz v0, :cond_f

    .line 265
    .line 266
    :try_start_4
    iget-object v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 270
    const/4 v0, 0x1

    .line 271
    .line 272
    :try_start_5
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 273
    .line 274
    .line 275
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 276
    move-result-object v0

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 280
    const/4 v7, 0x1

    .line 281
    goto :goto_5

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .line 284
    .line 285
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 286
    move-result-object v2

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v1}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lio/agora/rtc/video/GLTextureView$GLThread;)V

    .line 290
    throw v0

    .line 291
    .line 292
    :cond_f
    :goto_5
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 293
    .line 294
    if-eqz v0, :cond_10

    .line 295
    .line 296
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 297
    .line 298
    if-nez v0, :cond_10

    .line 299
    const/4 v0, 0x1

    .line 300
    .line 301
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 302
    const/4 v8, 0x1

    .line 303
    const/4 v9, 0x1

    .line 304
    const/4 v10, 0x1

    .line 305
    .line 306
    :cond_10
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 307
    .line 308
    if-eqz v0, :cond_1e

    .line 309
    .line 310
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mSizeChanged:Z

    .line 311
    .line 312
    if-eqz v0, :cond_11

    .line 313
    .line 314
    iget v11, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mWidth:I

    .line 315
    .line 316
    iget v12, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHeight:I

    .line 317
    const/4 v0, 0x0

    .line 318
    .line 319
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mSizeChanged:Z

    .line 320
    const/4 v8, 0x1

    .line 321
    const/4 v10, 0x1

    .line 322
    const/4 v13, 0x1

    .line 323
    goto :goto_6

    .line 324
    :cond_11
    const/4 v0, 0x0

    .line 325
    .line 326
    :goto_6
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    .line 327
    .line 328
    .line 329
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 330
    move-result-object v2

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 334
    :goto_7
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 335
    .line 336
    if-eqz v14, :cond_12

    .line 337
    .line 338
    .line 339
    :try_start_6
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    .line 340
    .line 341
    goto/16 :goto_0

    .line 342
    :catchall_2
    move-exception v0

    .line 343
    .line 344
    goto/16 :goto_a

    .line 345
    .line 346
    :cond_12
    if-eqz v8, :cond_14

    .line 347
    .line 348
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureView$EglHelper;->createSurface()Z

    .line 352
    move-result v2

    .line 353
    .line 354
    if-nez v2, :cond_13

    .line 355
    .line 356
    .line 357
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 358
    move-result-object v2

    .line 359
    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 360
    const/4 v15, 0x1

    .line 361
    .line 362
    :try_start_7
    iput-boolean v15, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 363
    .line 364
    .line 365
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 366
    move-result-object v15

    .line 367
    .line 368
    .line 369
    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 370
    monitor-exit v2

    .line 371
    .line 372
    goto/16 :goto_1

    .line 373
    :catchall_3
    move-exception v0

    .line 374
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 375
    :try_start_8
    throw v0

    .line 376
    :cond_13
    move v8, v0

    .line 377
    .line 378
    :cond_14
    if-eqz v9, :cond_15

    .line 379
    .line 380
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    .line 384
    move-result-object v2

    .line 385
    .line 386
    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    .line 387
    .line 388
    .line 389
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 390
    move-result-object v6

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6, v2}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 394
    move v9, v0

    .line 395
    move-object v6, v2

    .line 396
    .line 397
    :cond_15
    if-eqz v7, :cond_17

    .line 398
    .line 399
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 403
    move-result-object v2

    .line 404
    .line 405
    check-cast v2, Lio/agora/rtc/video/GLTextureView;

    .line 406
    .line 407
    if-eqz v2, :cond_16

    .line 408
    .line 409
    .line 410
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureView;->access$1000(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$Renderer;

    .line 411
    move-result-object v2

    .line 412
    .line 413
    iget-object v7, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    .line 414
    .line 415
    iget-object v7, v7, Lio/agora/rtc/video/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 416
    .line 417
    .line 418
    invoke-interface {v2, v6, v7}, Lio/agora/rtc/video/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 419
    :cond_16
    move v7, v0

    .line 420
    .line 421
    :cond_17
    if-eqz v10, :cond_19

    .line 422
    .line 423
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 427
    move-result-object v2

    .line 428
    .line 429
    check-cast v2, Lio/agora/rtc/video/GLTextureView;

    .line 430
    .line 431
    if-eqz v2, :cond_18

    .line 432
    .line 433
    .line 434
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureView;->access$1000(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$Renderer;

    .line 435
    move-result-object v2

    .line 436
    .line 437
    .line 438
    invoke-interface {v2, v6, v11, v12}, Lio/agora/rtc/video/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 439
    :cond_18
    move v10, v0

    .line 440
    .line 441
    :cond_19
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 445
    move-result-object v2

    .line 446
    .line 447
    check-cast v2, Lio/agora/rtc/video/GLTextureView;

    .line 448
    .line 449
    if-eqz v2, :cond_1a

    .line 450
    .line 451
    .line 452
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureView;->access$1000(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$Renderer;

    .line 453
    move-result-object v2

    .line 454
    .line 455
    .line 456
    invoke-interface {v2, v6}, Lio/agora/rtc/video/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 457
    .line 458
    :cond_1a
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureView$EglHelper;->swap()I

    .line 462
    move-result v2

    .line 463
    .line 464
    const/16 v15, 0x3000

    .line 465
    .line 466
    if-eq v2, v15, :cond_1c

    .line 467
    .line 468
    const/16 v15, 0x300e

    .line 469
    .line 470
    if-eq v2, v15, :cond_1b

    .line 471
    .line 472
    const-string v15, "GLThread"

    .line 473
    .line 474
    const-string v0, "eglSwapBuffers"

    .line 475
    .line 476
    .line 477
    invoke-static {v15, v0, v2}, Lio/agora/rtc/video/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 478
    .line 479
    .line 480
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 481
    move-result-object v2

    .line 482
    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 483
    const/4 v0, 0x1

    .line 484
    .line 485
    :try_start_9
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 486
    .line 487
    .line 488
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 489
    move-result-object v15

    .line 490
    .line 491
    .line 492
    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit v2

    .line 494
    goto :goto_8

    .line 495
    :catchall_4
    move-exception v0

    .line 496
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 497
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 498
    :cond_1b
    const/4 v0, 0x1

    .line 499
    move v3, v0

    .line 500
    goto :goto_8

    .line 501
    :cond_1c
    const/4 v0, 0x1

    .line 502
    .line 503
    :goto_8
    if-eqz v13, :cond_1d

    .line 504
    move v4, v0

    .line 505
    :cond_1d
    const/4 v0, 0x0

    .line 506
    .line 507
    goto/16 :goto_1

    .line 508
    .line 509
    .line 510
    :cond_1e
    :try_start_b
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 511
    move-result-object v0

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 515
    const/4 v0, 0x0

    .line 516
    .line 517
    goto/16 :goto_2

    .line 518
    :goto_9
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 519
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 520
    .line 521
    .line 522
    :goto_a
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 523
    move-result-object v2

    .line 524
    monitor-enter v2

    .line 525
    .line 526
    .line 527
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 528
    .line 529
    .line 530
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 531
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 532
    throw v0

    .line 533
    :catchall_5
    move-exception v0

    .line 534
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 535
    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$EglHelper;->finish()V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lio/agora/rtc/video/GLTextureView$GLThread;)V

    .line 20
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$EglHelper;->destroySurface()V

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->readyToDraw()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public getRenderMode()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    .line 7
    :try_start_0
    iget v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderMode:I

    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v1
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    :try_start_0
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestPaused:Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    :goto_0
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw v1
.end method

.method public onResume()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :try_start_0
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestPaused:Z

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    iput-boolean v2, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderComplete:Z

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 21
    .line 22
    :goto_0
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v1
.end method

.method public onWindowResize(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    .line 7
    :try_start_0
    iput p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mWidth:I

    .line 8
    .line 9
    iput p2, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHeight:I

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mSizeChanged:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderComplete:Z

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 25
    .line 26
    :goto_0
    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderComplete:Z

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->ableToDraw()Z

    .line 40
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "r must not be null"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public requestExitAndWait()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    :try_start_0
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mShouldExit:Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    :goto_0
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    .line 32
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    :try_start_0
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public run()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "GLThread "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :catch_0
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->threadExiting(Lio/agora/rtc/video/GLTextureView$GLThread;)V

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->threadExiting(Lio/agora/rtc/video/GLTextureView$GLThread;)V

    .line 44
    throw v0

    .line 45
    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMode"
        }
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    .line 12
    :try_start_0
    iput p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderMode:I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "renderMode"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public surfaceCreated()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    :try_start_0
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    :goto_0
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :try_start_0
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    :goto_0
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw v1
.end method
