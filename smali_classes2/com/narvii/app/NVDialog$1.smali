.class Lcom/narvii/app/NVDialog$1;
.super Lcom/narvii/logging/PageViewDelegate;
.source "NVDialog.java"


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

    .line 43
    iput-object p1, p0, Lcom/narvii/app/NVDialog$1;->this$0:Lcom/narvii/app/NVDialog;

    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/logging/PageViewDelegate;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 0

    return-void
.end method

.method protected logPageViewEvent()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/app/NVDialog$1;->this$0:Lcom/narvii/app/NVDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->getPageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/app/NVDialog$1;->this$0:Lcom/narvii/app/NVDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->sendPageViewEventToThirdParty()Z

    move-result v0

    return v0
.end method
