.class Lcom/airbnb/lottie/model/content/m$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/m;
    .locals 8

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "nm"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v2

    .line 8
    .line 9
    const-string v0, "c"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/a$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/a;

    .line 20
    move-result-object v0

    .line 21
    move-object v5, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v5, v1

    .line 24
    .line 25
    .line 26
    :goto_0
    const-string/jumbo v0, "o"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/d$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/d;

    .line 36
    move-result-object p1

    .line 37
    move-object v6, p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v6, v1

    .line 40
    .line 41
    :goto_1
    const-string p1, "fillEnabled"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 45
    move-result v3

    .line 46
    .line 47
    .line 48
    const-string/jumbo p1, "r"

    .line 49
    const/4 v0, 0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 53
    move-result p0

    .line 54
    .line 55
    if-ne p0, v0, :cond_2

    .line 56
    .line 57
    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 58
    :goto_2
    move-object v4, p0

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_2
    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :goto_3
    new-instance p0, Lcom/airbnb/lottie/model/content/m;

    .line 65
    const/4 v7, 0x0

    .line 66
    move-object v1, p0

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/model/content/m;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/content/m$a;)V

    .line 70
    return-object p0
.end method
