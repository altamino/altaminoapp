.class Lcom/narvii/app/incubator/IncubatorApplication$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/incubator/IncubatorApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/incubator/IncubatorApplication;


# direct methods
.method constructor <init>(Lcom/narvii/app/incubator/IncubatorApplication;Landroid/os/Looper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$3;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3
    .line 4
    iget v1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const-wide/16 v2, 0x64

    .line 7
    .line 8
    const/16 v4, 0xb

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    .line 12
    if-ne v1, v6, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    .line 21
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    const-string v7, "\'s community context not found"

    .line 24
    .line 25
    const-string v8, "x"

    .line 26
    .line 27
    if-ne v1, v4, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication$3;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/app/incubator/IncubatorApplication;->n(Lcom/narvii/app/incubator/IncubatorApplication;)Landroid/util/SparseIntArray;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 37
    move-result v1

    .line 38
    .line 39
    iget-object v4, p0, Lcom/narvii/app/incubator/IncubatorApplication$3;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Lcom/narvii/app/incubator/IncubatorApplication;->n(Lcom/narvii/app/incubator/IncubatorApplication;)Landroid/util/SparseIntArray;

    .line 43
    move-result-object v4

    .line 44
    sub-int/2addr v1, v6

    .line 45
    .line 46
    .line 47
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result v9

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v0, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    .line 53
    if-gtz v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication$3;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lcom/narvii/app/incubator/IncubatorApplication;->m(Lcom/narvii/app/incubator/IncubatorApplication;)Ljava/util/HashMap;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    check-cast v1, Lcom/narvii/services/incubator/CommunityContext;

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_1
    iget-object v4, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/narvii/services/ServiceManager;->stop()V

    .line 99
    .line 100
    iget-object v1, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/narvii/services/ServiceManager;->destroy()V

    .line 104
    .line 105
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication$3;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lcom/narvii/app/incubator/IncubatorApplication;->m(Lcom/narvii/app/incubator/IncubatorApplication;)Ljava/util/HashMap;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    :cond_2
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 119
    const/4 v4, 0x2

    .line 120
    .line 121
    const/16 v9, 0xc

    .line 122
    .line 123
    if-ne v1, v4, :cond_3

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v9, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    .line 132
    :cond_3
    iget p1, p1, Landroid/os/Message;->what:I

    .line 133
    .line 134
    if-ne p1, v9, :cond_5

    .line 135
    .line 136
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$3;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->k(Lcom/narvii/app/incubator/IncubatorApplication;)I

    .line 140
    move-result p1

    .line 141
    .line 142
    if-ne p1, v0, :cond_5

    .line 143
    .line 144
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$3;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->l(Lcom/narvii/app/incubator/IncubatorApplication;)I

    .line 148
    move-result v1

    .line 149
    sub-int/2addr v1, v6

    .line 150
    .line 151
    .line 152
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 153
    move-result v1

    .line 154
    .line 155
    .line 156
    invoke-static {p1, v1}, Lcom/narvii/app/incubator/IncubatorApplication;->p(Lcom/narvii/app/incubator/IncubatorApplication;I)V

    .line 157
    .line 158
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$3;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 159
    .line 160
    .line 161
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->l(Lcom/narvii/app/incubator/IncubatorApplication;)I

    .line 162
    move-result p1

    .line 163
    .line 164
    if-nez p1, :cond_5

    .line 165
    .line 166
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$3;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 167
    .line 168
    .line 169
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->m(Lcom/narvii/app/incubator/IncubatorApplication;)Ljava/util/HashMap;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    check-cast p1, Lcom/narvii/services/incubator/CommunityContext;

    .line 181
    .line 182
    if-nez p1, :cond_4

    .line 183
    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    .line 202
    .line 203
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 204
    goto :goto_1

    .line 205
    .line 206
    :cond_4
    iget-object p1, p1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/narvii/services/ServiceManager;->pause()V

    .line 210
    .line 211
    :goto_1
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$3;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 212
    .line 213
    .line 214
    invoke-static {p1, v5}, Lcom/narvii/app/incubator/IncubatorApplication;->o(Lcom/narvii/app/incubator/IncubatorApplication;I)V

    .line 215
    :cond_5
    return-void
.end method
