.class Lcom/airbnb/lottie/model/content/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/o;
    .locals 3

    .line 1
    .line 2
    const-string v0, "ks"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/h$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/h;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    new-instance v0, Lcom/airbnb/lottie/model/content/o;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "nm"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    const-string v2, "ind"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 25
    move-result p0

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, p0, p1, v2}, Lcom/airbnb/lottie/model/content/o;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/h;Lcom/airbnb/lottie/model/content/o$a;)V

    .line 30
    return-object v0
.end method
