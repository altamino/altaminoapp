.class public Lcom/applovin/sdk/AppLovinSdk;
.super Ljava/lang/Object;
.source "AppLovinSdk.java"


# static fields
.field public static INSTANCE$stub:Lcom/applovin/sdk/AppLovinSdk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v0}, Lcom/applovin/sdk/AppLovinSdk;-><init>()V

    sput-object v0, Lcom/applovin/sdk/AppLovinSdk;->INSTANCE$stub:Lcom/applovin/sdk/AppLovinSdk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->INSTANCE$stub:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method


# virtual methods
.method public showMediationDebugger()V
    .locals 0

    return-void
.end method
