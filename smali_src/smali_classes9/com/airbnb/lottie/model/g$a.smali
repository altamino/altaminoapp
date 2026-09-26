.class public Lcom/airbnb/lottie/model/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


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

.method public static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/g;
    .locals 10

    .line 1
    .line 2
    const-string v0, "ch"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 11
    move-result v4

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "size"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 18
    move-result v5

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "w"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 25
    move-result-wide v6

    .line 26
    .line 27
    .line 28
    const-string/jumbo v0, "style"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v8

    .line 33
    .line 34
    const-string v0, "fFamily"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v9

    .line 39
    .line 40
    const-string v0, "data"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    .line 53
    const-string/jumbo v2, "shapes"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 57
    move-result-object p0

    .line 58
    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 72
    move-result v2

    .line 73
    .line 74
    if-ge v1, v2, :cond_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-static {v2, p1}, Lcom/airbnb/lottie/model/content/n;->d(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/b;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    check-cast v2, Lcom/airbnb/lottie/model/content/n;

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move-object v3, v0

    .line 92
    .line 93
    new-instance p0, Lcom/airbnb/lottie/model/g;

    .line 94
    move-object v2, p0

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v2 .. v9}, Lcom/airbnb/lottie/model/g;-><init>(Ljava/util/List;CIDLjava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object p0
.end method
