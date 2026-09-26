.class public abstract Lcom/narvii/logging/PageViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field draftId:Ljava/lang/String;

.field fullScreen:Z

.field lastResumePageName:Ljava/lang/String;

.field lastResumeTime:J

.field nvContext:Lcom/narvii/app/NVContext;

.field page:Lcom/narvii/logging/Page;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/logging/PageViewDelegate;->fullScreen:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/logging/PageViewDelegate;->page:Lcom/narvii/logging/Page;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method protected abstract completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
.end method

.method protected abstract logPageViewEvent()Z
.end method

.method public sendPageViewEvent(Z)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/PageViewDelegate;->page:Lcom/narvii/logging/Page;

    .line 3
    .line 4
    if-eqz v0, :cond_e

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/logging/PageViewDelegate;->lastResumePageName:Ljava/lang/String;

    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/logging/PageViewDelegate;->logPageViewEvent()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v2, "please add name for "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-static {}, Lcom/narvii/post/StoryEditSessionManager;->getInstance()Lcom/narvii/post/StoryEditSessionManager;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, p1}, Lcom/narvii/post/StoryEditSessionManager;->onPageActiveChanged(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/logging/PageViewDelegate;->logPageViewEvent()Z

    .line 73
    move-result v1

    .line 74
    .line 75
    if-eqz v1, :cond_7

    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/narvii/logging/PageViewDelegate;->fullScreen:Z

    .line 78
    .line 79
    if-eqz v1, :cond_7

    .line 80
    .line 81
    if-nez p1, :cond_6

    .line 82
    .line 83
    sget-object v1, Lcom/narvii/logging/LogUtils;->lastPauseContext:Ljava/lang/ref/WeakReference;

    .line 84
    .line 85
    if-nez v1, :cond_4

    .line 86
    const/4 v1, 0x0

    .line 87
    goto :goto_0

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    check-cast v1, Lcom/narvii/app/NVContext;

    .line 94
    .line 95
    :goto_0
    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v2}, Lcom/narvii/logging/LogUtils;->isParentContext(Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)Z

    .line 99
    move-result v1

    .line 100
    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 109
    .line 110
    sput-object v1, Lcom/narvii/logging/LogUtils;->lastPauseContext:Ljava/lang/ref/WeakReference;

    .line 111
    .line 112
    :cond_5
    sget-object v1, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    .line 115
    .line 116
    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :cond_6
    sget-object v1, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    .line 123
    .line 124
    .line 125
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 131
    move-result-wide v1

    .line 132
    .line 133
    iput-wide v1, p0, Lcom/narvii/logging/PageViewDelegate;->lastResumeTime:J

    .line 134
    .line 135
    :cond_8
    if-eqz v0, :cond_e

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/narvii/logging/PageViewDelegate;->logPageViewEvent()Z

    .line 139
    move-result v1

    .line 140
    .line 141
    if-eqz v1, :cond_e

    .line 142
    .line 143
    iget-object v1, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->pageViewEvent()Lcom/narvii/logging/LogEvent$Builder;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    sget-object v2, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    if-eqz p1, :cond_9

    .line 160
    .line 161
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageViewLaunch:Lcom/narvii/logging/ActSemantic;

    .line 162
    goto :goto_2

    .line 163
    .line 164
    :cond_9
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageViewQuit:Lcom/narvii/logging/ActSemantic;

    .line 165
    .line 166
    .line 167
    :goto_2
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    if-nez p1, :cond_b

    .line 171
    .line 172
    iget-wide v2, p0, Lcom/narvii/logging/PageViewDelegate;->lastResumeTime:J

    .line 173
    .line 174
    const-wide/16 v4, 0x0

    .line 175
    .line 176
    cmp-long v0, v2, v4

    .line 177
    .line 178
    if-nez v0, :cond_a

    .line 179
    goto :goto_3

    .line 180
    .line 181
    .line 182
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 183
    move-result-wide v2

    .line 184
    .line 185
    iget-wide v4, p0, Lcom/narvii/logging/PageViewDelegate;->lastResumeTime:J

    .line 186
    .line 187
    sub-long v4, v2, v4

    .line 188
    .line 189
    .line 190
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    const-string v2, "duration"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 197
    goto :goto_4

    .line 198
    .line 199
    :cond_b
    iput-object v0, p0, Lcom/narvii/logging/PageViewDelegate;->lastResumePageName:Ljava/lang/String;

    .line 200
    .line 201
    :goto_4
    iget-object v0, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    .line 202
    .line 203
    if-eqz v0, :cond_c

    .line 204
    .line 205
    .line 206
    invoke-static {}, Lcom/narvii/post/StoryEditSessionManager;->getInstance()Lcom/narvii/post/StoryEditSessionManager;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2}, Lcom/narvii/post/StoryEditSessionManager;->getSessionId(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    const-string v2, "editSessionId"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    const-string v2, "storyDraftId"

    .line 222
    .line 223
    iget-object v3, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 227
    .line 228
    .line 229
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/logging/PageViewDelegate;->sendPageViewEventToThirdParty()Z

    .line 230
    move-result v0

    .line 231
    .line 232
    if-eqz v0, :cond_d

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    .line 236
    .line 237
    .line 238
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/narvii/logging/PageViewDelegate;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 242
    :cond_e
    :goto_5
    return-void
.end method

.method protected abstract sendPageViewEventToThirdParty()Z
.end method

.method public setDraftId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/logging/PageViewDelegate;->fullScreen:Z

    return-void
.end method

.method public setNvContext(Lcom/narvii/app/NVContext;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method
