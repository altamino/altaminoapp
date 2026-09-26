.class public Lcom/airbnb/lottie/model/content/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/g;
    .locals 3

    .line 1
    .line 2
    const-string v0, "mode"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    .line 16
    .line 17
    sparse-switch v1, :sswitch_data_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :sswitch_0
    const-string/jumbo v1, "s"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x2

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :sswitch_1
    const-string v1, "i"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :sswitch_2
    const-string v1, "a"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v2, 0x0

    .line 52
    .line 53
    .line 54
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 55
    .line 56
    sget-object v0, Lcom/airbnb/lottie/model/content/g$c;->MaskModeUnknown:Lcom/airbnb/lottie/model/content/g$c;

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :pswitch_0
    sget-object v0, Lcom/airbnb/lottie/model/content/g$c;->MaskModeSubtract:Lcom/airbnb/lottie/model/content/g$c;

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :pswitch_1
    sget-object v0, Lcom/airbnb/lottie/model/content/g$c;->MaskModeIntersect:Lcom/airbnb/lottie/model/content/g$c;

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :pswitch_2
    sget-object v0, Lcom/airbnb/lottie/model/content/g$c;->MaskModeAdd:Lcom/airbnb/lottie/model/content/g$c;

    .line 66
    .line 67
    .line 68
    :goto_1
    const-string/jumbo v1, "pt"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-static {v1, p1}, Lcom/airbnb/lottie/model/animatable/h$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/h;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "o"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 83
    move-result-object p0

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/animatable/d$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/d;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    new-instance p1, Lcom/airbnb/lottie/model/content/g;

    .line 90
    const/4 v2, 0x0

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, v0, v1, p0, v2}, Lcom/airbnb/lottie/model/content/g;-><init>(Lcom/airbnb/lottie/model/content/g$c;Lcom/airbnb/lottie/model/animatable/h;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/content/g$a;)V

    .line 94
    return-object p1

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
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_2
        0x69 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
