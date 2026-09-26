.class Lcom/airbnb/lottie/model/content/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/a;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/content/a;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "nm"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "p"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p1}, Lcom/airbnb/lottie/model/animatable/e;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/m;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "s"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/animatable/f$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/f;

    .line 31
    move-result-object p0

    .line 32
    const/4 p1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/airbnb/lottie/model/content/a;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/content/a$a;)V

    .line 36
    return-object v0
.end method
