.class Lcom/narvii/services/LocaleChangeListener$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/LocaleChangeListener$1;->this$0:Lcom/narvii/services/LocaleChangeListener;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "locale changed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/wallet/IabUtils;->setUpFloatFormat()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/text/TextUtils;->setUpNumberFormat()V

    .line 12
    return-void
.end method
