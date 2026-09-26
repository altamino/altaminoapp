.class public Lcom/comscore/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static INSTANCE$stub:Lcom/comscore/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/comscore/Configuration;

    invoke-direct {v0}, Lcom/comscore/Configuration;-><init>()V

    sput-object v0, Lcom/comscore/Configuration;->INSTANCE$stub:Lcom/comscore/Configuration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addClient(Lcom/comscore/ClientConfiguration;)V
    .locals 0

    return-void
.end method

.method public enableImplementationValidationMode()V
    .locals 0

    return-void
.end method
