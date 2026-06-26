.class public Lcom/narvii/util/DeepLinkManager;
.super Ljava/lang/Object;
.source "DeepLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDynamicLinkExtraInfo(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5

    .line 201
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    if-nez p0, :cond_0

    return-object v0

    .line 205
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getExtensions()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getExtensions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getExtensions()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    :cond_1
    const-string v2, "extension"

    .line 211
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 212
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "url"

    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getClickTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "clickTimestamp"

    invoke-virtual {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public static handleDynamicLink(Lcom/narvii/app/NVActivity;ZLcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVActivity;",
            "Z",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getDynamicLink(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/-$$Lambda$DeepLinkManager$m9rmXFpdvuj2e2lvTr6mD3Wj74Q;

    invoke-direct {v1, p1, p2}, Lcom/narvii/util/-$$Lambda$DeepLinkManager$m9rmXFpdvuj2e2lvTr6mD3Wj74Q;-><init>(ZLcom/narvii/util/Callback;)V

    .line 69
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/narvii/util/-$$Lambda$DeepLinkManager$7Kk--ilSa5b3f-bw5GFKnSYw1jU;

    invoke-direct {v0, p2}, Lcom/narvii/util/-$$Lambda$DeepLinkManager$7Kk--ilSa5b3f-bw5GFKnSYw1jU;-><init>(Lcom/narvii/util/Callback;)V

    .line 86
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static handleFacebookDeferredLink(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$handleDynamicLink$1(ZLcom/narvii/util/Callback;Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V
    .locals 2

    .line 70
    invoke-static {p2}, Lcom/narvii/util/DeepLinkManager;->buildDynamicLinkExtraInfo(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;

    invoke-direct {v1}, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;-><init>()V

    .line 73
    iput-object p2, v1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->pendingDynamicLinkData:Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    .line 74
    iget-object p2, v1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->pendingDynamicLinkData:Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p0, :cond_0

    .line 76
    iget-object p2, v1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->pendingDynamicLinkData:Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    invoke-virtual {p2}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/narvii/util/DeepLinkManager;->logDynamicLinkAttribution(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 78
    :cond_0
    iget-object p2, v1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->pendingDynamicLinkData:Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    invoke-virtual {p2}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-static {p0, p2, v0}, Lcom/narvii/util/DeepLinkManager;->logDynamicLinkOpened(ZLjava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 82
    invoke-interface {p1, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic lambda$handleDynamicLink$2(Lcom/narvii/util/Callback;Ljava/lang/Exception;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;

    invoke-direct {v0}, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->errorMsg:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 90
    invoke-interface {p0, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static logDeepLinkFromForwardActivity(Lcom/narvii/app/NVActivity;Ljava/lang/String;)V
    .locals 5

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "al_applink_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "target_url"

    .line 104
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 105
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    sget-boolean v2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    const-string v2, "pebkitapp"

    goto :goto_0

    :cond_1
    const-string v2, "narviiapp"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 112
    :cond_2
    invoke-static {v1, p1, v0}, Lcom/narvii/util/DeepLinkManager;->logFacebookDeepLinkOpened(ZLjava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    :cond_3
    const/4 v0, 0x0

    if-nez p1, :cond_4

    move-object p1, v0

    goto :goto_2

    .line 117
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 118
    :goto_2
    new-instance v2, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v2, p1}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_7

    .line 121
    invoke-static {p0, v2, v0}, Lcom/narvii/util/DeepLinkManager;->handleDynamicLink(Lcom/narvii/app/NVActivity;ZLcom/narvii/util/Callback;)V

    :cond_7
    return-void
.end method

.method public static logDynamicLinkAttribution(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    return-void
.end method

.method public static logDynamicLinkOpened(ZLjava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    return-void
.end method

.method public static logFacebookDeepLinkAttribution(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    return-void
.end method

.method public static logFacebookDeepLinkOpened(ZLjava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    return-void
.end method
