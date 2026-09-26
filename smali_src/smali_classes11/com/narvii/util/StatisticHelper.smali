.class public Lcom/narvii/util/StatisticHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    iget p0, p0, Lcom/narvii/model/ChatThread;->type:I

    .line 5
    .line 6
    if-eqz p0, :cond_2

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    const/4 v0, 0x2

    .line 11
    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    const-string p0, "Public Chat"

    .line 16
    return-object p0

    .line 17
    .line 18
    :cond_1
    const-string p0, "Group Chat"

    .line 19
    return-object p0

    .line 20
    .line 21
    :cond_2
    const-string p0, "1-1"

    .line 22
    return-object p0

    .line 23
    :cond_3
    :goto_0
    return-object p1
.end method

.method public static getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 7
    move-result p2

    .line 8
    .line 9
    :goto_0
    if-eqz p2, :cond_10

    .line 10
    const/4 p0, 0x1

    .line 11
    .line 12
    if-eq p2, p0, :cond_e

    .line 13
    const/4 p0, 0x2

    .line 14
    .line 15
    if-eq p2, p0, :cond_c

    .line 16
    const/4 p0, 0x3

    .line 17
    .line 18
    if-eq p2, p0, :cond_b

    .line 19
    const/4 p0, 0x7

    .line 20
    .line 21
    if-eq p2, p0, :cond_a

    .line 22
    .line 23
    const/16 p0, 0xc

    .line 24
    .line 25
    if-eq p2, p0, :cond_9

    .line 26
    .line 27
    const/16 p0, 0x10

    .line 28
    .line 29
    if-eq p2, p0, :cond_8

    .line 30
    .line 31
    const/16 p0, 0x17

    .line 32
    .line 33
    if-eq p2, p0, :cond_7

    .line 34
    .line 35
    const/16 p0, 0x6a

    .line 36
    .line 37
    if-eq p2, p0, :cond_6

    .line 38
    .line 39
    const/16 p0, 0x6d

    .line 40
    .line 41
    if-eq p2, p0, :cond_5

    .line 42
    .line 43
    const/16 p0, 0x74

    .line 44
    .line 45
    if-eq p2, p0, :cond_4

    .line 46
    .line 47
    const/16 p0, 0x7a

    .line 48
    .line 49
    if-eq p2, p0, :cond_3

    .line 50
    .line 51
    const/16 p0, 0x83

    .line 52
    .line 53
    if-eq p2, p0, :cond_2

    .line 54
    .line 55
    const/16 p0, 0x71

    .line 56
    .line 57
    if-eq p2, p0, :cond_1

    .line 58
    .line 59
    const/16 p0, 0x72

    .line 60
    .line 61
    if-eq p2, p0, :cond_1

    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0

    .line 64
    .line 65
    :cond_1
    const-string p0, "sticker"

    .line 66
    return-object p0

    .line 67
    .line 68
    :cond_2
    const-string p0, "global announcement"

    .line 69
    return-object p0

    .line 70
    .line 71
    :cond_3
    const-string p0, "avatar frame"

    .line 72
    return-object p0

    .line 73
    .line 74
    :cond_4
    const-string p0, "chat bubble"

    .line 75
    return-object p0

    .line 76
    .line 77
    :cond_5
    const-string p0, "shared folder media"

    .line 78
    return-object p0

    .line 79
    .line 80
    :cond_6
    const-string p0, "album"

    .line 81
    return-object p0

    .line 82
    .line 83
    :cond_7
    const-string p0, "quiz question"

    .line 84
    return-object p0

    .line 85
    .line 86
    :cond_8
    const-string p0, "community"

    .line 87
    return-object p0

    .line 88
    .line 89
    :cond_9
    const-string p0, "chat"

    .line 90
    return-object p0

    .line 91
    .line 92
    :cond_a
    const-string p0, "chat message"

    .line 93
    return-object p0

    .line 94
    .line 95
    :cond_b
    const-string p0, "comment"

    .line 96
    return-object p0

    .line 97
    .line 98
    :cond_c
    instance-of p0, p1, Lcom/narvii/model/Item;

    .line 99
    .line 100
    if-eqz p0, :cond_d

    .line 101
    .line 102
    check-cast p1, Lcom/narvii/model/Item;

    .line 103
    .line 104
    iget-object p0, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 105
    .line 106
    if-eqz p0, :cond_d

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/model/User;->isSystem()Z

    .line 110
    move-result p0

    .line 111
    .line 112
    if-eqz p0, :cond_d

    .line 113
    .line 114
    const-string p0, "official favorite"

    .line 115
    return-object p0

    .line 116
    .line 117
    .line 118
    :cond_d
    const-string/jumbo p0, "wiki"

    .line 119
    return-object p0

    .line 120
    .line 121
    :cond_e
    instance-of p0, p1, Lcom/narvii/model/Blog;

    .line 122
    .line 123
    if-eqz p0, :cond_f

    .line 124
    .line 125
    check-cast p1, Lcom/narvii/model/Blog;

    .line 126
    .line 127
    iget p0, p1, Lcom/narvii/model/Blog;->type:I

    .line 128
    .line 129
    .line 130
    packed-switch p0, :pswitch_data_0

    .line 131
    goto :goto_1

    .line 132
    .line 133
    :pswitch_0
    const-string p0, "external content"

    .line 134
    return-object p0

    .line 135
    .line 136
    :pswitch_1
    const-string p0, "image"

    .line 137
    return-object p0

    .line 138
    .line 139
    :pswitch_2
    const-string p0, "quiz"

    .line 140
    return-object p0

    .line 141
    .line 142
    :pswitch_3
    const-string p0, "link"

    .line 143
    return-object p0

    .line 144
    .line 145
    :pswitch_4
    const-string p0, "poll"

    .line 146
    return-object p0

    .line 147
    .line 148
    :pswitch_5
    const-string p0, "question"

    .line 149
    return-object p0

    .line 150
    .line 151
    :pswitch_6
    const-string p0, "repost"

    .line 152
    return-object p0

    .line 153
    .line 154
    :cond_f
    :goto_1
    const-string p0, "blog"

    .line 155
    return-object p0

    .line 156
    .line 157
    :cond_10
    const-string p0, "profile"

    .line 158
    return-object p0

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
