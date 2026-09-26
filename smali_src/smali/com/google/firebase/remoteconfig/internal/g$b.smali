.class public Lcom/google/firebase/remoteconfig/internal/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private builderAbtExperiments:Lorg/json/JSONArray;

.field private builderConfigsJson:Lorg/json/JSONObject;

.field private builderFetchTime:Ljava/util/Date;

.field private builderPersonalizationMetadata:Lorg/json/JSONObject;

.field private builderRolloutMetadata:Lorg/json/JSONArray;

.field private builderTemplateVersionNumber:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderConfigsJson:Lorg/json/JSONObject;

    .line 4
    invoke-static {}, Lcom/google/firebase/remoteconfig/internal/g;->a()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderFetchTime:Ljava/util/Date;

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderAbtExperiments:Lorg/json/JSONArray;

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderPersonalizationMetadata:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderTemplateVersionNumber:J

    .line 7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderRolloutMetadata:Lorg/json/JSONArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/g$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/remoteconfig/internal/g;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/g;->g()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderConfigsJson:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/g;->h()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderFetchTime:Ljava/util/Date;

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/g;->e()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderAbtExperiments:Lorg/json/JSONArray;

    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/g;->i()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderPersonalizationMetadata:Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/g;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderTemplateVersionNumber:J

    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/g;->j()Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderRolloutMetadata:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/remoteconfig/internal/g;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v9, Lcom/google/firebase/remoteconfig/internal/g;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderConfigsJson:Lorg/json/JSONObject;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderFetchTime:Ljava/util/Date;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderAbtExperiments:Lorg/json/JSONArray;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderPersonalizationMetadata:Lorg/json/JSONObject;

    .line 11
    .line 12
    iget-wide v5, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderTemplateVersionNumber:J

    .line 13
    .line 14
    iget-object v7, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderRolloutMetadata:Lorg/json/JSONArray;

    .line 15
    const/4 v8, 0x0

    .line 16
    move-object v0, v9

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/remoteconfig/internal/g;-><init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;Lorg/json/JSONObject;JLorg/json/JSONArray;Lcom/google/firebase/remoteconfig/internal/g$a;)V

    .line 20
    return-object v9
.end method

.method public b(Lorg/json/JSONObject;)Lcom/google/firebase/remoteconfig/internal/g$b;
    .locals 1

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderConfigsJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    return-object p0
.end method

.method public c(Lorg/json/JSONArray;)Lcom/google/firebase/remoteconfig/internal/g$b;
    .locals 1

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderAbtExperiments:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderFetchTime:Ljava/util/Date;

    return-object p0
.end method

.method public e(Lorg/json/JSONObject;)Lcom/google/firebase/remoteconfig/internal/g$b;
    .locals 1

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderPersonalizationMetadata:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    return-object p0
.end method

.method public f(Lorg/json/JSONArray;)Lcom/google/firebase/remoteconfig/internal/g$b;
    .locals 1

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderRolloutMetadata:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    return-object p0
.end method

.method public g(J)Lcom/google/firebase/remoteconfig/internal/g$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/internal/g$b;->builderTemplateVersionNumber:J

    return-object p0
.end method
