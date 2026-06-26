.class public Lcom/narvii/master/search/SearchLog$Builder;
.super Ljava/lang/Object;
.source "SearchLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/SearchLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field searchLog:Lcom/narvii/master/search/SearchLog;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/narvii/master/search/SearchLog;

    invoke-direct {v0}, Lcom/narvii/master/search/SearchLog;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/SearchLog$Builder;->searchLog:Lcom/narvii/master/search/SearchLog;

    .line 21
    iget-object v0, p0, Lcom/narvii/master/search/SearchLog$Builder;->searchLog:Lcom/narvii/master/search/SearchLog;

    iput-object p1, v0, Lcom/narvii/master/search/SearchLog;->nvContext:Lcom/narvii/app/NVContext;

    .line 22
    iput-object p2, v0, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public area(Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/master/search/SearchLog$Builder;->searchLog:Lcom/narvii/master/search/SearchLog;

    iput-object p1, v0, Lcom/narvii/master/search/SearchLog;->area:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/narvii/master/search/SearchLog;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/master/search/SearchLog$Builder;->searchLog:Lcom/narvii/master/search/SearchLog;

    return-object v0
.end method

.method public instant()Lcom/narvii/master/search/SearchLog$Builder;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/narvii/master/search/SearchLog$Builder;->searchLog:Lcom/narvii/master/search/SearchLog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/master/search/SearchLog;->instant:Z

    return-object p0
.end method
