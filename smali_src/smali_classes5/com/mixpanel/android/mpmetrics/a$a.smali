.class Lcom/mixpanel/android/mpmetrics/a$a;
.super Lcom/mixpanel/android/mpmetrics/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final mEventName:Ljava/lang/String;

.field private final mIsAutomatic:Z

.field private final mSessionMetadata:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    .line 1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/a$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-direct {p0, p3, p2}, Lcom/mixpanel/android/mpmetrics/a$d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$a;->mEventName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/mixpanel/android/mpmetrics/a$a;->mIsAutomatic:Z

    iput-object p5, p0, Lcom/mixpanel/android/mpmetrics/a$a;->mSessionMetadata:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a$a;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/a$d;->b()Lorg/json/JSONObject;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a$a;->mSessionMetadata:Lorg/json/JSONObject;

    return-object v0
.end method
