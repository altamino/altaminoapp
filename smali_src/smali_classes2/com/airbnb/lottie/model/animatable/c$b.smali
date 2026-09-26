.class public final Lcom/airbnb/lottie/model/animatable/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/c;
    .locals 3

    .line 1
    .line 2
    const-string v0, "k"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 10
    move-result v0

    .line 11
    .line 12
    div-int/lit8 v0, v0, 0x4

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "p"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    .line 21
    new-instance v1, Lcom/airbnb/lottie/model/animatable/c$c;

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Lcom/airbnb/lottie/model/animatable/c$c;-><init>(ILcom/airbnb/lottie/model/animatable/c$a;)V

    .line 26
    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/n;->b(Lorg/json/JSONObject;FLcom/airbnb/lottie/e;Lcom/airbnb/lottie/model/animatable/m$a;)Lcom/airbnb/lottie/model/animatable/n;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/n;->d()Lcom/airbnb/lottie/model/animatable/n$a;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/airbnb/lottie/model/animatable/n$a;->initialValue:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lcom/airbnb/lottie/model/content/c;

    .line 40
    .line 41
    new-instance v0, Lcom/airbnb/lottie/model/animatable/c;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/n$a;->keyframes:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, p1, v2}, Lcom/airbnb/lottie/model/animatable/c;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/c;Lcom/airbnb/lottie/model/animatable/c$a;)V

    .line 47
    return-object v0
.end method
