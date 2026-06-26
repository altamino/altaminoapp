.class public final enum Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
.super Ljava/lang/Enum;
.source "DomainNameReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/urls/detection/DomainNameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReaderNextState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ReadFragment:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ReadPath:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ReadPort:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ReadQueryString:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 87
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const/4 v1, 0x0

    const-string v2, "InvalidDomainName"

    invoke-direct {v0, v2, v1}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 91
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const/4 v2, 0x1

    const-string v3, "ValidDomainName"

    invoke-direct {v0, v3, v2}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 95
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const/4 v3, 0x2

    const-string v4, "ReadFragment"

    invoke-direct {v0, v4, v3}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadFragment:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 99
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const/4 v4, 0x3

    const-string v5, "ReadPath"

    invoke-direct {v0, v5, v4}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPath:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 103
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const/4 v5, 0x4

    const-string v6, "ReadPort"

    invoke-direct {v0, v6, v5}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPort:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 107
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const/4 v6, 0x5

    const-string v7, "ReadQueryString"

    invoke-direct {v0, v7, v6}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadQueryString:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 83
    sget-object v7, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v7, v0, v1

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadFragment:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPath:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPort:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadQueryString:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->$VALUES:[Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    .locals 1

    .line 83
    const-class v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object p0
.end method

.method public static values()[Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    .locals 1

    .line 83
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->$VALUES:[Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-virtual {v0}, [Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0
.end method
