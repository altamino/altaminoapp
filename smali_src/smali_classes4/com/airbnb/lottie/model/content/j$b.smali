.class Lcom/airbnb/lottie/model/content/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/j;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/airbnb/lottie/model/content/j;

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
    .line 12
    const-string/jumbo v0, "p"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/e;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/m;

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
    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/f$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/f;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    const-string/jumbo v0, "r"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v0, v6

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/model/content/j;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/j$a;)V

    .line 48
    return-object v6
.end method
