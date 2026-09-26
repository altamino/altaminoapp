.class Lcom/ss/android/tea/common/applog/b$g;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/tea/common/applog/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/tea/common/applog/b;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/ss/android/tea/common/applog/b;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 3
    .line 4
    const-string p1, "ActionReaper"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/ss/android/tea/common/applog/b$g;->b:Z

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/b;->D(Lcom/ss/android/tea/common/applog/b;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/b;->c0(Lcom/ss/android/tea/common/applog/b;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "AppLog"

    .line 16
    .line 17
    const-string v1, "can not setup LogReaper"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/ss/android/tea/common/applog/b;->P0()V

    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/ss/android/tea/common/applog/b;->l:Ljava/util/LinkedList;

    .line 31
    monitor-enter v0

    .line 32
    .line 33
    :try_start_0
    sget-boolean v1, Lcom/ss/android/tea/common/applog/b;->b:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    monitor-exit v0

    .line 37
    goto :goto_3

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/ss/android/tea/common/applog/b;->l:Ljava/util/LinkedList;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 48
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    if-eqz v1, :cond_8

    .line 51
    .line 52
    :try_start_1
    sget-boolean v1, Ln6/b;->a:Z

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/ss/android/tea/common/applog/b$g;->b:Z

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lcom/ss/android/tea/common/applog/b;->h0(Lcom/ss/android/tea/common/applog/b;)Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_2
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/ss/android/tea/common/applog/b;->l:Ljava/util/LinkedList;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 78
    .line 79
    iget-object v2, v1, Lcom/ss/android/tea/common/applog/b;->l:Ljava/util/LinkedList;

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lcom/ss/android/tea/common/applog/b;->i0(Lcom/ss/android/tea/common/applog/b;)J

    .line 83
    move-result-wide v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_4
    iget-boolean v1, p0, Lcom/ss/android/tea/common/applog/b$g;->b:Z

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 94
    .line 95
    iget-object v2, v1, Lcom/ss/android/tea/common/applog/b;->l:Ljava/util/LinkedList;

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Lcom/ss/android/tea/common/applog/b;->i0(Lcom/ss/android/tea/common/applog/b;)J

    .line 99
    move-result-wide v3

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 103
    goto :goto_2

    .line 104
    .line 105
    :cond_5
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/ss/android/tea/common/applog/b;->l:Ljava/util/LinkedList;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    :catch_0
    :goto_2
    :try_start_2
    sget-boolean v1, Lcom/ss/android/tea/common/applog/b;->b:Z

    .line 113
    .line 114
    if-eqz v1, :cond_6

    .line 115
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    :goto_3
    const-string v0, "AppLog"

    .line 118
    .line 119
    const-string v1, "ActionReadper quit"

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 124
    .line 125
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 126
    .line 127
    iget-object v1, v1, Lcom/ss/android/tea/common/applog/b;->l:Ljava/util/LinkedList;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 131
    move-result v1

    .line 132
    .line 133
    if-nez v1, :cond_7

    .line 134
    .line 135
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/ss/android/tea/common/applog/b;->l:Ljava/util/LinkedList;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    check-cast v1, Lcom/ss/android/tea/common/applog/b$f;

    .line 144
    goto :goto_4

    .line 145
    :cond_7
    const/4 v1, 0x0

    .line 146
    goto :goto_4

    .line 147
    .line 148
    :cond_8
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 149
    .line 150
    iget-object v1, v1, Lcom/ss/android/tea/common/applog/b;->l:Ljava/util/LinkedList;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    check-cast v1, Lcom/ss/android/tea/common/applog/b$f;

    .line 157
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    const/4 v0, 0x0

    .line 159
    const/4 v2, 0x1

    .line 160
    .line 161
    if-eqz v1, :cond_9

    .line 162
    .line 163
    iget-object v3, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v1}, Lcom/ss/android/tea/common/applog/b;->Z(Lcom/ss/android/tea/common/applog/b$f;)V

    .line 167
    .line 168
    iput-boolean v2, p0, Lcom/ss/android/tea/common/applog/b$g;->b:Z

    .line 169
    goto :goto_5

    .line 170
    .line 171
    :cond_9
    iget-boolean v1, p0, Lcom/ss/android/tea/common/applog/b$g;->b:Z

    .line 172
    .line 173
    if-eqz v1, :cond_a

    .line 174
    .line 175
    iput-boolean v0, p0, Lcom/ss/android/tea/common/applog/b$g;->b:Z

    .line 176
    .line 177
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/ss/android/tea/common/applog/b;->P0()V

    .line 181
    .line 182
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/ss/android/tea/common/applog/b;->W0()V

    .line 186
    .line 187
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2, v0}, Lcom/ss/android/tea/common/applog/b;->R(ZZ)V

    .line 191
    .line 192
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b$g;->a:Lcom/ss/android/tea/common/applog/b;

    .line 193
    .line 194
    .line 195
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/b;->m0(Lcom/ss/android/tea/common/applog/b;)V

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    :goto_6
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    throw v1
.end method
