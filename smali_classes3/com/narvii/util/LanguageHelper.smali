.class public Lcom/narvii/util/LanguageHelper;
.super Ljava/lang/Object;
.source "LanguageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {v0, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "language"

    .line 16
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/language/LanguageManager;

    .line 17
    invoke-virtual {p0}, Lcom/narvii/language/LanguageManager;->getLocalCode()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
