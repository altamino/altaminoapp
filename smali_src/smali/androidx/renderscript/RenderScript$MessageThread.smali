.class Landroidx/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageThread"
.end annotation


# static fields
.field static final RS_ERROR_FATAL_DEBUG:I = 0x800

.field static final RS_ERROR_FATAL_UNKNOWN:I = 0x1000

.field static final RS_MESSAGE_TO_CLIENT_ERROR:I = 0x3

.field static final RS_MESSAGE_TO_CLIENT_EXCEPTION:I = 0x1

.field static final RS_MESSAGE_TO_CLIENT_NONE:I = 0x0

.field static final RS_MESSAGE_TO_CLIENT_RESIZE:I = 0x2

.field static final RS_MESSAGE_TO_CLIENT_USER:I = 0x4


# instance fields
.field mAuxData:[I

.field mRS:Landroidx/renderscript/RenderScript;

.field mRun:Z


# direct methods
.method constructor <init>(Landroidx/renderscript/RenderScript;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "RSMessageThread"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/renderscript/RenderScript$MessageThread;->mRS:Landroidx/renderscript/RenderScript;

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/renderscript/RenderScript$MessageThread;->mRS:Landroidx/renderscript/RenderScript;

    .line 7
    .line 8
    iget-wide v2, v1, Landroidx/renderscript/RenderScript;->mContext:J

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroidx/renderscript/RenderScript;->nContextInitToClient(J)V

    .line 12
    .line 13
    :catch_0
    :goto_0
    iget-boolean v1, p0, Landroidx/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 14
    .line 15
    if-eqz v1, :cond_8

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    aput v1, v0, v1

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/renderscript/RenderScript$MessageThread;->mRS:Landroidx/renderscript/RenderScript;

    .line 21
    .line 22
    iget-wide v3, v2, Landroidx/renderscript/RenderScript;->mContext:J

    .line 23
    .line 24
    iget-object v5, p0, Landroidx/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v4, v5}, Landroidx/renderscript/RenderScript;->nContextPeekMessage(J[I)I

    .line 28
    move-result v2

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 31
    const/4 v4, 0x1

    .line 32
    .line 33
    aget v4, v3, v4

    .line 34
    .line 35
    aget v3, v3, v1

    .line 36
    const/4 v5, 0x4

    .line 37
    .line 38
    if-ne v2, v5, :cond_3

    .line 39
    .line 40
    shr-int/lit8 v1, v4, 0x2

    .line 41
    array-length v2, v0

    .line 42
    .line 43
    if-lt v1, v2, :cond_0

    .line 44
    .line 45
    add-int/lit8 v0, v4, 0x3

    .line 46
    .line 47
    shr-int/lit8 v0, v0, 0x2

    .line 48
    .line 49
    new-array v0, v0, [I

    .line 50
    .line 51
    :cond_0
    iget-object v1, p0, Landroidx/renderscript/RenderScript$MessageThread;->mRS:Landroidx/renderscript/RenderScript;

    .line 52
    .line 53
    iget-wide v6, v1, Landroidx/renderscript/RenderScript;->mContext:J

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v6, v7, v0}, Landroidx/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    .line 57
    move-result v1

    .line 58
    .line 59
    if-ne v1, v5, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/renderscript/RenderScript$MessageThread;->mRS:Landroidx/renderscript/RenderScript;

    .line 62
    .line 63
    iget-object v1, v1, Landroidx/renderscript/RenderScript;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iput-object v0, v1, Landroidx/renderscript/RenderScript$RSMessageHandler;->mData:[I

    .line 68
    .line 69
    iput v3, v1, Landroidx/renderscript/RenderScript$RSMessageHandler;->mID:I

    .line 70
    .line 71
    iput v4, v1, Landroidx/renderscript/RenderScript$RSMessageHandler;->mLength:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/renderscript/RenderScript$RSMessageHandler;->run()V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_1
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 78
    .line 79
    const-string v1, "Received a message from the script with no message handler installed."

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v0

    .line 84
    .line 85
    :cond_2
    new-instance v0, Landroidx/renderscript/RSDriverException;

    .line 86
    .line 87
    const-string v1, "Error processing message from RenderScript."

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 91
    throw v0

    .line 92
    :cond_3
    const/4 v4, 0x3

    .line 93
    .line 94
    if-ne v2, v4, :cond_7

    .line 95
    .line 96
    iget-object v1, p0, Landroidx/renderscript/RenderScript$MessageThread;->mRS:Landroidx/renderscript/RenderScript;

    .line 97
    .line 98
    iget-wide v4, v1, Landroidx/renderscript/RenderScript;->mContext:J

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v4, v5}, Landroidx/renderscript/RenderScript;->nContextGetErrorMessage(J)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    const/16 v2, 0x1000

    .line 105
    .line 106
    const-string v4, "RenderScript_jni"

    .line 107
    .line 108
    if-ge v3, v2, :cond_6

    .line 109
    .line 110
    const/16 v2, 0x800

    .line 111
    .line 112
    if-lt v3, v2, :cond_4

    .line 113
    .line 114
    iget-object v2, p0, Landroidx/renderscript/RenderScript$MessageThread;->mRS:Landroidx/renderscript/RenderScript;

    .line 115
    .line 116
    iget-object v5, v2, Landroidx/renderscript/RenderScript;->mContextType:Landroidx/renderscript/RenderScript$ContextType;

    .line 117
    .line 118
    sget-object v6, Landroidx/renderscript/RenderScript$ContextType;->DEBUG:Landroidx/renderscript/RenderScript$ContextType;

    .line 119
    .line 120
    if-ne v5, v6, :cond_6

    .line 121
    .line 122
    iget-object v2, v2, Landroidx/renderscript/RenderScript;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    .line 123
    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    :cond_4
    iget-object v2, p0, Landroidx/renderscript/RenderScript$MessageThread;->mRS:Landroidx/renderscript/RenderScript;

    .line 127
    .line 128
    iget-object v2, v2, Landroidx/renderscript/RenderScript;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    .line 129
    .line 130
    if-eqz v2, :cond_5

    .line 131
    .line 132
    iput-object v1, v2, Landroidx/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    .line 133
    .line 134
    iput v3, v2, Landroidx/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Landroidx/renderscript/RenderScript$RSErrorHandler;->run()V

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string/jumbo v3, "non fatal RS error, "

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v1

    .line 157
    .line 158
    .line 159
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    const-string v2, "fatal RS error, "

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    .line 184
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    const-string v4, "Fatal error "

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v3, ", details: "

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    .line 211
    invoke-direct {v0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 212
    throw v0

    .line 213
    .line 214
    :cond_7
    const-wide/16 v2, 0x1

    .line 215
    .line 216
    .line 217
    :try_start_0
    invoke-static {v2, v3, v1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    :cond_8
    return-void
.end method
