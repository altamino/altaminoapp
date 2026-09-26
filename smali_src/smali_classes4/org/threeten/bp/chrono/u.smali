.class final Lorg/threeten/bp/chrono/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final CHRONO_LOCALDATETIME_TYPE:B = 0xct

.field static final CHRONO_TYPE:B = 0xbt

.field static final CHRONO_ZONEDDATETIME_TYPE:B = 0xdt

.field static final HIJRAH_DATE_TYPE:B = 0x3t

.field static final HIJRAH_ERA_TYPE:B = 0x4t

.field static final JAPANESE_DATE_TYPE:B = 0x1t

.field static final JAPANESE_ERA_TYPE:B = 0x2t

.field static final MINGUO_DATE_TYPE:B = 0x5t

.field static final MINGUO_ERA_TYPE:B = 0x6t

.field static final THAIBUDDHIST_DATE_TYPE:B = 0x7t

.field static final THAIBUDDHIST_ERA_TYPE:B = 0x8t

.field private static final serialVersionUID:J = 0x6d0b833274ca0096L


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

    iput-byte p1, p0, Lorg/threeten/bp/chrono/u;->type:B

    iput-object p2, p0, Lorg/threeten/bp/chrono/u;->object:Ljava/lang/Object;

    return-void
.end method

.method private static a(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    :pswitch_0
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 6
    .line 7
    const-string p1, "Unknown serialized type"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p0

    .line 12
    .line 13
    .line 14
    :pswitch_1
    invoke-static {p1}, Lorg/threeten/bp/chrono/g;->E(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/f;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    .line 18
    .line 19
    :pswitch_2
    invoke-static {p1}, Lorg/threeten/bp/chrono/d;->I(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/c;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    .line 23
    .line 24
    :pswitch_3
    invoke-static {p1}, Lorg/threeten/bp/chrono/h;->o(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/h;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    .line 28
    .line 29
    :pswitch_4
    invoke-static {p1}, Lorg/threeten/bp/chrono/x;->n(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/x;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    .line 33
    .line 34
    :pswitch_5
    invoke-static {p1}, Lorg/threeten/bp/chrono/w;->K(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/b;

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    .line 38
    .line 39
    :pswitch_6
    invoke-static {p1}, Lorg/threeten/bp/chrono/t;->n(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/t;

    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    .line 43
    .line 44
    :pswitch_7
    invoke-static {p1}, Lorg/threeten/bp/chrono/s;->K(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/b;

    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    .line 48
    .line 49
    :pswitch_8
    invoke-static {p1}, Lorg/threeten/bp/chrono/l;->o(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/l;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    .line 53
    .line 54
    :pswitch_9
    invoke-static {p1}, Lorg/threeten/bp/chrono/k;->m0(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/b;

    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    .line 58
    .line 59
    :pswitch_a
    invoke-static {p1}, Lorg/threeten/bp/chrono/q;->r(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/q;

    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    .line 63
    .line 64
    :pswitch_b
    invoke-static {p1}, Lorg/threeten/bp/chrono/p;->K(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/b;

    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
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
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static b(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .locals 0
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
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    :pswitch_0
    new-instance p0, Ljava/io/InvalidClassException;

    .line 9
    .line 10
    const-string p1, "Unknown serialized type"

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p0

    .line 15
    .line 16
    :pswitch_1
    check-cast p1, Lorg/threeten/bp/chrono/g;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/g;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :pswitch_2
    check-cast p1, Lorg/threeten/bp/chrono/d;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :pswitch_3
    check-cast p1, Lorg/threeten/bp/chrono/h;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/h;->q(Ljava/io/DataOutput;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :pswitch_4
    check-cast p1, Lorg/threeten/bp/chrono/x;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/x;->o(Ljava/io/DataOutput;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :pswitch_5
    check-cast p1, Lorg/threeten/bp/chrono/w;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/w;->O(Ljava/io/DataOutput;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :pswitch_6
    check-cast p1, Lorg/threeten/bp/chrono/t;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/t;->o(Ljava/io/DataOutput;)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :pswitch_7
    check-cast p1, Lorg/threeten/bp/chrono/s;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/s;->O(Ljava/io/DataOutput;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :pswitch_8
    check-cast p1, Lorg/threeten/bp/chrono/l;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/l;->p(Ljava/io/DataOutput;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :pswitch_9
    check-cast p1, Lorg/threeten/bp/chrono/k;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/k;->q0(Ljava/io/DataOutput;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :pswitch_a
    check-cast p1, Lorg/threeten/bp/chrono/q;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/q;->u(Ljava/io/DataOutput;)V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :pswitch_b
    check-cast p1, Lorg/threeten/bp/chrono/p;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/p;->Q(Ljava/io/DataOutput;)V

    .line 80
    :goto_0
    return-void

    .line 81
    .line 82
    .line 83
    .line 84
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
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
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
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/chrono/u;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
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
    iput-byte v0, p0, Lorg/threeten/bp/chrono/u;->type:B

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lorg/threeten/bp/chrono/u;->a(BLjava/io/ObjectInput;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lorg/threeten/bp/chrono/u;->object:Ljava/lang/Object;

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
    iget-byte v0, p0, Lorg/threeten/bp/chrono/u;->type:B

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/chrono/u;->object:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lorg/threeten/bp/chrono/u;->b(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    .line 8
    return-void
.end method
