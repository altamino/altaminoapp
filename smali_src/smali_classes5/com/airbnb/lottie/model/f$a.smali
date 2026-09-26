.class public Lcom/airbnb/lottie/model/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/f;
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

.method public static a(Lorg/json/JSONObject;)Lcom/airbnb/lottie/model/f;
    .locals 5

    .line 1
    .line 2
    const-string v0, "fFamily"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "fName"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "fStyle"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    const-string v3, "ascent"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 24
    move-result-wide v3

    .line 25
    double-to-float p0, v3

    .line 26
    .line 27
    new-instance v3, Lcom/airbnb/lottie/model/f;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/airbnb/lottie/model/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 31
    return-object v3
.end method
