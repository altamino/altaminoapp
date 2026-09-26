.class public Lcom/narvii/logging/PageRefererInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public refererArea:Ljava/lang/String;

.field public refererEventId:Ljava/lang/String;

.field public refererPage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/logging/PageRefererInfo;->refererPage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/logging/PageRefererInfo;->refererPage:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/logging/PageRefererInfo;->refererArea:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/logging/PageRefererInfo;->refererEventId:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/logging/PageRefererInfo;->refererPage:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/logging/PageRefererInfo;->refererArea:Ljava/lang/String;

    return-void
.end method
