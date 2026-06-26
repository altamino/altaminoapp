.class public Lcom/narvii/logging/PageRefererInfo;
.super Ljava/lang/Object;
.source "PageRefererInfo.java"


# instance fields
.field public refererArea:Ljava/lang/String;

.field public refererEventId:Ljava/lang/String;

.field public refererPage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/narvii/logging/PageRefererInfo;->refererPage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/narvii/logging/PageRefererInfo;->refererPage:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/narvii/logging/PageRefererInfo;->refererArea:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/narvii/logging/PageRefererInfo;->refererEventId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/narvii/logging/PageRefererInfo;->refererPage:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/narvii/logging/PageRefererInfo;->refererArea:Ljava/lang/String;

    return-void
.end method
