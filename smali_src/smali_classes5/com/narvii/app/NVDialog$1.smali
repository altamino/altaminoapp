.class Lcom/narvii/app/NVDialog$1;
.super Lcom/narvii/logging/PageViewDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVDialog;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVDialog;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVDialog$1;->this$0:Lcom/narvii/app/NVDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/logging/PageViewDelegate;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 0

    return-void
.end method

.method protected logPageViewEvent()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVDialog$1;->this$0:Lcom/narvii/app/NVDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->getPageName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVDialog$1;->this$0:Lcom/narvii/app/NVDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->sendPageViewEventToThirdParty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
