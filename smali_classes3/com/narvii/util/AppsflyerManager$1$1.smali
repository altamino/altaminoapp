.class Lcom/narvii/util/AppsflyerManager$1$1;
.super Ljava/lang/Object;
.source "AppsflyerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/AppsflyerManager$1;->onConversionDataSuccess(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/AppsflyerManager$1;

.field final synthetic val$b:Lcom/narvii/logging/LogEvent$Builder;

.field final synthetic val$teaParams:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/narvii/util/AppsflyerManager$1;Lcom/narvii/logging/LogEvent$Builder;Lorg/json/JSONObject;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/util/AppsflyerManager$1$1;->this$0:Lcom/narvii/util/AppsflyerManager$1;

    iput-object p2, p0, Lcom/narvii/util/AppsflyerManager$1$1;->val$b:Lcom/narvii/logging/LogEvent$Builder;

    iput-object p3, p0, Lcom/narvii/util/AppsflyerManager$1$1;->val$teaParams:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
