.class public Lcom/narvii/master/search/SearchLog;
.super Ljava/lang/Object;
.source "SearchLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/SearchLog$Builder;
    }
.end annotation


# instance fields
.field public area:Ljava/lang/String;

.field public instant:Z

.field public keyword:Ljava/lang/String;

.field public nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;
    .locals 1

    .line 12
    new-instance v0, Lcom/narvii/master/search/SearchLog$Builder;

    invoke-direct {v0, p0, p1}, Lcom/narvii/master/search/SearchLog$Builder;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-object v0
.end method
