.class Lcom/airbnb/lottie/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;)Lcom/airbnb/lottie/g;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/airbnb/lottie/g;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v0, "w"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 9
    move-result v1

    .line 10
    .line 11
    const-string v0, "h"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 15
    move-result v2

    .line 16
    .line 17
    const-string v0, "id"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "p"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v0, v6

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/g;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/airbnb/lottie/g$a;)V

    .line 34
    return-object v6
.end method
