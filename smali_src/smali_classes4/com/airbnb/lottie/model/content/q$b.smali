.class Lcom/airbnb/lottie/model/content/q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/q;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Lcom/airbnb/lottie/model/content/q;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v0, "nm"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v0, "m"

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/airbnb/lottie/model/content/q$c;->a(I)Lcom/airbnb/lottie/model/content/q$c;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "s"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    move-result-object v0

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1, v3}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    const-string v0, "e"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1, v3}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    const-string/jumbo v0, "o"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1, v3}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 53
    move-result-object p0

    .line 54
    const/4 v6, 0x0

    .line 55
    move-object v0, v7

    .line 56
    move-object v3, v4

    .line 57
    move-object v4, v5

    .line 58
    move-object v5, p0

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/content/q;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/q$c;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/q$a;)V

    .line 62
    return-object v7
.end method
