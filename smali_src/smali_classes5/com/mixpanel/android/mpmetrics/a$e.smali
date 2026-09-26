.class Lcom/mixpanel/android/mpmetrics/a$e;
.super Lcom/mixpanel/android/mpmetrics/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p1}, Lcom/mixpanel/android/mpmetrics/a$d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/a$d;->b()Lorg/json/JSONObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "$distinct_id"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/a$d;->b()Lorg/json/JSONObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
