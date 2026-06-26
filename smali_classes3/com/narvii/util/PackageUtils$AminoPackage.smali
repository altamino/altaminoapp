.class public Lcom/narvii/util/PackageUtils$AminoPackage;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/PackageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AminoPackage"
.end annotation


# instance fields
.field public final appId:I

.field public final communityId:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput p1, p0, Lcom/narvii/util/PackageUtils$AminoPackage;->communityId:I

    .line 421
    iput p2, p0, Lcom/narvii/util/PackageUtils$AminoPackage;->appId:I

    .line 422
    iput-object p3, p0, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    return-void
.end method
