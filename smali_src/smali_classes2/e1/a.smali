.class public Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final API_NOT_CONNECTED:I = 0xb

.field public static final AUTHCODE_EXPECTED:I = 0x3ec

.field public static final AUTHCODE_INVALID:I = 0x3ef

.field public static final AUTHCODE_RECYCLE:I = 0x3ee

.field public static final AUTHENTICATE_FAIL:I = 0x3ea

.field public static final AUTHENTICATE_SUCCESS:I = 0x3e9

.field public static final CANCELED:I = 0x6

.field public static final CAPABILITY_EXCEPTION:I = 0x3f0

.field public static final CLIENT_UNKNOWN:I = 0xc

.field public static final CONNECTED:I = 0x1

.field public static final CONNECTED_SUCCESS_UNBIND:I = 0x5

.field public static final CONNECTING:I = 0x2

.field public static final CONNECT_FAILED:I = 0x3

.field public static final DISCONNECT:I = 0x4

.field public static final INTERNAL_ERROR:I = 0x7

.field public static final INTERRUPTED:I = 0x9

.field public static final RECONNECTING:I = 0xe

.field public static final SERVICE_ABNORMAL_EXIT:I = 0xd

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TASK_NULL:I = 0x8

.field public static final TIMEOUT:I = 0xa

.field public static final TIME_EXPIRED:I = 0x3eb

.field public static final VERSION_INCOMPATIBLE:I = 0x3ed


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    packed-switch p0, :pswitch_data_1

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const/16 v1, 0x20

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "unknown status code: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    .line 29
    :pswitch_0
    const-string p0, "CAPABILITY_EXCEPTION"

    .line 30
    return-object p0

    .line 31
    .line 32
    :pswitch_1
    const-string p0, "AUTHCODE_INVALID"

    .line 33
    return-object p0

    .line 34
    .line 35
    :pswitch_2
    const-string p0, "AUTHCODE_RECYCLE"

    .line 36
    return-object p0

    .line 37
    .line 38
    :pswitch_3
    const-string p0, "VERSION_INCOMPATIBLE"

    .line 39
    return-object p0

    .line 40
    .line 41
    :pswitch_4
    const-string p0, "AUTHCODE_EXPECTED"

    .line 42
    return-object p0

    .line 43
    .line 44
    :pswitch_5
    const-string p0, "TIME_EXPIRED"

    .line 45
    return-object p0

    .line 46
    .line 47
    :pswitch_6
    const-string p0, "AUTHENTICATE_FAIL"

    .line 48
    return-object p0

    .line 49
    .line 50
    :pswitch_7
    const-string p0, "AUTHENTICATE_SUCCESS"

    .line 51
    return-object p0

    .line 52
    .line 53
    :pswitch_8
    const-string p0, "RECONNECTING"

    .line 54
    return-object p0

    .line 55
    .line 56
    :pswitch_9
    const-string p0, "SERVICE_ABNORMAL_EXIT"

    .line 57
    return-object p0

    .line 58
    .line 59
    :pswitch_a
    const-string p0, "CLIENT_UNKNOWN"

    .line 60
    return-object p0

    .line 61
    .line 62
    :pswitch_b
    const-string p0, "API_NOT_CONNECTED"

    .line 63
    return-object p0

    .line 64
    .line 65
    :pswitch_c
    const-string p0, "TIMEOUT"

    .line 66
    return-object p0

    .line 67
    .line 68
    :pswitch_d
    const-string p0, "INTERRUPTED"

    .line 69
    return-object p0

    .line 70
    .line 71
    :pswitch_e
    const-string p0, "TASK_NULL"

    .line 72
    return-object p0

    .line 73
    .line 74
    :pswitch_f
    const-string p0, "INTERNAL_ERROR"

    .line 75
    return-object p0

    .line 76
    .line 77
    :pswitch_10
    const-string p0, "CANCELED"

    .line 78
    return-object p0

    .line 79
    .line 80
    :pswitch_11
    const-string p0, "SUCCESS_UNBIND"

    .line 81
    return-object p0

    .line 82
    .line 83
    :pswitch_12
    const-string p0, "DISCONNECT"

    .line 84
    return-object p0

    .line 85
    .line 86
    :pswitch_13
    const-string p0, "CONNECT_FAILED"

    .line 87
    return-object p0

    .line 88
    .line 89
    :pswitch_14
    const-string p0, "CONNECTING"

    .line 90
    return-object p0

    .line 91
    .line 92
    :pswitch_15
    const-string p0, "CONNECTED"

    .line 93
    return-object p0

    .line 94
    .line 95
    :pswitch_16
    const-string p0, "SUCCESS"

    .line 96
    return-object p0

    .line 97
    .line 98
    :pswitch_17
    const-string p0, "SUCCESS_CACHE"

    .line 99
    return-object p0

    .line 100
    nop

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
