.class Lcom/airbnb/lottie/model/content/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;)Lcom/airbnb/lottie/model/content/h;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/content/h;

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
    const-string v2, "mm"

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 16
    move-result p0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/airbnb/lottie/model/content/h$c;->a(I)Lcom/airbnb/lottie/model/content/h$c;

    .line 20
    move-result-object p0

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, p0, v2}, Lcom/airbnb/lottie/model/content/h;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/h$c;Lcom/airbnb/lottie/model/content/h$a;)V

    .line 25
    return-object v0
.end method
