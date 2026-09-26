.class public Lcom/comscore/PublisherConfiguration;
.super Lcom/comscore/ClientConfiguration;
.source "PublisherConfiguration.java"


# static fields
.field public static INSTANCE$stub:Lcom/comscore/PublisherConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/comscore/PublisherConfiguration;

    invoke-direct {v0}, Lcom/comscore/PublisherConfiguration;-><init>()V

    sput-object v0, Lcom/comscore/PublisherConfiguration;->INSTANCE$stub:Lcom/comscore/PublisherConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/comscore/ClientConfiguration;-><init>()V

    return-void
.end method
