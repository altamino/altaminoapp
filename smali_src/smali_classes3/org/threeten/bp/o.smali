.class final Lorg/threeten/bp/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final DURATION_TYPE:B = 0x1t

.field static final INSTANT_TYPE:B = 0x2t

.field static final LOCAL_DATE_TIME_TYPE:B = 0x4t

.field static final LOCAL_DATE_TYPE:B = 0x3t

.field static final LOCAL_TIME_TYPE:B = 0x5t

.field static final MONTH_DAY_TYPE:B = 0x40t

.field static final OFFSET_DATE_TIME_TYPE:B = 0x45t

.field static final OFFSET_TIME_TYPE:B = 0x42t

.field static final YEAR_MONTH_TYPE:B = 0x44t

.field static final YEAR_TYPE:B = 0x43t

.field static final ZONED_DATE_TIME_TYPE:B = 0x6t

.field static final ZONE_OFFSET_TYPE:B = 0x8t

.field static final ZONE_REGION_TYPE:B = 0x7t

.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/threeten/bp/o;->type:B

    iput-object p2, p0, Lorg/threeten/bp/o;->object:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p0}, Lorg/threeten/bp/o;->b(BLjava/io/DataInput;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static b(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x40

    .line 3
    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    packed-switch p0, :pswitch_data_1

    .line 11
    .line 12
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 13
    .line 14
    const-string p1, "Unknown serialized type"

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0

    .line 19
    .line 20
    .line 21
    :pswitch_0
    invoke-static {p1}, Lorg/threeten/bp/l;->v(Ljava/io/DataInput;)Lorg/threeten/bp/l;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    .line 25
    .line 26
    :pswitch_1
    invoke-static {p1}, Lorg/threeten/bp/q;->w(Ljava/io/DataInput;)Lorg/threeten/bp/q;

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    .line 30
    .line 31
    :pswitch_2
    invoke-static {p1}, Lorg/threeten/bp/p;->t(Ljava/io/DataInput;)Lorg/threeten/bp/p;

    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    .line 35
    .line 36
    :pswitch_3
    invoke-static {p1}, Lorg/threeten/bp/m;->t(Ljava/io/DataInput;)Lorg/threeten/bp/m;

    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    .line 40
    .line 41
    :pswitch_4
    invoke-static {p1}, Lorg/threeten/bp/s;->A(Ljava/io/DataInput;)Lorg/threeten/bp/s;

    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    .line 45
    .line 46
    :pswitch_5
    invoke-static {p1}, Lorg/threeten/bp/t;->u(Ljava/io/DataInput;)Lorg/threeten/bp/r;

    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    .line 50
    .line 51
    :pswitch_6
    invoke-static {p1}, Lorg/threeten/bp/u;->O(Ljava/io/DataInput;)Lorg/threeten/bp/u;

    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    .line 55
    .line 56
    :pswitch_7
    invoke-static {p1}, Lorg/threeten/bp/i;->F(Ljava/io/DataInput;)Lorg/threeten/bp/i;

    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    .line 60
    .line 61
    :pswitch_8
    invoke-static {p1}, Lorg/threeten/bp/h;->S(Ljava/io/DataInput;)Lorg/threeten/bp/h;

    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    .line 65
    .line 66
    :pswitch_9
    invoke-static {p1}, Lorg/threeten/bp/g;->Z(Ljava/io/DataInput;)Lorg/threeten/bp/g;

    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    .line 70
    .line 71
    :pswitch_a
    invoke-static {p1}, Lorg/threeten/bp/f;->A(Ljava/io/DataInput;)Lorg/threeten/bp/f;

    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    .line 75
    .line 76
    :pswitch_b
    invoke-static {p1}, Lorg/threeten/bp/e;->h(Ljava/io/DataInput;)Lorg/threeten/bp/e;

    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-static {p1}, Lorg/threeten/bp/k;->s(Ljava/io/DataInput;)Lorg/threeten/bp/k;

    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    nop

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static c(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 4
    .line 5
    const/16 v0, 0x40

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    packed-switch p0, :pswitch_data_1

    .line 14
    .line 15
    new-instance p0, Ljava/io/InvalidClassException;

    .line 16
    .line 17
    const-string p1, "Unknown serialized type"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 22
    .line 23
    :pswitch_0
    check-cast p1, Lorg/threeten/bp/l;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lorg/threeten/bp/l;->D(Ljava/io/DataOutput;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :pswitch_1
    check-cast p1, Lorg/threeten/bp/q;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lorg/threeten/bp/q;->C(Ljava/io/DataOutput;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :pswitch_2
    check-cast p1, Lorg/threeten/bp/p;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lorg/threeten/bp/p;->w(Ljava/io/DataOutput;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :pswitch_3
    check-cast p1, Lorg/threeten/bp/m;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lorg/threeten/bp/m;->y(Ljava/io/DataOutput;)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :pswitch_4
    check-cast p1, Lorg/threeten/bp/s;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lorg/threeten/bp/s;->D(Ljava/io/DataOutput;)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :pswitch_5
    check-cast p1, Lorg/threeten/bp/t;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lorg/threeten/bp/t;->v(Ljava/io/DataOutput;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :pswitch_6
    check-cast p1, Lorg/threeten/bp/u;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lorg/threeten/bp/u;->X(Ljava/io/DataOutput;)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :pswitch_7
    check-cast p1, Lorg/threeten/bp/i;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lorg/threeten/bp/i;->O(Ljava/io/DataOutput;)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :pswitch_8
    check-cast p1, Lorg/threeten/bp/h;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lorg/threeten/bp/h;->X(Ljava/io/DataOutput;)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :pswitch_9
    check-cast p1, Lorg/threeten/bp/g;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lorg/threeten/bp/g;->h0(Ljava/io/DataOutput;)V

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :pswitch_a
    check-cast p1, Lorg/threeten/bp/f;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lorg/threeten/bp/f;->E(Ljava/io/DataOutput;)V

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :pswitch_b
    check-cast p1, Lorg/threeten/bp/e;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lorg/threeten/bp/e;->i(Ljava/io/DataOutput;)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_0
    check-cast p1, Lorg/threeten/bp/k;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lorg/threeten/bp/k;->t(Ljava/io/DataOutput;)V

    .line 99
    :goto_0
    return-void

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
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/o;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 4
    move-result v0

    .line 5
    .line 6
    iput-byte v0, p0, Lorg/threeten/bp/o;->type:B

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lorg/threeten/bp/o;->b(BLjava/io/DataInput;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lorg/threeten/bp/o;->object:Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-byte v0, p0, Lorg/threeten/bp/o;->type:B

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/o;->object:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lorg/threeten/bp/o;->c(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 8
    return-void
.end method
