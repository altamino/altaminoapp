.class public Lcom/narvii/master/language/ContentLanguageServiceProvider;
.super Ljava/lang/Object;
.source "ContentLanguageServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/language/ContentLanguageService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 14
    new-instance v0, Lcom/narvii/language/ContentLanguageService;

    invoke-direct {v0, p1}, Lcom/narvii/language/ContentLanguageService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/master/language/ContentLanguageServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/language/ContentLanguageService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/language/ContentLanguageServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/language/ContentLanguageService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/language/ContentLanguageServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/language/ContentLanguageService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/language/ContentLanguageServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/language/ContentLanguageService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/language/ContentLanguageServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/language/ContentLanguageService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/language/ContentLanguageServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/language/ContentLanguageService;)V

    return-void
.end method
