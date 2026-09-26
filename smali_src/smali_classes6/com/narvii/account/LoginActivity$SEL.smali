.class Lcom/narvii/account/LoginActivity$SEL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SEL"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/narvii/account/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/account/LoginActivity;Lcom/narvii/account/w;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/LoginActivity$SEL;-><init>(Lcom/narvii/account/LoginActivity;)V

    return-void
.end method

.method private copy([F)[F
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    const/4 v1, 0x0

    .line 5
    array-length v2, p1

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    return-object v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 3
    .line 4
    if-eqz v0, :cond_a

    .line 5
    array-length v0, v0

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-eq v0, v1, :cond_7

    .line 21
    const/4 v1, 0x4

    .line 22
    .line 23
    if-eq v0, v1, :cond_4

    .line 24
    const/4 v1, 0x5

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    const/4 v0, 0x0

    .line 28
    move-object v1, v0

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->lightMin:[F

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->lightMin:[F

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->lightMax:[F

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    .line 56
    move-result-object v1

    .line 57
    .line 58
    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->lightMax:[F

    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->lightMin:[F

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/account/LoginActivity;->lightMax:[F

    .line 65
    :goto_0
    move-object v6, v1

    .line 66
    move-object v1, v0

    .line 67
    move-object v0, v6

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_4
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->gyoMin:[F

    .line 73
    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    .line 80
    move-result-object v1

    .line 81
    .line 82
    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->gyoMin:[F

    .line 83
    .line 84
    :cond_5
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    .line 85
    .line 86
    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->gyoMax:[F

    .line 87
    .line 88
    if-nez v1, :cond_6

    .line 89
    .line 90
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    .line 94
    move-result-object v1

    .line 95
    .line 96
    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->gyoMax:[F

    .line 97
    .line 98
    :cond_6
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    .line 99
    .line 100
    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->gyoMin:[F

    .line 101
    .line 102
    iget-object v0, v0, Lcom/narvii/account/LoginActivity;->gyoMax:[F

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_7
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    .line 106
    .line 107
    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->accMin:[F

    .line 108
    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    .line 115
    move-result-object v1

    .line 116
    .line 117
    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->accMin:[F

    .line 118
    .line 119
    :cond_8
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    .line 120
    .line 121
    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->accMax:[F

    .line 122
    .line 123
    if-nez v1, :cond_9

    .line 124
    .line 125
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    .line 129
    move-result-object v1

    .line 130
    .line 131
    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->accMax:[F

    .line 132
    .line 133
    :cond_9
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    .line 134
    .line 135
    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->accMin:[F

    .line 136
    .line 137
    iget-object v0, v0, Lcom/narvii/account/LoginActivity;->accMax:[F

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :goto_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 141
    array-length v2, v2

    .line 142
    array-length v3, v0

    .line 143
    .line 144
    .line 145
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 146
    move-result v2

    .line 147
    const/4 v3, 0x0

    .line 148
    .line 149
    :goto_2
    if-ge v3, v2, :cond_a

    .line 150
    .line 151
    aget v4, v0, v3

    .line 152
    .line 153
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 154
    .line 155
    aget v5, v5, v3

    .line 156
    .line 157
    .line 158
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 159
    move-result v4

    .line 160
    .line 161
    aput v4, v0, v3

    .line 162
    .line 163
    aget v4, v1, v3

    .line 164
    .line 165
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 166
    .line 167
    aget v5, v5, v3

    .line 168
    .line 169
    .line 170
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 171
    move-result v4

    .line 172
    .line 173
    aput v4, v1, v3

    .line 174
    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    goto :goto_2

    .line 177
    :cond_a
    :goto_3
    return-void
.end method
