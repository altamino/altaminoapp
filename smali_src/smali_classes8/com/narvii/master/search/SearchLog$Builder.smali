.class public Lcom/narvii/master/search/SearchLog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/master/search/SearchLog;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/master/search/SearchLog;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/search/SearchLog$Builder;->searchLog:Lcom/narvii/master/search/SearchLog;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/narvii/master/search/SearchLog;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    iput-object p2, v0, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public area(Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/SearchLog$Builder;->searchLog:Lcom/narvii/master/search/SearchLog;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/master/search/SearchLog;->area:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public build()Lcom/narvii/master/search/SearchLog;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/search/SearchLog$Builder;->searchLog:Lcom/narvii/master/search/SearchLog;

    return-object v0
.end method

.method public instant()Lcom/narvii/master/search/SearchLog$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/SearchLog$Builder;->searchLog:Lcom/narvii/master/search/SearchLog;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/master/search/SearchLog;->instant:Z

    .line 6
    return-object p0
.end method
