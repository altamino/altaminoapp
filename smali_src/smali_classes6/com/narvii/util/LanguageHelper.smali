.class public Lcom/narvii/util/LanguageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const-string v0, "language"

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    check-cast p0, Lcom/narvii/language/LanguageManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/language/LanguageManager;->getLocalCode()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    :goto_0
    return-object p0
.end method
