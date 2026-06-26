.class Lcom/narvii/services/LocaleChangeListener$1;
.super Landroid/content/BroadcastReceiver;
.source "LocaleChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/LocaleChangeListener;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/LocaleChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/LocaleChangeListener;


# direct methods
.method constructor <init>(Lcom/narvii/services/LocaleChangeListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/services/LocaleChangeListener$1;->this$0:Lcom/narvii/services/LocaleChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "locale changed"

    .line 27
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/narvii/wallet/IabUtils;->setUpFloatFormat()V

    .line 29
    invoke-static {}, Lcom/narvii/util/text/TextUtils;->setUpNumberFormat()V

    return-void
.end method
